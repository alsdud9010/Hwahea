package kr.spring.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.admin.domain.AdminProductCommand;
import kr.spring.admin.service.AdminProductService;
import kr.spring.util.PagingUtil;

@Controller
public class AdminProductController {
	
	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;
	
	@Resource
	private AdminProductService adminProductService;
	
	@ModelAttribute("commandproduct")
	public AdminProductCommand initCommand() {
		return new AdminProductCommand();
	}
	
	//���� ��ǰ ��� ��
	@RequestMapping(value="/product/adminProductRegister.do",
					method=RequestMethod.GET)
	public String formRegister() {
		
		return "/product/productRegister";
	}
	
	//���� ��ǰ ������ ����
	@RequestMapping(value="/product/adminProductRegister.do",
					method=RequestMethod.POST)
	public String submit(@ModelAttribute("commandproduct")
						AdminProductCommand productCommand,
						BindingResult result) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<AdminProductCommand>> : " + productCommand);
		}
		
		adminProductService.insertProduct(productCommand);
		
		return "redirect:/product/adminProductList.do";
	}
	
	//���� ��ǰ ����Ʈ
	@RequestMapping("/product/adminProductList.do")
	public ModelAndView process(@RequestParam(value="pageNum", defaultValue="1") int currentPage,
			@RequestParam(value="keyfield", defaultValue="") String keyfield,
			@RequestParam(value="keyword", defaultValue="") String keyword)	{
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("keyfield", keyfield);
		map.put("keyword", keyword);
		
		int count = adminProductService.selectProductRowCount(map);
		
		if(log.isDebugEnabled()) {
			log.debug("<<count>> : " + count);
		}
		
		PagingUtil page = new PagingUtil(keyfield,keyword,currentPage,count,rowCount,pageCount,"list.do");
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<AdminProductCommand> list = null;
		
		if(count > 0) {
			list = adminProductService.selectProductList(map);
			
			if(log.isDebugEnabled()) {
				log.debug("<<list>> : " + list);
			}
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminProductList");
		mav.addObject("count",count);
		mav.addObject("list",list);
		mav.addObject("pagingHtml",page.getPagingHtml());
		
		return mav;
	}
	//���� ��ǰ �� ����
	@RequestMapping("/product/adminProductDetail.do")
	public ModelAndView process(@RequestParam("p_num") int p_num) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<p_num>> : " + p_num);
		}
		
		AdminProductCommand product = adminProductService.selectProduct(p_num);
		
		return new ModelAndView("adminProductDetail","product",product);
	}
	//���� ��ǰ ����
	@RequestMapping("/product/adminProductDelete")
	public String submit(@RequestParam("p_num") int p_num) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<p_num>> : " + p_num);
		}
		
		//���� ��ǰ ����
		adminProductService.deleteProduct(p_num);
		
		return "redirect:/product/adminProductList.do";
	}
	
	//���� ��ǰ �̹��� ���
		@RequestMapping("/product/productImageView.do")
		public ModelAndView viewImageProduct(@RequestParam("p_num") int p_num) {
			AdminProductCommand product = adminProductService.selectProduct(p_num);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("imageView");	//Ŭ����ȣ��
			//�Ӽ���			�Ӽ���(byte[]�� ������)
			mav.addObject("imageFile",product.getP_image());
			mav.addObject("filename",product.getP_photo());
			
			return mav;
		}
}

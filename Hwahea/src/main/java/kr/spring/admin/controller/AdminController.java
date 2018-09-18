package kr.spring.admin.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.admin.domain.AdminBrandCommand;
import kr.spring.admin.domain.AdminCategoryCommand;
import kr.spring.admin.domain.AdminCosmeticCommand;
import kr.spring.admin.domain.AdminEventCommand;
import kr.spring.admin.domain.AdminIngredientCommand;
import kr.spring.admin.domain.AdminFAQCommand;
import kr.spring.admin.domain.AdminProductCommand;
import kr.spring.admin.service.AdminService;
import kr.spring.util.PagingUtil;

@Controller
public class AdminController {
	
	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;
	
	//���� ������ �� ȣ��
	@RequestMapping("/main/adminMain.do")
	public String process() {
		
		return "adminMain";
	}
			
	@Resource
	private AdminService adminIngredientService;
	
	@ModelAttribute("ingredientcommand")
	public AdminIngredientCommand initIngredient() {
		return new AdminIngredientCommand();
	}
	
	//���� ��� ��
	@RequestMapping(value="/ingredient/adminIngredientRegister.do",
					method=RequestMethod.GET)
	public String formingreRegister() {
		
		return "adminIngredientList";
	}
	
	//���� ��� ������ ����
	@RequestMapping(value="/ingredient/adminIngredientRegister.do",
					method=RequestMethod.POST)
	public String submit(@ModelAttribute("ingredientcommand")
						AdminIngredientCommand ingredientcommand,
						BindingResult result) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<AdminIngredientCommand>> : " + ingredientcommand);
		}
		
		//���� ���
		adminIngredientService.insertIngredient(ingredientcommand);
		
		return "redirect:/ingredient/adminIngredientList.do";
	}
	
	@RequestMapping("/ingredient/adminIngredientList.do")
	public ModelAndView processIngre(@RequestParam(value="pageNum", defaultValue="1") int currentPage,
		@RequestParam(value="keyfield", defaultValue="") String keyfield,
		@RequestParam(value="keyword", defaultValue="") String keyword) {
			
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("keyfield", keyfield);
		map.put("keyword", keyword);
		
		int count = adminIngredientService.selectIngreRowCount(map);
		
		if(log.isDebugEnabled()) {
			log.debug("<<count>> : " + count);
		}
		
		PagingUtil page = new PagingUtil(keyfield, keyword, currentPage, count, rowCount, pageCount, "list.do");
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<AdminIngredientCommand> list = null;
		
		if(count > 0) {
			list = adminIngredientService.selectIngreList(map);
			
			if(log.isDebugEnabled()) {
				log.debug("<<list>> : " + list);
			}
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminIngredientList");
		mav.addObject("count",count);
		mav.addObject("list",list);
		mav.addObject("pagingHtml",page.getPagingHtml());
		
		return mav;
	}
	
	
	@Resource
	private AdminService adminProductService;
	
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
	
	//============�۾��� �̹��� ���ε� ===========//
		@RequestMapping("/product/imageUploader.do")
		public void uploadImageProduct(MultipartFile file, HttpSession session, HttpServletResponse response) throws Exception {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();

			// ���ε��� ���� ���
			String realFolder = session.getServletContext().getRealPath("resources/upload");

			// ���ε��� ���� �̸�
			String org_filename = file.getOriginalFilename();
			String str_filename = System.currentTimeMillis() + org_filename;

			System.out.println("���� ���ϸ� : " + org_filename);
			System.out.println("������ ���ϸ� : " + str_filename);

			String filepath = realFolder + "\\" + session.getAttribute("user_id") + "\\" + str_filename;
			System.out.println("���ϰ�� : " + filepath);

			File f = new File(filepath);
			if (!f.exists()) {
				f.mkdirs();
			}
			file.transferTo(f);
			out.println("../resources/upload/"+session.getAttribute("user_id")+"/"+str_filename);
			out.close();
		}
		
		//�Ű��� ���� ��
		@RequestMapping("/report/reportReview.do")
		public String formReportReview() {
			
			return "reportReview";
		}
		
		//����� ��� ��û ��
		@RequestMapping("userRequired/requiredRegister.do")
		public String formRequiredRegister() {
			
			return "requiredRegister";
		}
		
		//����� ���� ��û ��
		@RequestMapping("userRequired/requiredUpdate.do")
		public String formRequiredUpdate() {
			
			return "requiredUpdate";
		}
		
		//ȸ������ ��
		@RequestMapping("users/adminUser.do")
		public String formUser() {
			
			return "adminUser";
		}
		
		@RequestMapping("users/adminUserDetail.do")
		public String formUserDetail() {
			
			return "adminUserDetail";
		}
		
}

package kr.spring.shop.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.shop.domain.ProductBoardCommand;
import kr.spring.shop.domain.ProductCommand;
import kr.spring.shop.service.ProductBoardService;
import kr.spring.shop.service.ProductService;
import kr.spring.util.PagingUtil;

@Controller
public class ProductController {

	private Logger log = Logger.getLogger(this.getClass());
	//상품개수
	private int rowCount = 20;
	private int pageCount = 10;
	//문의개수
	private int boardRowCount = 5;
	private int boardPageCount = 10;

	@Resource
	private ProductService productService;
	@Resource
	private ProductBoardService productBoardService;

	//========= 쇼핑 메인
	@RequestMapping("/shop/shopMain.do")
	public ModelAndView process() {
		List<ProductCommand> list = null;
		List<ProductCommand> list2 = null;
		
		list = productService.selectCateList();
		list2 = productService.selectSubCateList();

		if(log.isDebugEnabled()) {
			log.debug("<<list>> : "+list);
			log.debug("<<list2>> : "+list2);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shopMain");
		mav.addObject("list",list);
		mav.addObject("list2",list2);

		return mav;
	}
	
	//========= 쇼핑 목록
	@RequestMapping("/shop/shopProduct.do")
	public ModelAndView process(@RequestParam(value="pageNum", defaultValue="1") int currentPage,
			@RequestParam("category_num") int category_num,
			@RequestParam(value="category_detail_num", defaultValue="0") int category_detail_num) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("category_num",category_num);
		map.put("category_detail_num",category_detail_num);
		
		List<ProductCommand> cate = null;
		String cateName = null;
		List<ProductCommand> productList = null;
		
		//검색된 상품 개수
		int productCnt =productService.selectProductCnt(map);
		

		if(log.isDebugEnabled()) {
			log.debug("<<category_num>> : "+category_num);
			log.debug("<<category_detail_num>> : "+category_detail_num);
			log.debug("<<productCnt>> : "+ productCnt);
		}

		cateName = productService.selectGetCateName(category_num);
		cate = productService.selectGetSubCate(category_num);
		
		PagingUtil page = new PagingUtil(currentPage,productCnt,rowCount,pageCount,"/shop/shopProductView.do");
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		if(productCnt>0) {
			//map으로 만들어서 매개변수로 넘김
			productList =  productService.selectShopProduct(map);
			
			if(log.isDebugEnabled()) {
				log.debug("<<productList>> : "+productList);
			}
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shopProduct");
		mav.addObject("cateName",cateName);
		mav.addObject("cateNum",category_num);
		mav.addObject("cateSubNum",category_detail_num);
		mav.addObject("productCnt",productCnt);
		mav.addObject("productList",productList);
		mav.addObject("cate",cate);
		mav.addObject("pagingHtml",page.getPagingHtml());
		
		return mav;
	}

	//========= 쇼핑제품 상세
	@RequestMapping("/shop/shopProductView.do")
	public ModelAndView processs(@RequestParam(value="pageNum", defaultValue="1") int currentPage, 
			@RequestParam("p_num") int p_num, 
			@RequestParam("brand_num") int brand_num, HttpSession session, Model model) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		List<ProductCommand> brandProduct = null;
		
		if(log.isDebugEnabled()) {
			log.debug("<<p_num>> : "+p_num);
		}
		
		//아이디 세팅--------
		String id = (String) session.getAttribute("user_id");
		
		ProductBoardCommand pbcommand = new ProductBoardCommand();
		pbcommand.setPb_id(id);
		model.addAttribute("pbcommand",pbcommand);
		//---------
		
		//상품문의 목록-------
		int count = productBoardService.selectBoardCount();
		if(log.isDebugEnabled()) {
			log.debug("<<count>> : "+ count);
		}
		
		PagingUtil page = new PagingUtil(currentPage,count,boardRowCount,boardPageCount,"/shop/shopProductView.do?p_num="+p_num+"&brand_num="+brand_num);
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<ProductBoardCommand> boardList = null;
	
		if(count>0) {
			boardList = productBoardService.selectBoardList(map);

			if(log.isDebugEnabled()) {
				log.debug("<<boardList>> : "+boardList);
			}
		}	
		//---------
		
		brandProduct = productService.selectBrandProduct(brand_num);
		ProductCommand product = productService.selectProduct(p_num);
		
		if(log.isDebugEnabled()) {
			log.debug("<<product>> : "+product);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shopProductView");
		mav.addObject("p_num",p_num);
		mav.addObject("product",product);
		mav.addObject("brandProduct",brandProduct);
		mav.addObject("count",count);
		mav.addObject("boardList",boardList);
		mav.addObject("pagingHtml",page.getPagingHtml());
		
		return mav;
	}

	//========= 상품문의 글쓰기 데이터처리
	@RequestMapping(value="/shop/pbWrite.do", method=RequestMethod.POST)
	public String submit(@ModelAttribute("pbcommand") ProductBoardCommand pbcommand
			,BindingResult result, HttpServletRequest request) {

		if(log.isDebugEnabled()) {
			log.debug("<<pbcommand>> : "+pbcommand);
		}

		//글쓰기
		productBoardService.insertProductBoard(pbcommand);

		return "redirect:/shop/shopProductView.do?p_num="+pbcommand.getP_num()+"&brand_num="+pbcommand.getBrand_num();
		
	}
	
	//========= 주문하기
	@RequestMapping("/shop/orderProduct.do")
	public String processss() {

		return "orderProduct";
	}

	//========= 주문완료
	@RequestMapping("/shop/orderComplete.do")
	public String processsss() {

		return "orderComplete";
	}
}

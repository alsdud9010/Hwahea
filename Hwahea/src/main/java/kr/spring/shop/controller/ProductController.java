package kr.spring.shop.controller;

import java.util.Collections;
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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.member.domain.MemberCommand;
import kr.spring.shop.domain.CartCommand;
import kr.spring.shop.domain.OrderCommand;
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
		map.put("results",null);
		
		List<ProductCommand> cate = null;
		String cateName = null;
		List<ProductCommand> productList = null;
		List<ProductCommand> brand = null;
		
		//검색된 상품 개수
		int productCnt =productService.selectProductCnt(map);

		if(log.isDebugEnabled()) {
			log.debug("<<category_num>> : "+category_num);
			log.debug("<<category_detail_num>> : "+category_detail_num);
			log.debug("<<productCnt>> : "+ productCnt);
		}

		cateName = productService.selectGetCateName(category_num);
		cate = productService.selectGetSubCate(category_num);
		brand = productService.selectBrand();
		
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
		mav.addObject("brand",brand);
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
	@RequestMapping(value="/shop/orderProduct.do", method=RequestMethod.GET)
	public ModelAndView form(HttpSession session, Model model,
			@RequestParam("p_num") int p_num,
			@RequestParam("quantity") int quantity) {

		String user_id = (String) session.getAttribute("user_id");
		
		List<ProductCommand> productInfo = null;
		MemberCommand memberInfo = null;

		if(log.isDebugEnabled()) {
			log.debug("<<p_num>> : "+p_num);
			log.debug("<<user_id>> : "+user_id);
		}

		productInfo = productService.productInfo(p_num);
		memberInfo = productService.memberInfo(user_id);
		
		if(log.isDebugEnabled()) {
			log.debug("<<productInfo>> : "+productInfo);
			log.debug("<<memberInfo>> : "+memberInfo);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("orderProduct");
		mav.addObject("productInfo",productInfo);
		mav.addObject("memberInfo",memberInfo);
		mav.addObject("quantity",quantity);
		
		return mav;
	}


	//========= 주문완료
	@RequestMapping("/shop/orderComplete.do")
	public ModelAndView process(@RequestParam("order_num") int order_num) {
		
		OrderCommand orderInfo = null;
		List<OrderCommand> orderProductInfo = null;
		
		orderInfo = productService.selectOrderInfo(order_num);
		orderProductInfo = productService.orderProductInfo(order_num);

		if(log.isDebugEnabled()) {
			log.debug("<<orderInfo>> : "+orderInfo);
			log.debug("<<orderProductInfo>> : "+orderProductInfo);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("orderComplete");
		mav.addObject("orderInfo",orderInfo);
		mav.addObject("orderProductInfo",orderProductInfo);

		return mav;
	}
	
	//=====================================AJAX //
	//브랜드 검색
	@RequestMapping("/shop/shopBrandSearch.do")
	@ResponseBody
	public Map<String,Object> getList(@RequestParam(value="pageNum",defaultValue="1") int currentPage,
			@RequestParam("category_num") int category_num,
			@RequestParam(value="category_detail_num", defaultValue="0") int category_detail_num
			, @RequestParam(value="brandSearch", defaultValue="0") String brandSearch){
		
		String[] nums = brandSearch.split(",");
		int[] results = null;
		List<ProductCommand> list = null;
		
		if(log.isDebugEnabled()) {
			log.debug("<<currentPage>> : "+currentPage);
			log.debug("<<category_num>> : "+category_num);
			log.debug("<<category_detail_num>> : "+category_detail_num);
			log.debug("<<brandSearch>> : "+brandSearch);
		}

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("category_num",category_num);
		map.put("category_detail_num",category_detail_num);
		
		if(!brandSearch.equals("0")) { //선택된 브랜드가 있을 때 
			results = new int[nums.length];
			for(int i=0;i<nums.length;i++) {
				results[i] = Integer.parseInt(nums[i]);
			}
		}
		//선택된 브랜드가 없으면 results가  null 값
		if(log.isDebugEnabled()) {
			log.debug("<<results>> : "+ results);
		}
		map.put("results",results);
		
		//검색된 상품 개수
		int productCnt =productService.selectProductCnt(map);
		if(log.isDebugEnabled()) {
			log.debug("<<productCnt>> : "+ productCnt);
		}
		
		PagingUtil page = new PagingUtil(currentPage,productCnt,rowCount,pageCount,null);
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		if(productCnt>0) {
			//map으로 만들어서 매개변수로 넘김
			list =  productService.selectShopProduct(map);
			
			if(log.isDebugEnabled()) {
				log.debug("<<list>> : "+list);
			}
		}else {
			list = Collections.emptyList();
		}
		
		Map<String,Object> mapJson = new HashMap<String,Object>();
		mapJson.put("productCnt", productCnt);
		mapJson.put("list", list);
		mapJson.put("pagingHtml",page.getPagingHtml());
			
		return mapJson;
	}
	
	//admin 답변 등록
	@RequestMapping("/shop/writePBReply.do")
	@ResponseBody
	public Map<String,String> writePBReply(ProductBoardCommand productBoardCommand, 
			HttpSession session, 
			HttpServletRequest request){
		
		if(log.isDebugEnabled()) {
			log.debug("<<productBoardCommand>> : "+productBoardCommand);
		}

		Map<String,String> map = new HashMap<String,String>();
		String user_id = (String) session.getAttribute("user_id");
		if(user_id == null) {
			//로그인 안됨
			map.put("result", "logout");
		} else {
			//댓글 등록
			productBoardService.insertPBReply(productBoardCommand);
			map.put("result", "success");
		}
		return map;
	}
	
	//구매하기
	@RequestMapping("/shop/productOrder.do")
	@ResponseBody
	public Map<String,Object> productOrder(@ModelAttribute OrderCommand opcommand
			,BindingResult result, HttpServletRequest request, HttpSession session) {
				
		if(log.isDebugEnabled()) {
			log.debug("<<opcommand>> : "+opcommand);
			log.debug("<<orderQuantity>> : "+opcommand.getOrderQuantity());
			log.debug("<<orderProduct>> : "+opcommand.getOrderProduct());
		}
		
		Map<String,Object> map = new HashMap<String,Object>();
		Map<String,Object> map2 = new HashMap<String,Object>();

		Integer[] orderQuantity = opcommand.getOrderQuantity();
		Integer[] orderProduct = opcommand.getOrderProduct();
		
		int product = 0;
		int quantity = 0;
		String user_id = (String) session.getAttribute("user_id");
		if(user_id == null) {
			//로그인 안됨
			map.put("result", "logout");
		} else {
			//구매하기
			
			int seqNum = productService.getSeqNumber();
			opcommand.setSeqNum(seqNum);
			productService.orderProduct(opcommand);
			
			for(int i=0;i<orderQuantity.length;i++) {
				product = orderProduct[i];
				quantity = orderQuantity[i];
				
				if(log.isDebugEnabled()) {
					log.debug("<<product>> : "+product);
					log.debug("<<quantity>> : "+quantity);
				}

				map2.put("seqNum", seqNum);
				map2.put("product", product);
				map2.put("quantity", quantity);
				
				productService.orderProductDetail(map2);
			}

			map.put("result", "success");
			map.put("seqNum", seqNum);
		}
		return map;
	}

	//장바구니 등록
	@RequestMapping("/shop/addCart.do")
	@ResponseBody
	public Map<String,Object> productCart(HttpSession session,
			@RequestParam("quantity") int quantity,
			@RequestParam("cart_product") int cart_product,
			@RequestParam("cart_price")int cart_price) {
				
		if(log.isDebugEnabled()) {
			log.debug("<<quantity>> : "+quantity);
			log.debug("<<cart_product>> : "+cart_product);
			log.debug("<<cart_price>> : "+cart_price);
		}
		
		Map<String,Object> map = new HashMap<String,Object>();
		int seqCartNum =0;
		CartCommand cartcommand = null;
		
		String user_id = (String) session.getAttribute("user_id");
		if(user_id == null) {
			//로그인 안됨
			map.put("result", "logout");
		} else {
			//장바구니 등록
			cartcommand = new CartCommand();
			cartcommand.setCart_id(user_id);
			
			seqCartNum = productService.getSeqCartNumber();
			cartcommand.setSeqCartNum(seqCartNum);
			cartcommand.setQuantity(quantity);
			cartcommand.setCart_product(cart_product);
			cartcommand.setCart_price(cart_price);
			
			productService.addCart(cartcommand);
			
			map.put("result", "success");
		}
		return map;
	}
	
}

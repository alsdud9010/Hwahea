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
	
	//메인 페이지 폼 호출
	@RequestMapping("/main/adminMain.do")
	public String process() {
		
		return "adminMain";
	}
	
	@Resource
	private AdminService adminBrandService;
	
	@ModelAttribute("brandcommand")
	public AdminBrandCommand initBrand() {
		return new AdminBrandCommand();
	}
	
	
	//브랜드 등록 데이터 전송
	@RequestMapping(value="/brand/adminBrandRegister.do",
					method=RequestMethod.POST)
	public String submit(@ModelAttribute("brandcommand")
						//@Valid 
						AdminBrandCommand brandCommand,
						BindingResult result) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<AdminBrandCommand>> : " + brandCommand);
		}
		
	/*	if(result.hasErrors()) {
			return formBrandRegister();
		}*/
		
		//브랜드 등록
		adminBrandService.insertBrand(brandCommand);
		
		return "redirect:/brand/adminBrandList.do";
	}
	
	//브랜드 리스트
	@RequestMapping("/brand/adminBrandList.do")
	public ModelAndView processBrand() {
		
		List<AdminBrandCommand> list = null;
		
		list = adminBrandService.selectBrandList();
			
		if(log.isDebugEnabled()) {
			log.debug("<<list>> : " + list);
		}
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminBrandList");
		mav.addObject("list",list);
		
		return mav;
	}
	
	//브랜드 이미지 출력
	@RequestMapping("/brand/brandImageView.do")
	public ModelAndView viewImageBrand(@RequestParam("brand_num") int brand_num) {			
		AdminBrandCommand brand = adminBrandService.selectBrand(brand_num);				
		ModelAndView mav = new ModelAndView();
		mav.setViewName("imageView");	//클래스호출
		//속성명			속성값(byte[]의 데이터)
		mav.addObject("imageFile",brand.getBrand_image());
		mav.addObject("filename",brand.getImage_name());
	
		return mav;
		
	}
	
	@Resource
	private AdminService adminCategoryService;
	
	@ModelAttribute("categorycommand")
	public AdminCategoryCommand initCategory() {
		return new AdminCategoryCommand();
	}
	
	//카테고리 등록 데이터 전송
	@RequestMapping(value="/category/adminCategoryRegister.do",
					method=RequestMethod.POST)
	public String submit(@ModelAttribute("categorycommand")
						AdminCategoryCommand categorycommand,
						BindingResult result) {
		if(log.isDebugEnabled()) {
			log.debug("<<AdminCategory>> : " + categorycommand);
		}
		
		adminCategoryService.insertCategory(categorycommand);
		
		return "redirect:/category/adminCategoryList.do";
	}
	
	//카테고리 목록
	@RequestMapping("/category/adminCategoryList.do")
	public ModelAndView processCategory() {
		
		List<AdminCategoryCommand> list = null;
		
			list = adminCategoryService.selectCateList();
			
			if(log.isDebugEnabled()) {
				log.debug("<<list>> : " + list);
			}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminCategoryList");
		mav.addObject("list",list);
		
		return mav;
	}
	
	@Resource
	private AdminService adminCategoryDetailService;
	
	@ModelAttribute("categorydetailcommand")
	public AdminCategoryCommand initCategoryDetail() {
		return new AdminCategoryCommand();
	}
	
	//세부 카테고리 데이터 전송
	@RequestMapping(value="/category/adminCategoryDetailRegister.do",
					method=RequestMethod.POST)
	public String submitCateDetail(@ModelAttribute("categorydetailcommand")
							AdminCategoryCommand categoryDetailCommand,
							BindingResult result) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<AdminCategoryDetail>> : " + categoryDetailCommand);
		}
		
		adminCategoryDetailService.insertCateDetail(categoryDetailCommand);
		
		return "redirect:/category/adminCategoryList";
	}
	
	//세부 카테고리 목록
	@RequestMapping("/category/adminCategoryDetailList.do")
	public ModelAndView processCategoryDetail(@RequestParam(value="pageNum", defaultValue="1") int currentPage,
			@RequestParam(value="keyfield", defaultValue="") String keyfield,
			@RequestParam(value="keyword", defaultValue="") String keyword) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("keyfield", keyfield);
		map.put("keyword", keyword);
		
		int count = adminCategoryDetailService.selectCateDetailRowCount(map);
		
		if(log.isDebugEnabled()) {
			log.debug("<<count>> : " + count);
		}
		
		List<AdminCategoryCommand> list2 = null;
		
		if(count > 0) {
			list2 = adminCategoryDetailService.selectCateDetailList();
			
			if(log.isDebugEnabled()) {
				log.debug("<<list2>> : " + list2);
			}
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminCategoryDetailList");
		mav.addObject("count", count);
		mav.addObject("list2", list2);
		
		return mav;
	}
	
	@Resource
	private AdminService adminCosmeticService;
	
	@ModelAttribute("cosmeticcommand")
	public AdminCosmeticCommand initCosmetic() {
		return new AdminCosmeticCommand();
	}
	
	//화장품 등록 폼
	
	
	//화장품 등록 데이터 전송
	@RequestMapping(value="/cosmetic/adminCosmeticRegister.do",
					method=RequestMethod.POST)
	public String submit(@ModelAttribute("cosmeticcommand")
						AdminCosmeticCommand cosmeticcommand,
						BindingResult result) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<AdminCosmeticCommand>> : " + cosmeticcommand);
		}
		
		int seqCount = adminCosmeticService.selectCosmeticSeq();
		
		adminCosmeticService.insertCosmetic(cosmeticcommand);
		
		return "redirect:/cosmetic/adminCosmeticList.do";
	}
	
	//화장품 리스트
	@RequestMapping("/cosmetic/adminCosmeticList.do")
	public ModelAndView processCosmetic()	{
		
		List<AdminCosmeticCommand> list = null;
		
			list = adminCosmeticService.selectCosmeticList();
			
			if(log.isDebugEnabled()) {
				log.debug("<<list>> : " + list);
			}
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminCosmeticList");
		mav.addObject("list",list);
		
		return mav;			
	}
	//화장품 상세 정보
	@RequestMapping("/cosmetic/adminCosmeticDetail.do")
	public ModelAndView process(@RequestParam("c_code") String c_code) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<c_code>> : " + c_code);
		}
		
		AdminCosmeticCommand cosmetic = adminCosmeticService.selectCosmetic(c_code);
		
		return new ModelAndView("adminCosmetic","cosmetic",cosmetic);
	}
	
	//화장품 삭제
	@RequestMapping("/cosmetic/adminCosmeticDelete")
	public String submit(@RequestParam("c_code") String c_code) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<c_code>> : " + c_code);
		}
		
		adminCosmeticService.deleteCosmetic(c_code);
		
		return "redirect:/cosmetic/adminCosmeticList.do";
	}
	
	@Resource
	private AdminService adminEventService;
	
	@ModelAttribute("eventcommand")
	public AdminEventCommand initEvent() {
		return new AdminEventCommand();
	}
	
	//이벤트 등록 폼 호출
	@RequestMapping(value="/event/adminEventRegister.do",
					method=RequestMethod.GET)
	public String formEventRegister() {
		
		return "adminEventRegister";
	}
	
	//이벤트 등록 데이터 전송
	@RequestMapping(value="/event/adminEventRegister.do",
					method=RequestMethod.POST)
	public String submit(@ModelAttribute("eventcommand")
						AdminEventCommand eventCommand,
						BindingResult result) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<AdminEventCommand>> : " + eventCommand);
		}
		
		adminEventService.insertEvent(eventCommand);
		
		return "redirect:/event/adminEvent.do";
	}
	
	//이벤트 리스트
	@RequestMapping("/event/adminEvent.do")
	public ModelAndView processEvent() {
		
		List<AdminEventCommand> list = null;
		
		list = adminEventService.selectEventList();
		
		if(log.isDebugEnabled()) {
			log.debug("<<list>> : " + list);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminEvent");
		mav.addObject("list",list);
		
		return mav;	
	}
	
	//이벤트 이미지 출력
			@RequestMapping("/event/eventImageView.do")
			public ModelAndView viewImageEvent(@RequestParam("event_num") int event_num) {
				AdminEventCommand event = adminEventService.selectEvent(event_num);
				ModelAndView mav = new ModelAndView();
				mav.setViewName("imageView");	//클래스호출
				//속성명			속성값(byte[]의 데이터)
				mav.addObject("imageFile",event.getEvent_image1());
				mav.addObject("filename",event.getEvent_filename1());
				
				return mav;
			}
			
	@Resource
	private AdminService adminIngredientService;
	
	@ModelAttribute("ingredientcommand")
	public AdminIngredientCommand initIngredient() {
		return new AdminIngredientCommand();
	}
	
	//성분 등록 폼
	@RequestMapping(value="/ingredient/adminIngredientRegister.do",
					method=RequestMethod.GET)
	public String formingreRegister() {
		
		return "adminIngredientList";
	}
	
	//성분 등록 데이터 전송
	@RequestMapping(value="/ingredient/adminIngredientRegister.do",
					method=RequestMethod.POST)
	public String submit(@ModelAttribute("ingredientcommand")
						AdminIngredientCommand ingredientcommand,
						BindingResult result) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<AdminIngredientCommand>> : " + ingredientcommand);
		}
		
		//성분 등록
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
	private AdminService adminFAQService;
	
	@ModelAttribute("commandfaq")
	public AdminFAQCommand init() {
		return new AdminFAQCommand();
	}
	
	//FAQ 등록 폼
	@RequestMapping(value="/notice/adminFAQRegister.do",
					method=RequestMethod.GET)
	public String formFAQRegister() {
		
		return "adminFAQRegister";
	}
	
	//FAQ 등록 데이터 전송
	@RequestMapping(value="/notice/adminFAQRegister.do",
					method=RequestMethod.POST)
	public String submit(@ModelAttribute("commandfaq")
						AdminFAQCommand faqCommand,
						BindingResult result) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<AdminBrandCommand>> : " + faqCommand );
		}
		
		//FAQ등록
		adminFAQService.insertFAQ(faqCommand);
		
		return "redirect:/notice/adminFAQ.do";
	}
	
	//FAQ 글 목록
	@RequestMapping("/notice/adminFAQ.do")
	public ModelAndView processFAQ(@RequestParam(value="pageNum", defaultValue="1") int currentPage,
			@RequestParam(value="keyfield", defaultValue="") String keyfield,
			@RequestParam(value="keyword", defaultValue="") String keyword) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("keyfield", keyfield);
		map.put("keyword", keyword);
		
		int count = adminFAQService.selectFAQRowCount(map);
		
		if(log.isDebugEnabled()) {
			log.debug("<<count>> : " + count);
		}
		
		PagingUtil page = new PagingUtil(keyfield,keyword,currentPage,count,rowCount,pageCount,"list.do");
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<AdminFAQCommand> list = null;
		
		if(count>0) {
			list = adminFAQService.selectFAQList(map);
			
			if(log.isDebugEnabled()) {
				log.debug("<<list>> : " + list);
			}
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminFAQ");
		mav.addObject("count",count);
		mav.addObject("list",list);
		mav.addObject("pagingHtml",page.getPagingHtml());
		
		return mav;
	}
	
	//받은 문의 폼
	@RequestMapping("notice/inquiry.do")
	public String formInquiry() {
		
		return "inquiry";
	}
	
	//공지사항 폼
	@RequestMapping("/notice/adminNotice.do")
	public String formNotice() {
		
		return "adminNotice";
	}
	
	@Resource
	private AdminService adminProductService;
	
	@ModelAttribute("commandproduct")
	public AdminProductCommand initCommand() {
		return new AdminProductCommand();
	}
	
	//쇼핑 상품 등록 폼
	@RequestMapping(value="/product/adminProductRegister.do",
					method=RequestMethod.GET)
	public String formRegister() {
		
		return "/product/productRegister";
	}
	
	//쇼핑 상품 데이터 전송
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
	
	//쇼핑 상품 리스트
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
	//쇼핑 상품 상세 정보
	@RequestMapping("/product/adminProductDetail.do")
	public ModelAndView process(@RequestParam("p_num") int p_num) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<p_num>> : " + p_num);
		}
		
		AdminProductCommand product = adminProductService.selectProduct(p_num);
		
		return new ModelAndView("adminProductDetail","product",product);
	}
	//쇼핑 상품 삭제
	@RequestMapping("/product/adminProductDelete")
	public String submit(@RequestParam("p_num") int p_num) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<p_num>> : " + p_num);
		}
		
		//쇼핑 상품 삭제
		adminProductService.deleteProduct(p_num);
		
		return "redirect:/product/adminProductList.do";
	}
	
	//쇼핑 상품 이미지 출력
		@RequestMapping("/product/productImageView.do")
		public ModelAndView viewImageProduct(@RequestParam("p_num") int p_num) {
			AdminProductCommand product = adminProductService.selectProduct(p_num);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("imageView");	//클래스호출
			//속성명			속성값(byte[]의 데이터)
			mav.addObject("imageFile",product.getP_image());
			mav.addObject("filename",product.getP_photo());
			
			return mav;
		}
	
	//============글쓰기 이미지 업로드 ===========//
		@RequestMapping("/product/imageUploader.do")
		public void uploadImageProduct(MultipartFile file, HttpSession session, HttpServletResponse response) throws Exception {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();

			// 업로드할 폴더 경로
			String realFolder = session.getServletContext().getRealPath("resources/upload");

			// 업로드할 파일 이름
			String org_filename = file.getOriginalFilename();
			String str_filename = System.currentTimeMillis() + org_filename;

			System.out.println("원본 파일명 : " + org_filename);
			System.out.println("저장할 파일명 : " + str_filename);

			String filepath = realFolder + "\\" + session.getAttribute("user_id") + "\\" + str_filename;
			System.out.println("파일경로 : " + filepath);

			File f = new File(filepath);
			if (!f.exists()) {
				f.mkdirs();
			}
			file.transferTo(f);
			out.println("../resources/upload/"+session.getAttribute("user_id")+"/"+str_filename);
			out.close();
		}
		
		//신고한 리뷰 폼
		@RequestMapping("/report/reportReview.do")
		public String formReportReview() {
			
			return "reportReview";
		}
		
		//사용자 등록 요청 폼
		@RequestMapping("userRequired/requiredRegister.do")
		public String formRequiredRegister() {
			
			return "requiredRegister";
		}
		
		//사용자 수정 요청 폼
		@RequestMapping("userRequired/requiredUpdate.do")
		public String formRequiredUpdate() {
			
			return "requiredUpdate";
		}
		
		//회원관리 폼
		@RequestMapping("users/adminUser.do")
		public String formUser() {
			
			return "adminUser";
		}
		
		@RequestMapping("users/adminUserDetail.do")
		public String formUserDetail() {
			
			return "adminUserDetail";
		}
		
}

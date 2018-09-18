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

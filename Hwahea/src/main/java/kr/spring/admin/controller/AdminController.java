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
	private AdminService adminBrandService;
	
	@ModelAttribute("brandcommand")
	public AdminBrandCommand initBrand() {
		return new AdminBrandCommand();
	}
	
	
	//�귣�� ��� ������ ����
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
		
		//�귣�� ���
		adminBrandService.insertBrand(brandCommand);
		
		return "redirect:/brand/adminBrandList.do";
	}
	
	//�귣�� ����Ʈ
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
	
	//�귣�� �̹��� ���
	@RequestMapping("/brand/brandImageView.do")
	public ModelAndView viewImageBrand(@RequestParam("brand_num") int brand_num) {			
		AdminBrandCommand brand = adminBrandService.selectBrand(brand_num);				
		ModelAndView mav = new ModelAndView();
		mav.setViewName("imageView");	//Ŭ����ȣ��
		//�Ӽ���			�Ӽ���(byte[]�� ������)
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
	
	//ī�װ� ��� ������ ����
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
	
	//ī�װ� ���
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
	
	//���� ī�װ� ������ ����
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
	
	//���� ī�װ� ���
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
	
	//ȭ��ǰ ��� ��
	
	
	//ȭ��ǰ ��� ������ ����
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
	
	//ȭ��ǰ ����Ʈ
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
	//ȭ��ǰ �� ����
	@RequestMapping("/cosmetic/adminCosmeticDetail.do")
	public ModelAndView process(@RequestParam("c_code") String c_code) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<c_code>> : " + c_code);
		}
		
		AdminCosmeticCommand cosmetic = adminCosmeticService.selectCosmetic(c_code);
		
		return new ModelAndView("adminCosmetic","cosmetic",cosmetic);
	}
	
	//ȭ��ǰ ����
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
	
	//�̺�Ʈ ��� �� ȣ��
	@RequestMapping(value="/event/adminEventRegister.do",
					method=RequestMethod.GET)
	public String formEventRegister() {
		
		return "adminEventRegister";
	}
	
	//�̺�Ʈ ��� ������ ����
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
	
	//�̺�Ʈ ����Ʈ
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
	
	//�̺�Ʈ �̹��� ���
			@RequestMapping("/event/eventImageView.do")
			public ModelAndView viewImageEvent(@RequestParam("event_num") int event_num) {
				AdminEventCommand event = adminEventService.selectEvent(event_num);
				ModelAndView mav = new ModelAndView();
				mav.setViewName("imageView");	//Ŭ����ȣ��
				//�Ӽ���			�Ӽ���(byte[]�� ������)
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
	private AdminService adminFAQService;
	
	@ModelAttribute("commandfaq")
	public AdminFAQCommand init() {
		return new AdminFAQCommand();
	}
	
	//FAQ ��� ��
	@RequestMapping(value="/notice/adminFAQRegister.do",
					method=RequestMethod.GET)
	public String formFAQRegister() {
		
		return "adminFAQRegister";
	}
	
	//FAQ ��� ������ ����
	@RequestMapping(value="/notice/adminFAQRegister.do",
					method=RequestMethod.POST)
	public String submit(@ModelAttribute("commandfaq")
						AdminFAQCommand faqCommand,
						BindingResult result) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<AdminBrandCommand>> : " + faqCommand );
		}
		
		//FAQ���
		adminFAQService.insertFAQ(faqCommand);
		
		return "redirect:/notice/adminFAQ.do";
	}
	
	//FAQ �� ���
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
	
	//���� ���� ��
	@RequestMapping("notice/inquiry.do")
	public String formInquiry() {
		
		return "inquiry";
	}
	
	//�������� ��
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

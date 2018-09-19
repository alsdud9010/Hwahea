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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.admin.domain.AdminBrandCommand;
import kr.spring.admin.domain.AdminCategoryCommand;
import kr.spring.admin.domain.AdminCosmeticCommand;
import kr.spring.admin.service.AdminBrandService;
import kr.spring.admin.service.AdminCategoryService;
import kr.spring.admin.service.AdminCosmeticService;

@Controller
public class AdminCosmeticController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private AdminBrandService adminBrandService;
	
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
	
	//브랜드 삭제
	@RequestMapping("/brand/adminBrandDelete.do")
	public String submitBrandDelete(@RequestParam("brand_num") int brand_num) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<brand_num>> :  " + brand_num);
		}
		
		adminBrandService.deleteBrand(brand_num);
		
		return "redirect:/brand/adminBrandList.do";
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
	private AdminCategoryService adminCategoryService;
	
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
	private AdminCategoryService adminCategoryDetailService;
	
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
	private AdminCosmeticService adminCosmeticService;
	
	@ModelAttribute("cosmeticcommand")
	public AdminCosmeticCommand initCosmetic() {
		return new AdminCosmeticCommand();
	}
	
	//화장품 등록 데이터 전송
	@RequestMapping(value="/cosmetic/adminCosmeticRegister.do",
					method=RequestMethod.POST)
	public String submit(@ModelAttribute("cosmeticcommand")
						AdminCosmeticCommand cosmeticcommand,
						BindingResult result) {
				
		int seqNum = adminCosmeticService.selectCosmeticSeq();
		cosmeticcommand.setC_code(cosmeticcommand.getC_code()+"C"+seqNum);
		
		if(log.isDebugEnabled()) {
			log.debug("<<AdminCosmeticCommand>> : " + cosmeticcommand);
			log.debug("<<C_CODE>> : " + cosmeticcommand);
		}
		
		adminCosmeticService.insertCosmetic(cosmeticcommand);
		
		return "redirect:/cosmetic/adminCosmeticList.do";
	}
	
	//화장품 리스트
	@RequestMapping("/cosmetic/adminCosmeticList.do")
	public ModelAndView processCosmetic()	{
		
		List<AdminCosmeticCommand> list = null;
		List<AdminBrandCommand> brand = null;
		List<AdminCategoryCommand> category = null;
		
		list = adminCosmeticService.selectCosmeticList();
		brand = adminBrandService.selectBrandList();
		category = adminCategoryService.selectCategoryList();
			
		if(log.isDebugEnabled()) {
			log.debug("<<list>> : " + list);
			log.debug("<<category>> : " + category);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminCosmeticList");
		mav.addObject("list",list);
		mav.addObject("brand", brand);
		mav.addObject("category", category);
		
		return mav;
	}
	
	//등록 폼에서 세부카테고리 aJax 처리
	@RequestMapping("/cosmetic/adminC_detail.do")
	@ResponseBody
	public Map<String,Object> getC_detail(@RequestParam("category_num") int category_num){
		
		List<AdminCategoryCommand> category_detail = null;
		category_detail = adminCategoryDetailService.selectC_DetailList(category_num);
		
		if(log.isDebugEnabled()) {
			log.debug("<<category_num>> : " + category_num);
			log.debug("<<category_num>> : " + category_num);
		}
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("category_detail", category_detail);
		
		return map;
	}
	
	//화장품 상세 정보
	@RequestMapping("/cosmetic/adminCosmeticDetail.do")
	public ModelAndView process(@RequestParam("c_code") String c_code) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<c_code>> : " + c_code);
		}
		
		AdminCosmeticCommand cosmetic = adminCosmeticService.selectCosmetic(c_code);
		
		return new ModelAndView("adminCosmeticDetail","cosmetic",cosmetic);
	}
	
	//화장품 삭제
	@RequestMapping("/cosmetic/adminCosmeticDelete.do")
	public String submitCosmeticDelete(@RequestParam("c_code") String c_code) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<c_code>> : " + c_code);
		}
		
		adminCosmeticService.deleteCosmetic(c_code);
		
		return "redirect:/cosmetic/adminCosmeticList.do";
	}
	
	//화장품 이미지 출력
	@RequestMapping("/cosmetic/cosmeticImageView.do")
	public ModelAndView viewImageCosmetic(@RequestParam("c_code") String c_code) {
		AdminCosmeticCommand cosmetic = adminCosmeticService.selectCosmetic(c_code);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("imageView");	//클래스호출
		//속성명			속성값(byte[]의 데이터)
		mav.addObject("imageFile",cosmetic.getC_uploadbyte());
		mav.addObject("filename",cosmetic.getC_photoname());
		
		return mav;
	}
	
}

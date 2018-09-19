package kr.spring.cosmetic.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.cosmetic.domain.BrandCommand;
import kr.spring.cosmetic.domain.CosmeticCommand;
import kr.spring.cosmetic.service.CosmeticService;

@Controller
public class CosmeticController {
	private Logger log = Logger.getLogger(this.getClass());	
	
	@Resource
	private CosmeticService cosmeticService;
	
	//카테고리별 메인 호출
	@RequestMapping("/ranking/r_category.do")
	public ModelAndView getCategoryMain(){
		
		List<CosmeticCommand> category = null;
		category = cosmeticService.getAllCosmetic();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("r_category");
		mav.addObject("category", category);
		
		return mav;
	}
	
	//브랜드별 메인 호출
	@RequestMapping("/ranking/r_brand.do")
	public ModelAndView getBrandList(){
		
		List<BrandCommand> brand = null;
		List<CosmeticCommand> mainList = null;
		
		brand = cosmeticService.getBrandList();
		mainList = cosmeticService.getAllCosmetic();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("r_brand");
		mav.addObject("brand", brand);
		mav.addObject("mainList", mainList);
		
		return mav;
	}
}
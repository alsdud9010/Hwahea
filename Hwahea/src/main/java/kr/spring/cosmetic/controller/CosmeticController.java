package kr.spring.cosmetic.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public ModelAndView getCategoryList(){
		
		List<CosmeticCommand> category = null;
		category = cosmeticService.getAllCosmetic();
		
		if(log.isDebugEnabled()) {
			log.debug("<<category>> : " + category);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("r_category");
		mav.addObject("category", category);
		
		return mav;
	}
	
	//=======브랜드 리스트 호출
	@RequestMapping("/ranking/r_brand.do")
	public ModelAndView getBrandList(){
		int count = cosmeticService.getRowCount();
		
		List<BrandCommand> brand = null;
		if(count>0) {
			brand = cosmeticService.getBrandList();
		}		
		
		if(log.isDebugEnabled()) {
			log.debug("<<brand>> : " + brand);
			log.debug("<<count>> : " + count);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("r_brand");
		mav.addObject("brand", brand);
		
		return mav;
	}
	
}
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

import kr.spring.cosmetic.domain.CosmeticCommand;
import kr.spring.cosmetic.service.CosmeticService;

@Controller
public class CosmeticAjaxController {
	private Logger log = Logger.getLogger(this.getClass());	
	
	@Resource
	private CosmeticService cosmeticService;
	
	//브랜드별 랭킹 호출
	@RequestMapping("/ranking/brand_ranking.do")
	@ResponseBody
	public Map<String, Object> getBrandRanking(@RequestParam("brand_num") String brand_num){
		
		if(log.isDebugEnabled()) {
			log.debug("<<brand_num>> : "+brand_num);
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("brand_num", brand_num);
		map.put("c_code", "B"+brand_num+"D%");
		
		List<CosmeticCommand> list = null;
		list = cosmeticService.getCosmeticRank(map);
		
		map.put("list", list);
		
		return map;
	}
	
	@RequestMapping("/ranking/imageView.do")
	   public ModelAndView cosmeticImage(@RequestParam("c_code") String c_code) {

	      CosmeticCommand cosmetic = cosmeticService.cosmeticDetail(c_code);

	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("imageView");

	      mav.addObject("imageFile",cosmetic.getC_uploadbyte());
	      mav.addObject("filename",cosmetic.getC_photoname());
	      

	      return mav;
	   }
}
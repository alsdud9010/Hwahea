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
	
	//ī�װ��� ���� ȣ��
	@RequestMapping("/ranking/r_category.do")
	public ModelAndView getCategoryMain(){
		
		List<CosmeticCommand> category = null;
		category = cosmeticService.getAllCosmetic();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("r_category");
		mav.addObject("category", category);
		
		return mav;
	}
	
	//ī�װ� ���� �޴� ȣ��
	@RequestMapping("/ranking/c_downmenu.do")
	@ResponseBody
	public Map<String, Object> getC_downmenu1(@RequestParam("num") String num){
		
		String c_code = "%D" + num + "C%";
		

		if(log.isDebugEnabled()) {
			log.debug("<<c_code>> : " + c_code);
		}
		
		List<CosmeticCommand> list = null;
		list = cosmeticService.getCategoryList(c_code);
		
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("list", list);
		
		return map;
	}
	
	//=======�귣�� ����Ʈ ȣ��
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
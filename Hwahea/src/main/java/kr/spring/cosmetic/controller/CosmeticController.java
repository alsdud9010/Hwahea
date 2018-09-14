package kr.spring.cosmetic.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.spring.cosmetic.service.CosmeticService;

@Controller
public class CosmeticController {
	private Logger log = Logger.getLogger(this.getClass());	
	
	@Resource
	private CosmeticService cosmeticService;
	
	//=======브랜드별 랭킹 페이지 호출
	@RequestMapping("/ranking/r_brand.do")
	public String r_brand() {
		
		return "r_brand";
	}
}
package kr.spring.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReviewController {
	
	//==============================제품 상세보기 
	@RequestMapping("/review/productInfo.do")
	public String process(){
		
		return "productInfo";
	}
}

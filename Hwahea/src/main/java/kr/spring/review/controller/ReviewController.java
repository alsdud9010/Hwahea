package kr.spring.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReviewController {
	
	//==============================��ǰ �󼼺��� 
	@RequestMapping("/review/productInfo.do")
	public String process(){
		
		return "productInfo";
	}
}

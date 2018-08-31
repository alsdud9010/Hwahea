package kr.spring.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReviewController {
	
	@RequestMapping("/review/productInfo.do")
	public String process(){
		return "review/productInfo";
	}
}

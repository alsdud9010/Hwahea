package kr.spring.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReviewController {
	
	//==============================力前 惑技焊扁 
	@RequestMapping("/review/productInfo.do")
	public String process(){
		
		return "productInfo";
	}
	
	//==============================府轰 累己 汽
	@RequestMapping("/review/writeReview.do")
	public String form() {
		
		return "writeReview";
	}
}

package kr.spring.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReviewController {
	
	//==============================제품 상세보기 
	@RequestMapping("/review/productInfo.do")
	public String process(){
		
		return "productInfo";
	}
	
	//==============================리뷰 작성 폼
	@RequestMapping("/review/writeReview.do")
	public String form() {
		
		return "writeReview";
	}
	
	//==============================정보 수정요청 폼
	@RequestMapping("/review/editRequest.do")
	public String editForm() {
		
		return "editRequest";
	}
}

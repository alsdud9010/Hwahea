package kr.spring.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReviewController {
	
	//==============================��ǰ �󼼺��� 
	@RequestMapping("/review/productInfo.do")
	public String process(){
		
		return "productInfo";
	}
	
	//==============================���� �ۼ� ��
	@RequestMapping("/review/writeReview.do")
	public String form() {
		
		return "writeReview";
	}
	
	//==============================���� ������û ��
	@RequestMapping("/review/editRequest.do")
	public String editForm() {
		
		return "editRequest";
	}
}

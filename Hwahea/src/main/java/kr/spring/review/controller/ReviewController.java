package kr.spring.review.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.spring.review.domain.ReviewCommand;
import kr.spring.review.service.ReviewService;
import kr.spring.util.CipherTemplate;

@Controller
public class ReviewController {
	
	//로그처리
		private Logger log = Logger.getLogger(this.getClass());
		
		@Resource
		private ReviewService reviewService;
		
		@Resource
		private CipherTemplate ciperAES;
		
		//자바빈 초기화
		@ModelAttribute("reviewcommand")
		public ReviewCommand initCommand() {
			return new ReviewCommand();
		}
	
	//==============================제품 상세보기 
	@RequestMapping("/review/productInfo.do")
	public String process(){
		
		return "productInfo";
	}
	
	//==============================리뷰 작성 폼
	@RequestMapping(value="/review/writeReview.do",method=RequestMethod.GET)
	public String form() {
		/*String id = (String)session.getAttribute("user_id");
		ReviewCommand command = new ReviewCommand();
		command.setRe_id(id);*/
		
		return "writeReview";
	}
	//==============================리뷰 데이터 전송
	@RequestMapping(value="/review/reviewSuccess.do",method=RequestMethod.POST)
	public String submit(@ModelAttribute("reviewcommand") @Valid ReviewCommand reviewCommand, BindingResult result, HttpServletRequest request) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<ReviewCommand>> : "+reviewCommand);
		}
		
		if(result.hasErrors()) {
			return form();
		}
		
		//ip 셋팅
		reviewCommand.setRe_ip(request.getRemoteAddr());
		
		//리뷰 작성
		reviewService.insert(reviewCommand);
		
		return "redirect:/review/productInfo.do";
	}
	
	
	
	
	//==============================정보 수정요청 폼
	@RequestMapping("/review/editRequest.do")
	public String editForm() {
		
		return "editRequest";
	}
	
	//==============================성분 팝업
	@RequestMapping("/review/ingreSpec.do")
	public String ingreProcess() {
		
		return "/review/ingreSpec";
	}
	
	
}

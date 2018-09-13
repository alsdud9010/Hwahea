package kr.spring.review.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.review.domain.ReviewCommand;
import kr.spring.review.service.ReviewService;
import kr.spring.util.CipherTemplate;
import kr.spring.util.StringUtil;

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
	
	//==============================리뷰 목록 출력 
	
	
	
	
	
	//==============================리뷰 1개 상세 보기 
	@RequestMapping("/review/reviewDetail.do")
	public ModelAndView process(@RequestParam("re_num") int re_num) {

		if(log.isDebugEnabled()) {
			log.debug("<<re_num>> : "+re_num);
		}

		ReviewCommand review = reviewService.selectReview(re_num);
		review.setRe_good(StringUtil.useBrNoHtml(review.getRe_good()));
		review.setRe_bad(StringUtil.useBrNoHtml(review.getRe_bad()));
		review.setRe_tip(StringUtil.useBrNoHtml(review.getRe_tip()));

		return new ModelAndView("reviewView","review",review);
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
	public String submit(@ModelAttribute("reviewcommand") @Valid ReviewCommand reviewCommand, BindingResult result, HttpSession session, HttpServletRequest request) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<ReviewCommand>> : "+reviewCommand);
		}
		
		if(result.hasErrors()) {
			return "writeReview";
		}
		
		String user_id = (String)session.getAttribute("user_id");
		reviewCommand.setRe_id(user_id);
		
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
	
	//==============================정보 수정요청 데이터 전송
	@RequestMapping("/review/editSuccess.do")
	@ResponseBody
	public Map<String,String> writeEdit(ReviewCommand reviewCommand, HttpSession session, HttpServletRequest request){
		
		if(log.isDebugEnabled()) {
			log.debug("<<reviewReplyCommand>> : "+reviewCommand);
		}
		
		Map<String,String> map = new HashMap<String,String>();
		
		String user_id = (String)session.getAttribute("user_id");
		reviewCommand.setM_id(user_id);
		
		if(user_id==null) {//로그인이 안 됨
			map.put("result", "logout");
		}else {	
			//수정요청 등록
			reviewService.insertEdit(reviewCommand);
			map.put("result", "success");
		}
		
		return map;
	}
	
	//==============================성분 팝업
	@RequestMapping("/review/ingreSpec.do")
	public String ingreProcess() {
		
		return "/review/ingreSpec";
	}
	
	
}

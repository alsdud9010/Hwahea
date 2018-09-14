package kr.spring.review.controller;

import java.util.HashMap;
import java.util.List;
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
import kr.spring.util.PagingUtil;

@Controller
public class ReviewController {
	
	//로그처리
	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;
		
	@Resource
	private ReviewService reviewService;
		
	@Resource
	private CipherTemplate ciperAES;
		
	//자바빈 초기화
	@ModelAttribute("reviewcommand")
	public ReviewCommand initCommand() {
		return new ReviewCommand();
	}
	
	//==============================목록 출력하기->****리뷰만!!!!****
	@RequestMapping("/review/productInfo.do")
	public ModelAndView getList(@RequestParam(value="pageNum",defaultValue="1")int currentPage, @RequestParam(value="keyfield",defaultValue="") String keyfield, @RequestParam(value="keyword",defaultValue="") String keyword){
		
		if(log.isDebugEnabled()) {
			log.debug("<<currentPage>> : "+currentPage);
		}
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		//총 리뷰의 갯수
		int count = reviewService.selectRowCount(map);
		
		PagingUtil page = new PagingUtil(currentPage, count, rowCount, pageCount, "productInfo.do");
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<ReviewCommand> list = null;
		List<ReviewCommand> member = null;
		
		if(count > 0) {
			list = reviewService.selectList(map);
			
			/*member = reviewService.selectMember(map);*/
			
			if(log.isDebugEnabled()) {
				log.debug("<<list>> : " + list);
			}
		}	
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("productInfo");
		mav.addObject("member",member);
		mav.addObject("count",count);
		mav.addObject("list", list);
		mav.addObject("pagingHTML", page.getPagingHtml());
		
		return mav;
	}
	
	//==============================리뷰 목록 출력 
	
	
	
	
	//==============================리뷰 1개 상세 보기 
	@RequestMapping("/review/oneReview.do")
	@ResponseBody
	public Map<String,String> oneReview(@RequestParam("data-num") int re_num, ReviewCommand reviewCommand){
		
		if(log.isDebugEnabled()) {
			log.debug("<<reviewCommand>> : "+reviewCommand);
		}
		
		Map<String,String> map = new HashMap<String,String>();
		

		//댓글 등록
		reviewService.selectReview(re_num);
		map.put("result", "success");

		
		return map;
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

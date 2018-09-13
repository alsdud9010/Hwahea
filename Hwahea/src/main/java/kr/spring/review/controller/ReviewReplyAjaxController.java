package kr.spring.review.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.review.domain.ReviewReplyCommand;
import kr.spring.review.service.ReviewService;
import kr.spring.util.PagingUtil;

@Controller
public class ReviewReplyAjaxController {
	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;
	
	@Resource
	private ReviewService reviewService;
	

	
	
	//==============================댓글 등록
	@RequestMapping("/review/writeReply.do")
	@ResponseBody
	public Map<String,String> writeReply(ReviewReplyCommand reviewReplyCommand, HttpSession session, HttpServletRequest request){
		
		if(log.isDebugEnabled()) {
			log.debug("<<reviewReplyCommand>> : "+reviewReplyCommand);
		}
		
		Map<String,String> map = new HashMap<String,String>();
		
		String user_id = (String)session.getAttribute("user_id");
		
		if(user_id==null) {//로그인이 안 됨
			map.put("result", "logout");
		}else {
			//아이디 등록
			reviewReplyCommand.setRe_id(user_id);
			
			//ip 등록
			reviewReplyCommand.setRere_ip(request.getRemoteAddr());
			
			//댓글 등록
			reviewService.insertReply(reviewReplyCommand);
			map.put("result", "success");
		}
		
		return map;
	}
	
	
	
	//==============================댓글 목록
	@RequestMapping("/review/listReply.do")
	@ResponseBody
	public Map<String,Object> getList(@RequestParam(value="pageNum",defaultValue="1")int currentPage, @RequestParam("re_num") int re_num){
		
		if(log.isDebugEnabled()) {
			log.debug("<<currentPage>> : "+currentPage);
			log.debug("<<re_num>> : "+re_num);
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("re_num", re_num);
		
		//총 글의 갯수
		int count = reviewService.selectRowCountReply(map);
		
		PagingUtil page = new PagingUtil(currentPage, count, rowCount, pageCount, null);
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<ReviewReplyCommand> list = null;
		if(count > 0) {
			list = reviewService.selectListReply(map);
		}else {
			list = Collections.emptyList();
		}
		
		Map<String,Object> mapJson = new HashMap<String,Object>();
		mapJson.put("count", count);
		mapJson.put("rowCount", rowCount);
		mapJson.put("list", list);
		
		return mapJson;
	}
	
	
	//==============================댓글 삭제
	@RequestMapping("/review/deleteReply.do")
	@ResponseBody
	public Map<String, String> deleteReply(@RequestParam("rere_num") int rere_num, @RequestParam("id") String id, HttpSession session){

		if(log.isDebugEnabled()) {
			log.debug("<<rere_num>> : "+rere_num);
			log.debug("<<id>> : "+id);
		}

		Map<String, String> map = new HashMap<String, String>();

		String user_id = (String)session.getAttribute("user_id");

		if(user_id == null) {
			//로그인이 되어있지 않음
			map.put("result", "logout");
		}else if(user_id!=null && user_id.equals(id)) {
			//로그인 되어있고, 로그인한 아이디와 작성자 아이디가 일치함
			reviewService.deleteReply(rere_num);
			map.put("result", "success");
		}else {
			map.put("result", "wrongAccess");
		}

		return map;
	}
	
	
	//==============================댓글 수정
	@RequestMapping("/review/updateReply.do")
	@ResponseBody
	public Map<String,String> modifyReply(ReviewReplyCommand reviewReplyCommand, HttpSession session, HttpServletRequest request){

		if(log.isDebugEnabled()) {
			log.debug("<<reviewReplyCommand>> : "+reviewReplyCommand);
			log.debug(reviewReplyCommand.getRe_id());
			log.debug(request.getRemoteAddr());
		}

		Map<String,String> map = new HashMap<String,String>();

		String user_id = (String)session.getAttribute("user_id");
		

		if(user_id==null) {
			//로그인 안됨
			map.put("result", "logout");
		}
		if(!user_id.equals(reviewReplyCommand.getRe_id())){
			//로그인 아이디와 작성자 아이디 불일치
			map.put("result", "wrongAccess");
		}
		if(user_id.equals(reviewReplyCommand.getRe_id())) {
			//댓글 작성자 아이디와 로그인 아이디가 일치
			//ip 등록
			reviewReplyCommand.setRere_ip(request.getRemoteAddr());

			//댓글 수정
			reviewService.updateReply(reviewReplyCommand);
			map.put("result", "success");
		}

		return map;
	}
	
}

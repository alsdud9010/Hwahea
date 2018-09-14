package kr.spring.plus.controller;

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

import kr.spring.plus.domain.PlusReplyCommand;
import kr.spring.plus.service.PlusService;
import kr.spring.review.domain.ReviewReplyCommand;
import kr.spring.util.PagingUtil;

@Controller
public class PlusReplyAjaxController {
	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;
	
	@Resource
	private PlusService plusService;
	
	//댓글 등록
	@RequestMapping("/plus/writeReply.do")
	@ResponseBody //json문자열로 만들어줌
	public Map<String,String> writeReply(PlusReplyCommand plusReplyCommand,HttpSession session, HttpServletRequest request){
		
		if(log.isDebugEnabled()) {
			log.debug("<<plusReplyCommand>> : " + plusReplyCommand);
		}
		
		Map<String,String> map = new HashMap<String,String>();
		
		String user_id = (String)session.getAttribute("user_id");
		if(user_id == null) {
			//로그인 안 됨
			map.put("result", "logout");
		}else {
			//아이디 등록
			plusReplyCommand.setHpre_id(user_id);
			//ip 등록
			plusReplyCommand.setHpre_ip(request.getRemoteAddr());
			
			//댓글 등록
			plusService.insertReply(plusReplyCommand);
			map.put("result", "success");
		}
		
		return map;
	}
	
	//댓글 목록
	@RequestMapping("/plus/listReply.do")
	@ResponseBody
	public Map<String,Object> getList(@RequestParam(value="pageNum",defaultValue="1") int currentPage, @RequestParam("hp_num") int hp_num){
		
		if(log.isDebugEnabled()) {
			log.debug("<<currentPage>> : " + currentPage);
			log.debug("<<hp_num>> : " + hp_num);
		}
	
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("hp_num", hp_num);
		
		//총 글의 개수
		int count = plusService.selectRowCountReply(map);
		
		PagingUtil page = new PagingUtil(currentPage, count, rowCount, pageCount, null);
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<PlusReplyCommand> list = null;
		if(count > 0) {
			list = plusService.selectPlusReply(map);
		}else {
			list = Collections.emptyList(); //null이 아닌 비어있게 처리
		}
		
		Map<String,Object> mapJson = new HashMap<String,Object>();
		
		mapJson.put("count",count);
		mapJson.put("rowCount", rowCount);
		mapJson.put("list",list);
	
		return mapJson;
	}
	
	//댓글 삭제
	@RequestMapping("/plus/deleteReply.do")
	@ResponseBody
	public Map<String, String> deleteReply(@RequestParam("hpre_num") int hpre_num, @RequestParam("id") String id, HttpSession session){

		if(log.isDebugEnabled()) {
			log.debug("<<hpre_num>> : "+hpre_num);
			log.debug("<<id>> : "+id);
		}

		Map<String, String> map = new HashMap<String, String>();

		String user_id = (String)session.getAttribute("user_id");

		if(user_id == null) {
			//로그인이 되어있지 않음
			map.put("result", "logout");
		}else if(user_id!=null && user_id.equals(id)) {
			//로그인 되어있고, 로그인한 아이디와 작성자 아이디가 일치함
			plusService.deleteReply(hpre_num);
			map.put("result", "success");
		}else {
			map.put("result", "wrongAccess");
		}

		return map;
	}
	
	//댓글 수정
	@RequestMapping("/plus/updateReply.do")
	@ResponseBody
	public Map<String,String> modifyReply(PlusReplyCommand plusReplyCommand, HttpSession session, HttpServletRequest request){

		if(log.isDebugEnabled()) {
			log.debug("<<plusReplyCommand>> : "+plusReplyCommand);
			log.debug(plusReplyCommand.getHpre_id());
			log.debug(request.getRemoteAddr());
		}

		Map<String,String> map = new HashMap<String,String>();

		String user_id = (String)session.getAttribute("user_id");
		

		if(user_id==null) {
			//로그인 안됨
			map.put("result", "logout");
		}
		if(!user_id.equals(plusReplyCommand.getHpre_id())){
			//로그인 아이디와 작성자 아이디 불일치
			map.put("result", "wrongAccess");
		}
		if(user_id.equals(plusReplyCommand.getHpre_id())) {
			//댓글 작성자 아이디와 로그인 아이디가 일치
			//ip 등록
			plusReplyCommand.setHpre_ip(request.getRemoteAddr());

			//댓글 수정
			plusService.updateReply(plusReplyCommand);
			map.put("result", "success");
		}

		return map;
	}
	
}
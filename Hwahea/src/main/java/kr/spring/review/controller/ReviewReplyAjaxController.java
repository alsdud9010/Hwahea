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
	

	
	
	//==============================��� ���
	@RequestMapping("/review/writeReply.do")
	@ResponseBody
	public Map<String,String> writeReply(ReviewReplyCommand reviewReplyCommand, HttpSession session, HttpServletRequest request){
		
		if(log.isDebugEnabled()) {
			log.debug("<<reviewReplyCommand>> : "+reviewReplyCommand);
		}
		
		Map<String,String> map = new HashMap<String,String>();
		
		String user_id = (String)session.getAttribute("user_id");
		
		if(user_id==null) {//�α����� �� ��
			map.put("result", "logout");
		}else {
			//���̵� ���
			reviewReplyCommand.setRe_id(user_id);
			
			//ip ���
			reviewReplyCommand.setRere_ip(request.getRemoteAddr());
			
			//��� ���
			reviewService.insertReply(reviewReplyCommand);
			map.put("result", "success");
		}
		
		return map;
	}
	
	
	
	//==============================��� ���
	@RequestMapping("/review/listReply.do")
	@ResponseBody
	public Map<String,Object> getList(@RequestParam(value="pageNum",defaultValue="1")int currentPage, @RequestParam("re_num") int re_num){
		
		if(log.isDebugEnabled()) {
			log.debug("<<currentPage>> : "+currentPage);
			log.debug("<<re_num>> : "+re_num);
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("re_num", re_num);
		
		//�� ���� ����
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
	
	
	//==============================��� ����
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
			//�α����� �Ǿ����� ����
			map.put("result", "logout");
		}else if(user_id!=null && user_id.equals(id)) {
			//�α��� �Ǿ��ְ�, �α����� ���̵�� �ۼ��� ���̵� ��ġ��
			reviewService.deleteReply(rere_num);
			map.put("result", "success");
		}else {
			map.put("result", "wrongAccess");
		}

		return map;
	}
	
	
	//==============================��� ����
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
			//�α��� �ȵ�
			map.put("result", "logout");
		}
		if(!user_id.equals(reviewReplyCommand.getRe_id())){
			//�α��� ���̵�� �ۼ��� ���̵� ����ġ
			map.put("result", "wrongAccess");
		}
		if(user_id.equals(reviewReplyCommand.getRe_id())) {
			//��� �ۼ��� ���̵�� �α��� ���̵� ��ġ
			//ip ���
			reviewReplyCommand.setRere_ip(request.getRemoteAddr());

			//��� ����
			reviewService.updateReply(reviewReplyCommand);
			map.put("result", "success");
		}

		return map;
	}
	
}

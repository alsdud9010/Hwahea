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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.review.domain.ReviewCommand;
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
	
	
	//==============================´ñ±Û µî·Ï
	@RequestMapping("/review/writeReply.do")
	@ResponseBody
	public Map<String,String> writeReply(ReviewReplyCommand reviewReplyCommand, HttpSession session, HttpServletRequest request){
		
		if(log.isDebugEnabled()) {
			log.debug("<<reviewReplyCommand>> : "+reviewReplyCommand);
		}
		
		Map<String,String> map = new HashMap<String,String>();
		
		String user_id = (String)session.getAttribute("user_id");
		
		if(user_id==null) {//·Î±×ÀÎÀÌ ¾È µÊ
			map.put("result", "logout");
		}else {
			//ip µî·Ï
			reviewReplyCommand.setRere_ip(request.getRemoteAddr());
			
			//´ñ±Û µî·Ï
			reviewService.insertReply(reviewReplyCommand);
			map.put("result", "success");
		}
		
		return map;
	}
	
	
	
	//==============================´ñ±Û ¸ñ·Ï
	@RequestMapping("/review/listReply.do")
	@ResponseBody
	public Map<String,Object> getList(@RequestParam(value="pageNum",defaultValue="1")int currentPage, @RequestParam("num") int num){
		
		if(log.isDebugEnabled()) {
			log.debug("<<currentPage>> : "+currentPage);
			log.debug("<<num>> : "+num);
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("num", num);
		
		//ÃÑ ±ÛÀÇ °¹¼ö
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
	
}

package kr.spring.notice.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.spring.notice.service.NoticeService;

@Controller
public class NoticeController {

	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;

	@Resource
	private NoticeService noticeService;

	//========= 공지사항 메인 겸 목록
	@RequestMapping(value="/notice/noticeList.do", method=RequestMethod.GET)
	public String form() {

		return "noticeList";
	}

	//========= 공지사항 상세
	@RequestMapping("/notice/noticeView.do")
	public String process() {

		return "noticeView";
	}

	//========= 자주하는 질문
	@RequestMapping("/notice/frequent_question.do")
	public String process2() {
		
		return "frequentQuestion";
	}
	
	//========= 1:1문의
	@RequestMapping("/notice/my_question.do")
	public String process3() {
		
		return "myQuestion";
	}
}

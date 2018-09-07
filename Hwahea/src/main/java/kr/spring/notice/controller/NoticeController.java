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

	//========= �������� ���� �� ���
	@RequestMapping(value="/notice/noticeList.do", method=RequestMethod.GET)
	public String form() {

		return "noticeList";
	}

	//========= �������� ��
	@RequestMapping("/notice/noticeView.do")
	public String process() {

		return "noticeView";
	}

	//========= �����ϴ� ����
	@RequestMapping("/notice/frequent_question.do")
	public String process2() {
		
		return "frequentQuestion";
	}
	
	//========= 1:1����
	@RequestMapping("/notice/my_question.do")
	public String process3() {
		
		return "myQuestion";
	}
}

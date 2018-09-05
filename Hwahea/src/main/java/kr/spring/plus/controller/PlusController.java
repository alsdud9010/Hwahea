package kr.spring.plus.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.spring.event.service.EventService;
import kr.spring.plus.service.PlusService;

@Controller
public class PlusController {

	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;

	@Resource
	private PlusService plusService;

	//========= �÷��� ����
	@RequestMapping(value="/plus/plusMain.do", method=RequestMethod.GET)
	public String form() {

		return "plusMain";
	}

	//========= �Ż�&Ʈ����
	@RequestMapping("/plus/plusTrend.do")
	public String process() {

		return "plusTrend";
	}
	
}

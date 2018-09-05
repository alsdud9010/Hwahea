package kr.spring.event.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.spring.event.service.EventService;

@Controller
public class EventController {

	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;

	@Resource
	private EventService eventService;

	//========= 이벤트 메인 겸 목록
	@RequestMapping(value="/event/eventMain.do", method=RequestMethod.GET)
	public String form() {

		return "eventMain";
	}

	//========= 이벤트 상세
	@RequestMapping("/event/eventView.do")
	public String process() {

		return "eventView";
	}
}

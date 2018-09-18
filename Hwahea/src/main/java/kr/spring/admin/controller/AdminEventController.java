package kr.spring.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.admin.domain.AdminBrandCommand;
import kr.spring.admin.domain.AdminCategoryCommand;
import kr.spring.admin.domain.AdminCosmeticCommand;
import kr.spring.admin.domain.AdminEventCommand;
import kr.spring.admin.service.AdminService;

@Controller
public class AdminEventController {

	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;
	
	@Resource
	private AdminService adminEventService;
	
	@ModelAttribute("eventcommand")
	public AdminEventCommand initEvent() {
		return new AdminEventCommand();
	}
	
	//이벤트 등록 폼 호출
	@RequestMapping(value="/event/adminEventRegister.do",
					method=RequestMethod.GET)
	public String formEventRegister() {
		
		return "adminEventRegister";
	}
	
	//이벤트 등록 데이터 전송
	@RequestMapping(value="/event/adminEventRegister.do",
					method=RequestMethod.POST)
	public String submit(@ModelAttribute("eventcommand")
						AdminEventCommand eventCommand,
						BindingResult result) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<AdminEventCommand>> : " + eventCommand);
		}
		
		adminEventService.insertEvent(eventCommand);
		
		return "redirect:/event/adminEvent.do";
	}
	
	//이벤트 리스트
	@RequestMapping("/event/adminEvent.do")
	public ModelAndView processEvent() {
		
		List<AdminEventCommand> list = null;
		
		list = adminEventService.selectEventList();
		
		if(log.isDebugEnabled()) {
			log.debug("<<list>> : " + list);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminEvent");
		mav.addObject("list",list);
		
		return mav;	
	}
	
	//이벤트 이미지 출력
	@RequestMapping("/event/eventImageView.do")
	public ModelAndView viewImageEvent(@RequestParam("event_num") int event_num) {
		AdminEventCommand event = adminEventService.selectEvent(event_num);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("imageView");	//클래스호출
		//속성명			속성값(byte[]의 데이터)
		mav.addObject("imageFile",event.getEvent_image1());
		mav.addObject("filename",event.getEvent_filename1());

		return mav;
	}
	
}

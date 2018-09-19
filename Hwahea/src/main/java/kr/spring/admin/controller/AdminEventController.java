package kr.spring.admin.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.admin.domain.AdminEventCommand;
import kr.spring.admin.service.AdminEventService;

@Controller
public class AdminEventController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private AdminEventService adminEventService;
	
	@ModelAttribute("eventcommand")
	public AdminEventCommand initEvent() {
		return new AdminEventCommand();
	}
	
	//�̺�Ʈ ��� �� ȣ��
	@RequestMapping(value="/event/adminEventRegister.do",
					method=RequestMethod.GET)
	public String formEventRegister() {
		
		return "adminEventRegister";
	}
	
	//�̺�Ʈ ��� ������ ����
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
	
	//�̺�Ʈ ����Ʈ
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
	
	//�̺�Ʈ �̹��� ���
	@RequestMapping("/event/eventImageView.do")
	public ModelAndView viewImageEvent(@RequestParam("event_num") int event_num) {
		AdminEventCommand event = adminEventService.selectEvent(event_num);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("imageView");	//Ŭ����ȣ��
		//�Ӽ���			�Ӽ���(byte[]�� ������)
		mav.addObject("imageFile",event.getEvent_image1());
		mav.addObject("filename",event.getEvent_filename1());

		return mav;
	}
	
}

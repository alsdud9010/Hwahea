package kr.spring.admin.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.admin.domain.AdminNoticeCommand;
import kr.spring.admin.service.AdminNoticeService;

@Controller
public class AdminNoticeController {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private AdminNoticeService adminNoticeService;
	
	@ModelAttribute("commandnotice")
	public AdminNoticeCommand initNotice() {
		return new AdminNoticeCommand();
	}
	
	//공지사항 등록 폼
		@RequestMapping(value="/notice/adminNoticeRegister.do",
						method=RequestMethod.GET)
		public String formNoticeRegister() {
			
			return "adminNoticeRegister";
		}
		
		//공지사항 등록 데이터 전송
		@RequestMapping(value="/notice/adminNoticeRegister.do",
						method=RequestMethod.POST)
		public String submitNotice(@ModelAttribute("commandnotice")
							AdminNoticeCommand noticeCommand,
							BindingResult result) {
			
			if(log.isDebugEnabled()) {
				log.debug("<<AdminBrandCommand>> : " + noticeCommand );
			}
			
			
			adminNoticeService.insertNotice(noticeCommand);
			
			return "redirect:/notice/adminNotice.do";
		}
		

	
	//공지사항 리스트
	@RequestMapping("/notice/adminNotice.do")
	public ModelAndView processNotice() {
		
		List<AdminNoticeCommand> list = null;
		
		list = adminNoticeService.selectNoticeList();
		
		if(log.isDebugEnabled()) {
			log.debug("<<list>> : " + list);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminNotice");
		mav.addObject("list",list);
		
		return mav;
		
	}
	
}

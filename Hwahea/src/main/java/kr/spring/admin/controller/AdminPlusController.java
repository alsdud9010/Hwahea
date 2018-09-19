package kr.spring.admin.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.admin.domain.AdminPlusCommand;
import kr.spring.admin.service.AdminPlusService;

public class AdminPlusController {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	//화해 플러스
		@Resource
		private AdminPlusService adminPlusService;
		
		@ModelAttribute("pluscommand")
		public AdminPlusCommand initPlus() {
			return new AdminPlusCommand();
		}
		
	//화해 플러스 등록 폼	
		@RequestMapping(value="/plus/adminPlusRegister.do",
						method=RequestMethod.GET)
		public String formPlusRegister() {
			
			return "adminPlusRegister";
		}
			
	//화해 플러스 데이터 전송
		@RequestMapping(value="/plus/adminPlusRegister.do",
						method=RequestMethod.POST)
		public String submit(@ModelAttribute("pluscommand")
							AdminPlusCommand plusCommand,
							BindingResult result) {
			
			if(log.isDebugEnabled()) {
				log.debug("<<AdminPlusCommand : " + plusCommand);
			}
			
			adminPlusService.insertPlus(plusCommand);
			
			return "redirect:/plus/adminPlusList.do";
		}
		
	//화해 플러스 리스트
		@RequestMapping("/plus/adminPlusList.do")
		public ModelAndView processPlus() {
			
			List<AdminPlusCommand> list = null;
			
			list = adminPlusService.selectPlusList();
			
			if(log.isDebugEnabled()) {
				log.debug("<<list>> : " + list);
			}
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("adminPlusList");
			mav.addObject("list",list);
			
			return mav;
		}
}
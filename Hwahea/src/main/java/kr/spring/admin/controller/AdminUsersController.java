package kr.spring.admin.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.admin.domain.AdminProductCommand;
import kr.spring.admin.domain.AdminUsersCommand;
import kr.spring.admin.service.AdminUsersService;

@Controller
public class AdminUsersController {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private AdminUsersService adminUsersService;
	
	@ModelAttribute("commandusers")
	public AdminUsersCommand initUsers() {
		return new AdminUsersCommand();
	}
	
	//사용자
		@RequestMapping("/users/adminUserList.do")
		public ModelAndView processUsers() {
			
			List<AdminUsersCommand> list = null;
			
			list = adminUsersService.selectUsersList();
			
			if(log.isDebugEnabled()) {
				log.debug("<<list>> : " + list);
			}
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("adminUserList");
			mav.addObject("list",list);
			
			return mav;
			
		}
		
		//사용자 상세 정보
		@RequestMapping("/users/adminUserDetail.do")
		public ModelAndView processUsersDetail(@RequestParam("m_id") String m_id) {
			
			if(log.isDebugEnabled()) {
				log.debug("<<m_id>> : " + m_id);
			}
			
			AdminUsersCommand users = adminUsersService.selectUsers(m_id);
			
			return new ModelAndView("adminUserDetail","users",users);
		}
}

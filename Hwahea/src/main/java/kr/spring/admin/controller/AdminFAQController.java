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

import kr.spring.admin.domain.AdminFAQCommand;
import kr.spring.admin.service.AdminFAQService;
import kr.spring.util.PagingUtil;

@Controller
public class AdminFAQController {
	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;
	
	@Resource
	private AdminFAQService adminFAQService;
	
	@ModelAttribute("commandfaq")
	public AdminFAQCommand initFAQ() {
		return new AdminFAQCommand();
	}
	
	//FAQ 등록 폼
	@RequestMapping(value="/notice/adminFAQRegister.do",
					method=RequestMethod.GET)
	public String formFAQRegister() {
		
		return "adminFAQRegister";
	}
	
	//FAQ 등록 데이터 전송
	@RequestMapping(value="/notice/adminFAQRegister.do",
					method=RequestMethod.POST)
	public String submitFAQ(@ModelAttribute("commandfaq")
						AdminFAQCommand faqCommand,
						BindingResult result) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<AdminBrandCommand>> : " + faqCommand );
		}
		
		//FAQ등록
		adminFAQService.insertFAQ(faqCommand);
		
		return "redirect:/notice/adminFAQ.do";
	}
	
	//FAQ 글 목록
	@RequestMapping("/notice/adminFAQ.do")
	public ModelAndView processFAQ(@RequestParam(value="pageNum", defaultValue="1") int currentPage,
			@RequestParam(value="keyfield", defaultValue="") String keyfield,
			@RequestParam(value="keyword", defaultValue="") String keyword) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("keyfield", keyfield);
		map.put("keyword", keyword);
		
		int count = adminFAQService.selectFAQRowCount(map);
		
		if(log.isDebugEnabled()) {
			log.debug("<<count>> : " + count);
		}
		
		PagingUtil page = new PagingUtil(keyfield,keyword,currentPage,count,rowCount,pageCount,"list.do");
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<AdminFAQCommand> list = null;
		
		if(count>0) {
			list = adminFAQService.selectFAQList(map);
			
			if(log.isDebugEnabled()) {
				log.debug("<<list>> : " + list);
			}
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminFAQ");
		mav.addObject("count",count);
		mav.addObject("list",list);
		mav.addObject("pagingHtml",page.getPagingHtml());
		
		return mav;
	}
	
	//FAQ삭제
		@RequestMapping("/notice/adminFAQDelete")
		public String submitFAQ(@RequestParam("faq_num") Integer faq_num) {
			
			if(log.isDebugEnabled()) {
				log.debug("<<faq_num>> : " + faq_num);
			}
			
			//쇼핑 상품 삭제
			adminFAQService.deleteFAQ(faq_num);
			
			return "redirect:/notice/adminFAQ.do";
		}
}

package kr.spring.notice.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.notice.domain.FaqCommand;
import kr.spring.notice.domain.NoticeCommand;
import kr.spring.notice.domain.OnetooneCommand;
import kr.spring.notice.service.NoticeService;
import kr.spring.util.PagingUtil;
import kr.spring.util.StringUtil;

@Controller
public class NoticeController {

	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;

	@Resource
	private NoticeService noticeService;
	
	/*==================공지사항===================*/
	//공지사항 메인 겸 목록
	@RequestMapping("/notice/noticeList.do")
	public ModelAndView process(@RequestParam(value="pageNum",defaultValue="1") int currentPage, @RequestParam(value="keyfield",defaultValue="") String keyfield, @RequestParam(value="keyword",defaultValue="") String keyword) {
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("keyfield", keyfield);
		map.put("keyword", keyword);
		
		//총 글의 갯수 또는 검색된 글의 갯수
		int count = noticeService.selectRowCountNotice(map);
		
		if(log.isDebugEnabled()) {
			log.debug("<<count>> : " + count);
		}
		
		PagingUtil page= new PagingUtil(keyfield, keyword, currentPage, count, rowCount, pageCount,"noticeList.do");
		
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<NoticeCommand> list = null;
		if(count > 0) {
			list = noticeService.selectNoticeList(map);
			if(log.isDebugEnabled()) {
				log.debug("<<list>> : " + list);
			}
		
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("noticeList");
		mav.addObject("count",count);
		mav.addObject("list",list);
		mav.addObject("pagingHTML",page.getPagingHtml());
		
		return mav;
	}

	//공지사항 상세글보기
	@RequestMapping("/notice/noticeView.do")
	public ModelAndView process(@RequestParam("num") int notice_num){
		if(log.isDebugEnabled()) {
			log.debug("<<notice_num>> : " + notice_num);
		}
		
		NoticeCommand notice = noticeService.selectNoticeDetail(notice_num);
		
		return new ModelAndView("noticeView","notice",notice);
	}
	
	
	/*=====================FAQ====================*/
	//FAQ 목록
	@RequestMapping("/notice/frequent_question.do")
	public ModelAndView process2(@RequestParam(value="pageNum",defaultValue="1") int currentPage, @RequestParam(value="keyfield",defaultValue="") String keyfield, @RequestParam(value="keyword",defaultValue="") String keyword) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("keyfield", keyfield);
		map.put("keyword", keyword);
		
		//총 글의 갯수 또는 검색된 글의 갯수
		int count = noticeService.selectRowCountFaq(map);
		
		if(log.isDebugEnabled()) {
			log.debug("<<count>> : " + count);
		}
		
		PagingUtil page= new PagingUtil(keyfield, keyword, currentPage, count, rowCount, pageCount,null);
		
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<FaqCommand> list = null;
		if(count > 0) {
			list = noticeService.selectFaqList(map);
			if(log.isDebugEnabled()) {
				log.debug("<<list>> : " + list);
			}
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("frequentQuestion");
		mav.addObject("count",count);
		mav.addObject("list",list);
		mav.addObject("pagingHTML",page.getPagingHtml());
		
		return mav;
	}
	
	
	/*==================1:1문의===================*/
	//1:1문의 목록
	@RequestMapping("/notice/my_question.do")
	public ModelAndView process3(@RequestParam(value="pageNum",defaultValue="1") int currentPage, @RequestParam(value="keyfield",defaultValue="") String keyfield, @RequestParam(value="keyword",defaultValue="") String keyword) {
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("keyfield", keyfield);
		map.put("keyword", keyword);
		
		//총 글의 갯수 또는 검색된 글의 갯수
		int count = noticeService.selectRowCountOnetoone(map);
		
		if(log.isDebugEnabled()) {
			log.debug("<<count>> : " + count);
		}
		
		PagingUtil page= new PagingUtil(keyfield, keyword, currentPage, count, rowCount, pageCount,"noticeList.do");
		
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<OnetooneCommand> list = null;
		if(count > 0) {
			list = noticeService.selectOnetooneList(map);
			if(log.isDebugEnabled()) {
				log.debug("<<list>> : " + list);
			}
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("myQuestion");
		mav.addObject("count",count);
		mav.addObject("list",list);
		mav.addObject("pagingHTML",page.getPagingHtml());
		
		return mav;
	}
	
	//1:1문의
	@RequestMapping("/notice/my_questionWrite.do")
	public String process4() {
		
		return "myQuestionWrite";
	}
}

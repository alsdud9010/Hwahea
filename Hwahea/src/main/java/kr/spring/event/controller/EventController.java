package kr.spring.event.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.event.domain.EventCommand;
import kr.spring.event.service.EventService;
import kr.spring.util.PagingUtil;

@Controller
public class EventController {

	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;

	@Resource
	private EventService eventService;

	//========= 이벤트 메인 겸 목록
	@RequestMapping("/event/eventMain.do")
	public ModelAndView process(@RequestParam(value="pageNum",defaultValue="1") int currentPage, @RequestParam(value="keyfield",defaultValue="") String keyfield, @RequestParam(value="keyword",defaultValue="") String keyword) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("keyfield",keyfield);
		map.put("keyword", keyword);
		
		//총 글의 갯수 또는 검색된 글의 갯수
		int count = eventService.selectRowCount(map);
		
		if(log.isDebugEnabled()) {
			log.debug("<<count>> : " + count);
		}
		
		PagingUtil page= new PagingUtil(keyfield, keyword, currentPage, count, rowCount, pageCount,"eventMain.do");
		
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<EventCommand> list = null;
		if(count > 0) {
			list = eventService.selectEventList(map);
			if(log.isDebugEnabled()) {
				log.debug("<<list>> : " + list);
			}
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("eventMain");
		mav.addObject("count",count);
		mav.addObject("list",list);
		mav.addObject("pagingHTML",page.getPagingHtml());
		
		return mav;
	}

	//========= 이벤트 상세
	@RequestMapping("/event/eventView.do")
	public ModelAndView process(@RequestParam("num") int event_num) {
		if(log.isDebugEnabled()) {
			log.debug("<<event_num>> : " + event_num);
		}
		
		EventCommand event = eventService.selectEventDetail(event_num);
		
		return new ModelAndView("eventView","event",event);
	}
}

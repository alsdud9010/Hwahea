package kr.spring.plus.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.plus.domain.PlusCommand;
import kr.spring.plus.service.PlusService;
import kr.spring.util.PagingUtil;

@Controller
public class PlusController {

	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;

	@Resource
	private PlusService plusService;

	//========= 플러스 메인 ============//
	//글 목록
	@RequestMapping("/plus/plusMain.do")
	public ModelAndView process(@RequestParam(value="pageNum",defaultValue="1") int currentPage, @RequestParam(value="keyfield",defaultValue="") String keyfield, @RequestParam(value="keyword",defaultValue="") String keyword) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("keyfield", keyfield);
		map.put("keyword", keyword);
		
		//총 글의 갯수 또는 검색된 글의 갯수
		int count = plusService.selectRowCount(map);
		
		if(log.isDebugEnabled()) {
			log.debug("<<count>> : " + count);
		}
		
		PagingUtil page = new PagingUtil(keyfield, keyword, currentPage, count, rowCount, pageCount, "plusMain.do");
		
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		
		List<PlusCommand> list = null;
		if(count > 0) {
			list = plusService.selectPlusList(map);
			if(log.isDebugEnabled()) {
				log.debug("<<list>> : " + list);
			}
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("plusMain");
		mav.addObject("count",count);
		mav.addObject("list", list);
		mav.addObject("pagingHTML", page.getPagingHtml());
		
		return mav;
	}
	
	//글 상세
	@RequestMapping("/plus/plusDetailAjax.do")
	@ResponseBody
	public Map<String,Object> getDetail(@RequestParam("hp_num") int hp_num){
		if(log.isDebugEnabled()) {
			log.debug("<<hp_num>> : " + hp_num);
		}
		
		List<PlusCommand> list = null;
		list = plusService.selectPlus(hp_num);
		
		Map<String,Object> mapJson = new HashMap<String,Object>();
		mapJson.put("list", list);
	
		return mapJson;
		
	}
	
	//========= 신상&트렌드
	@RequestMapping("/plus/plusTrend.do")
	public String process2() {

		return "plusTrend";
	}
	
}

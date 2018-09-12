package kr.spring.dictionary.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.dictionary.domain.DictionaryCommand;
import kr.spring.dictionary.service.DictionaryService;
 
public class DictionaryTabAjaxController {
	private Logger log = Logger.getLogger(this.getClass());	
	
	@Resource
	private DictionaryService dictionaryService;
	
	/*//20가지 주의 성분
	@RequestMapping("/dictionary/dictionary.do")
	@ResponseBody //json문자열 생성
	public Map<String, Object> getWarningList(){
		
		List<DictionaryCommand> list = null;
		list = dictionaryService.selectWarnings(map);
		
		
		return null;
	}*/
}

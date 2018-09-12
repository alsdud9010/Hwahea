package kr.spring.dictionary.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.spring.dictionary.domain.DictionaryCommand;
import kr.spring.dictionary.service.DictionaryService;

@Controller
public class DictionaryController {
	private Logger log = Logger.getLogger(this.getClass());	
	
	@Resource
	private DictionaryService dictionaryService;
	
	//자비빈 초기화
	@ModelAttribute("command")
	public DictionaryCommand initCommand() {
		return new DictionaryCommand();
	}
	
	//=======성분사전 호출
	@RequestMapping("/dictionary/dictionary.do")
	public String dictionary() {
		
		return "dictionary";
	}
}

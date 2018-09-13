package kr.spring.dictionary.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.dictionary.domain.DictionaryCommand;
import kr.spring.dictionary.service.DictionaryService;

@Controller
public class DictionaryAjaxController {
	private Logger log = Logger.getLogger(this.getClass());	
	
	@Resource
	private DictionaryService dictionaryService;
	
	//20�������� ����
	@RequestMapping("/dictionary/dictionaryWarningAjax.do")
	@ResponseBody //json���ڿ� ����
	public Map<String, Object> getWarningList(){
		
		List<DictionaryCommand> list = null;
		list = dictionaryService.selectWarning();
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("list", list);
		
		return map;
	}
	
	//�˷����� ���Ǽ���
	@RequestMapping("/dictionary/dictionaryAllergieAjax.do")
	@ResponseBody //json���ڿ� ����
	public Map<String, Object> getAllergieList(){
		
		List<DictionaryCommand> list = null;
		list = dictionaryService.selectAllergie();
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("list", list);
		
		return map;
	}
}

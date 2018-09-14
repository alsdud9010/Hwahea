package kr.spring.dictionary.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.dictionary.domain.DictionaryCommand;
import kr.spring.dictionary.service.DictionaryService;

@Controller
public class DictionaryAjaxController {
	private Logger log = Logger.getLogger(this.getClass());	
	
	@Resource
	private DictionaryService dictionaryService;
	
	//20가지주의 성분
	@RequestMapping("/dictionary/dictionaryWarningAjax.do")
	@ResponseBody //json문자열 생성
	public Map<String, Object> getWarningList(){
		
		List<DictionaryCommand> list = null;
		list = dictionaryService.selectWarning();
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("list", list);
		
		return map;
	}
	
	//알레르기 주의성분
	@RequestMapping("/dictionary/dictionaryAllergieAjax.do")
	@ResponseBody //json문자열 생성
	public Map<String, Object> getAllergieList(){
		
		List<DictionaryCommand> list = null;
		list = dictionaryService.selectAllergie();
				
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("list", list);
		
		return map;
	}
	
	//스킨타입별 주의성분
	//지성피부
	@RequestMapping("/dictionary/dictionaryOillyAjax.do")
	@ResponseBody //json문자열 생성
	public Map<String, Object> selectOilly(@RequestParam("answer") String answer){
		
		List<DictionaryCommand> list = null;
		list = dictionaryService.selectOilly(answer);
		
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("list", list);
		
		return map;
	}
	//건성피부
	@RequestMapping("/dictionary/dictionaryDryAjax.do")
	@ResponseBody //json문자열 생성
	public Map<String, Object> selectDry(@RequestParam("answer") String answer){
		
		List<DictionaryCommand> list = null;
		list = dictionaryService.selectDry(answer);
		
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("list", list);
		
		return map;
	}
	//민감성 피부
	@RequestMapping("/dictionary/dictionarySensitiveAjax.do")
	@ResponseBody //json문자열 생성
	public Map<String, Object> selectSensitive(@RequestParam("answer") String answer){
		
		List<DictionaryCommand> list = null;
		list = dictionaryService.selectSensitive(answer);
		
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("list", list);
		
		return map;
	}
	
	//기능성 성분
	@RequestMapping("/dictionary/dictionaryFuncAjax.do")
	@ResponseBody //json문자열 생성
	public Map<String, Object> selectFunc(){
		
		List<DictionaryCommand> list = null;
		list = dictionaryService.selectFunc();
		
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("list", list);
		
		return map;
	}
}

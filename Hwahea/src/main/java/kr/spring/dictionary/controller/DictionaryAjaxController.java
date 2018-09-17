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
		@RequestMapping("/dictionary/dictionarySkinTypeAjax.do")
		@ResponseBody //json문자열 생성
		public Map<String, Object> selectSkinType(@RequestParam("answer") String answer,
												  @RequestParam("name") String name){
			
			List<DictionaryCommand> list = null;
			if(name.equals("oilly")) {
				list = dictionaryService.selectOilly(answer);
			}
			if(name.equals("dry")) {
				list = dictionaryService.selectDry(answer);
			}
			if(name.equals("sensitive")) {
				list = dictionaryService.selectSensitive(answer);
			}
			
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("list", list);
			
			return map;
		}
		
	//기능성 성분
	@RequestMapping("/dictionary/dictionaryFuncAjax.do")
	@ResponseBody //json문자열 생성
	public Map<String, Object> selectFunc(@RequestParam("answer") String func){
		
		if(log.isDebugEnabled()) {
			log.debug("<<func>> : "+func);
		}
		
		
		List<DictionaryCommand> list = null;
		list = dictionaryService.selectFunc(func);
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("list", list);
		
		return map;
	}	
}

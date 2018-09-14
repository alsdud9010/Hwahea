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
	
	//��ŲŸ�Ժ� ���Ǽ���
	//�����Ǻ�
	@RequestMapping("/dictionary/dictionaryOillyAjax.do")
	@ResponseBody //json���ڿ� ����
	public Map<String, Object> selectOilly(@RequestParam("answer") String answer){
		
		List<DictionaryCommand> list = null;
		list = dictionaryService.selectOilly(answer);
		
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("list", list);
		
		return map;
	}
	//�Ǽ��Ǻ�
	@RequestMapping("/dictionary/dictionaryDryAjax.do")
	@ResponseBody //json���ڿ� ����
	public Map<String, Object> selectDry(@RequestParam("answer") String answer){
		
		List<DictionaryCommand> list = null;
		list = dictionaryService.selectDry(answer);
		
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("list", list);
		
		return map;
	}
	//�ΰ��� �Ǻ�
	@RequestMapping("/dictionary/dictionarySensitiveAjax.do")
	@ResponseBody //json���ڿ� ����
	public Map<String, Object> selectSensitive(@RequestParam("answer") String answer){
		
		List<DictionaryCommand> list = null;
		list = dictionaryService.selectSensitive(answer);
		
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("list", list);
		
		return map;
	}
	
	//��ɼ� ����
	@RequestMapping("/dictionary/dictionaryFuncAjax.do")
	@ResponseBody //json���ڿ� ����
	public Map<String, Object> selectFunc(){
		
		List<DictionaryCommand> list = null;
		list = dictionaryService.selectFunc();
		
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("list", list);
		
		return map;
	}
}

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

import kr.spring.admin.domain.AdminIngredientCommand;
import kr.spring.admin.service.AdminIngredientService;
import kr.spring.util.PagingUtil;
@Controller
public class AdminIngredientController {
	
	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;
	
	
	@Resource
	private AdminIngredientService adminIngredientService;
	
	@ModelAttribute("ingredientcommand")
	public AdminIngredientCommand initIngredient() {
		return new AdminIngredientCommand();
	}
	
	//성분 등록 폼
	@RequestMapping(value="/ingredient/adminIngredientRegister.do",
					method=RequestMethod.GET)
	public String formingreRegister() {
		
		return "adminIngredientList";
	}
	
	//성분 등록 데이터 전송
	@RequestMapping(value="/ingredient/adminIngredientRegister.do",
					method=RequestMethod.POST)
	public String submit(@ModelAttribute("ingredientcommand")
						AdminIngredientCommand ingredientcommand,
						BindingResult result) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<AdminIngredientCommand>> : " + ingredientcommand);
		}
		
		//성분 등록
		adminIngredientService.insertIngredient(ingredientcommand);
		
		return "redirect:/ingredient/adminIngredientList.do";
	}
	
	@RequestMapping("/ingredient/adminIngredientList.do")
	public ModelAndView processIngre() {
		
		List<AdminIngredientCommand> list = null;
		
			list = adminIngredientService.selectIngreList();
			
			if(log.isDebugEnabled()) {
				log.debug("<<list>> : " + list);
			}
	
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminIngredientList");
		mav.addObject("list",list);
		
		return mav;
	}
}

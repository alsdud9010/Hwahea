package kr.spring.main.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.activation.CommandMap;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.member.domain.MemberCommand;
import kr.spring.member.service.MemberService;
import kr.spring.util.CipherTemplate;

@Controller
public class MainController {
	private Logger log = Logger.getLogger(this.getClass());
	@Resource
	private MemberService memberService;

	@Resource
	private CipherTemplate cipherAES;
	//자바빈 초기화
	@ModelAttribute("command")
	public MemberCommand initCommand() {
		return new MemberCommand();
	}

	@RequestMapping("/main/main.do")
	public String main() {
		return "main";
	}
	//====================회원로그아웃=================//
	@RequestMapping("/main/logout.do")
	public String processLogin(HttpSession session) {
		//로그아웃
		session.invalidate();
		
		return "redirect:/main/main.do";
	}
	//====================회원아이디 중복체크=================//
	//로그인 폼에 전송된 데이터 처리
	/*@RequestMapping("/signin/confirmId.do")
	@ResponseBody
	public Map<String,String> process(
			@RequestParam("m_id") String m_id){
		
		if(log.isDebugEnabled()) {
			log.debug("<<id>> : " + m_id);
		}
		
		Map<String,String> map = 
				new HashMap<String,String>();
		
		MemberCommand member = 
				memberService.selectMember(m_id);
		if(member!=null) {
			//아이디 중복
			map.put("result", "idDuplicated");
		}else {
			//아이디 미중복
			map.put("result", "idNotFound");
		}
		
		return map;
	}*/
	@RequestMapping("/signin/signup.do")
	@ResponseBody
	public Map<String, String> signin(@RequestParam("m_id") String m_id, @RequestParam("m_passwd") String m_passwd, 
			@Valid MemberCommand memberCommand, HttpSession session, BindingResult result){
		if(log.isDebugEnabled()) {
			log.debug("안댐^^" + m_id + m_passwd);
		}
		Map<String, String> map = new HashMap<String, String>();
		
		try {
			MemberCommand member = 
					memberService.selectMember(
							memberCommand.getM_id());
			if(log.isDebugEnabled()) {
				log.debug("<<member>> : " + member);
			}
			boolean check = false;
			if(log.isDebugEnabled()) {
				log.debug("<<비밀번호>> : " + cipherAES.encrypt(memberCommand.getM_passwd()));
			}
			if(member!=null) {
				//비밀번호 일치 여부 체크
				check = member.isCheckedPasswd(
						cipherAES.encrypt(memberCommand.getM_passwd()));
				
			}
			if(log.isDebugEnabled()) {
				log.debug("<<check>> : " + cipherAES.encrypt(memberCommand.getM_passwd()));
			}
			if(check) {
				//인증 성공, 로그인 처리
				session.setAttribute("user_id", member.getM_id());
				session.setAttribute("user_auth", member.getM_auth());

				if(log.isDebugEnabled()) {
					log.debug("<<인증 성공>>");
					log.debug("<<user_id>> : " + member.getM_id());
					log.debug("<<user_auth>> : " + member.getM_auth());
				}
			}else {
				//인증실패
				throw new Exception();
			}
		}catch(Exception e) {
			//인증 실패로 폼 호출
			result.reject("invalidIdOrPassword");
		}
		return map;
		
	}
	
	
	@RequestMapping(value= {"/main/signup.do"},
			method=RequestMethod.POST)
	public String submitLogin(@ModelAttribute("command")
	@Valid MemberCommand memberCommand,
	BindingResult result,
	HttpSession session) {

		if(log.isDebugEnabled()) {
			log.debug("<<memberCommand>> : " + memberCommand);
		}

		//id와 passwd 필드만 체크
		/*if(result.hasFieldErrors("m_id") || 
				result.hasFieldErrors("m_passwd")) {
			return "main";
		}*/

		//로그인 체크(id,비밀번호 일치 여부 체크)
		try {
			MemberCommand member = 
					memberService.selectMember(
							memberCommand.getM_id());
			if(log.isDebugEnabled()) {
				log.debug("<<member>> : " + member);
			}
			boolean check = false;
			if(log.isDebugEnabled()) {
				log.debug("<<비밀번호>> : " + cipherAES.encrypt(memberCommand.getM_passwd()));
			}
			if(member!=null) {
				//비밀번호 일치 여부 체크
				check = member.isCheckedPasswd(
						cipherAES.encrypt(memberCommand.getM_passwd()));
				
			}
			if(log.isDebugEnabled()) {
				log.debug("<<check>> : " + cipherAES.encrypt(memberCommand.getM_passwd()));
			}
			if(check) {
				//인증 성공, 로그인 처리
				session.setAttribute("user_id", member.getM_id());
				session.setAttribute("user_auth", member.getM_auth());

				if(log.isDebugEnabled()) {
					log.debug("<<인증 성공>>");
					log.debug("<<user_id>> : " + member.getM_id());
					log.debug("<<user_auth>> : " + member.getM_auth());
				}

				return "redirect:/main/main.do";
			}else {
				//인증실패
				throw new Exception();
			}
		}catch(Exception e) {
			//인증 실패로 폼 호출
			result.reject("invalidIdOrPassword");

			if(log.isDebugEnabled()) {
				log.debug("<<인증 실패>>");
			}
			return main();
		}
	}
}

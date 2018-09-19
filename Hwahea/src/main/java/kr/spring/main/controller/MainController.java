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
	//�ڹٺ� �ʱ�ȭ
	@ModelAttribute("command")
	public MemberCommand initCommand() {
		return new MemberCommand();
	}

	@RequestMapping("/main/main.do")
	public String main() {
		return "main";
	}
	//====================ȸ���α׾ƿ�=================//
	@RequestMapping("/main/logout.do")
	public String processLogin(HttpSession session) {
		//�α׾ƿ�
		session.invalidate();
		
		return "redirect:/main/main.do";
	}
	//====================ȸ�����̵� �ߺ�üũ=================//
	//�α��� ���� ���۵� ������ ó��
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
			//���̵� �ߺ�
			map.put("result", "idDuplicated");
		}else {
			//���̵� ���ߺ�
			map.put("result", "idNotFound");
		}
		
		return map;
	}*/
	@RequestMapping("/signin/signup.do")
	@ResponseBody
	public Map<String, String> signin(@RequestParam("m_id") String m_id, @RequestParam("m_passwd") String m_passwd, 
			@Valid MemberCommand memberCommand, HttpSession session, BindingResult result){
		if(log.isDebugEnabled()) {
			log.debug("�ȴ�^^" + m_id + m_passwd);
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
				log.debug("<<��й�ȣ>> : " + cipherAES.encrypt(memberCommand.getM_passwd()));
			}
			if(member!=null) {
				//��й�ȣ ��ġ ���� üũ
				check = member.isCheckedPasswd(
						cipherAES.encrypt(memberCommand.getM_passwd()));
				
			}
			if(log.isDebugEnabled()) {
				log.debug("<<check>> : " + cipherAES.encrypt(memberCommand.getM_passwd()));
			}
			if(check) {
				//���� ����, �α��� ó��
				session.setAttribute("user_id", member.getM_id());
				session.setAttribute("user_auth", member.getM_auth());

				if(log.isDebugEnabled()) {
					log.debug("<<���� ����>>");
					log.debug("<<user_id>> : " + member.getM_id());
					log.debug("<<user_auth>> : " + member.getM_auth());
				}
			}else {
				//��������
				throw new Exception();
			}
		}catch(Exception e) {
			//���� ���з� �� ȣ��
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

		//id�� passwd �ʵ常 üũ
		/*if(result.hasFieldErrors("m_id") || 
				result.hasFieldErrors("m_passwd")) {
			return "main";
		}*/

		//�α��� üũ(id,��й�ȣ ��ġ ���� üũ)
		try {
			MemberCommand member = 
					memberService.selectMember(
							memberCommand.getM_id());
			if(log.isDebugEnabled()) {
				log.debug("<<member>> : " + member);
			}
			boolean check = false;
			if(log.isDebugEnabled()) {
				log.debug("<<��й�ȣ>> : " + cipherAES.encrypt(memberCommand.getM_passwd()));
			}
			if(member!=null) {
				//��й�ȣ ��ġ ���� üũ
				check = member.isCheckedPasswd(
						cipherAES.encrypt(memberCommand.getM_passwd()));
				
			}
			if(log.isDebugEnabled()) {
				log.debug("<<check>> : " + cipherAES.encrypt(memberCommand.getM_passwd()));
			}
			if(check) {
				//���� ����, �α��� ó��
				session.setAttribute("user_id", member.getM_id());
				session.setAttribute("user_auth", member.getM_auth());

				if(log.isDebugEnabled()) {
					log.debug("<<���� ����>>");
					log.debug("<<user_id>> : " + member.getM_id());
					log.debug("<<user_auth>> : " + member.getM_auth());
				}

				return "redirect:/main/main.do";
			}else {
				//��������
				throw new Exception();
			}
		}catch(Exception e) {
			//���� ���з� �� ȣ��
			result.reject("invalidIdOrPassword");

			if(log.isDebugEnabled()) {
				log.debug("<<���� ����>>");
			}
			return main();
		}
	}
}

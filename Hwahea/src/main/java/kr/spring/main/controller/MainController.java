package kr.spring.main.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	//====================회원로그인=================//
	//로그인 폼에 전송된 데이터 처리
	@RequestMapping(value= {"/main/signup.do","/event/signup.do","/shop/signup.do","/plus/signup.do","/review/signup.do","/notice/signup.do","/dictionary/signup.do"},
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

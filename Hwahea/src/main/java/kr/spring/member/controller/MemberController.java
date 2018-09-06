package kr.spring.member.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.spring.member.domain.MemberCommand;
import kr.spring.member.service.MemberService;
import kr.spring.util.CipherTemplate;

@Controller
public class MemberController {
	private Logger log = Logger.getLogger(this.getClass());

	@Resource
	private MemberService memberService;
	
	@Resource
	private CipherTemplate cipherAES;
	
	//회원가입 폼 호출
	@RequestMapping(value="/signin/service_agree.do")
		public String service_agree() {
		return "service_agree";
	}
	//회원가입 폼 호출
	@RequestMapping(value="/signin/m_signin.do",
	        method=RequestMethod.GET)
		public String m_signin() {
		return "m_signin";
	}
	//회원수정 폼 호출
	@RequestMapping(value="/mypage/my_info.do",
	        method=RequestMethod.GET)
		public String my_info() {
		return "my_info";
	}
	//회원포인트  호출
	@RequestMapping(value="/mypage/my_point.do",
	        method=RequestMethod.GET)
		public String my_point() {
		return "my_point";
	}
	//내리뷰/스트랩(내리뷰)  호출
	@RequestMapping(value="/mypage/my_reviewmyreview.do",
	        method=RequestMethod.GET)
		public String my_reviewmyreview() {
		return "my_reviewmyreview";
	}
	//내리뷰/스트랩(스크랩)  호출
	@RequestMapping(value="/mypage/my_reviewscrap.do",
	        method=RequestMethod.GET)
		public String my_reviewscrap() {
		return "my_reviewscrap";
	}
	//내리뷰/스트랩(타유저리뷰)  호출
	@RequestMapping(value="/mypage/my_reviewreview.do",
	        method=RequestMethod.GET)
		public String my_reviewreview() {
		return "my_reviewreview";
	}
	//즐겨찾기(브랜드)  호출
	@RequestMapping(value="/mypage/my_favoritebrand.do",
	        method=RequestMethod.GET)
		public String my_favoritebrand() {
		return "my_favoritebrand";
	}
	//즐겨찾기(제품)  호출
	@RequestMapping(value="/mypage/my_favoriteproduct.do",
	        method=RequestMethod.GET)
		public String my_favoriteproduct() {
		return "my_favoriteproduct";
	}
	//즐겨찾기(유저)  호출
	@RequestMapping(value="/mypage/my_favoriteuser.do",
	        method=RequestMethod.GET)
		public String my_favoriteuser() {
		return "my_favoriteuser";
	}
	//즐겨찾기(성분)  호출
	@RequestMapping(value="/mypage/my_favoriteingredient.do",
	        method=RequestMethod.GET)
		public String my_favoriteingredient() {
		return "my_favoriteingredient";
	}
	//화해쇼핑(주문)  호출
	@RequestMapping(value="/mypage/my_cartorder.do",
	        method=RequestMethod.GET)
		public String my_cartorder() {
		return "my_cartorder";
	}
	//화해쇼핑(찜)  호출
	@RequestMapping(value="/mypage/my_cartzzim.do",
	        method=RequestMethod.GET)
		public String my_cartzzim() {
		return "my_cartzzim";
	}
	//이벤트(참여)  호출
	@RequestMapping(value="/mypage/my_eventdoing.do",
	        method=RequestMethod.GET)
		public String my_eventdoing() {
		return "my_eventdoing";
	}
	//이벤트(참여)  호출
	@RequestMapping(value="/mypage/my_eventnotyet.do",
	        method=RequestMethod.GET)
		public String my_eventnotyet() {
		return "my_eventnotyet";
	}
	//문의하기  호출
	@RequestMapping(value="/mypage/my_QnA.do",
	        method=RequestMethod.GET)
		public String my_QnA() {
		return "my_QnA";
	}

	
	@ModelAttribute("command")
	public MemberCommand initCommand() {
		return new MemberCommand();
	}
	//회원 가입 데이터 전송
	@RequestMapping(value="/signin/m_signin.do",
	        method=RequestMethod.POST)
	public String submit(@ModelAttribute("command")
	                     MemberCommand memberCommand,
	                     BindingResult result) {
		
		
		if(log.isDebugEnabled()) {
			log.debug("<<memberCommand>> : " + memberCommand);
		}
		
		/*if(result.hasErrors()) {
			return m_signin();
		}*/
		//CipherTemplate을 이용한 암호화
		memberCommand.setM_passwd(
				cipherAES.encrypt(
						memberCommand.getM_passwd()));
		//회원가입
		memberService.insert(memberCommand);
		
		return "redirect:/main/main.do";
	}
	//====================회원로그인=================//
	//로그인 폼
	@RequestMapping(value="/member/login.do",
			        method=RequestMethod.GET)
	public String formLogin() {
		return "memberLogin";
	}
	//로그인 폼에 전송된 데이터 처리
	@RequestMapping(value="/member/login.do",
	        method=RequestMethod.POST)
	public String submitLogin(@ModelAttribute("command")
	                          @Valid MemberCommand memberCommand,
	                          BindingResult result,
	                          HttpSession session) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<memberCommand>> : " + memberCommand);
		}
		
		//id와 passwd 필드만 체크
		if(result.hasFieldErrors("id") || 
				result.hasFieldErrors("passwd")) {
			return formLogin();
		}
		
		//로그인 체크(id,비밀번호 일치 여부 체크)
		try {
			MemberCommand member = 
					memberService.selectMember(
							memberCommand.getM_id());
			boolean check = false;
			
			if(member!=null) {
				//비밀번호 일치 여부 체크
				check = member.isCheckedPasswd(
						cipherAES.encrypt(
								memberCommand.getM_passwd()));
			}
			if(check) {
				//인증 성공, 로그인 처리
				session.setAttribute("user_id", member.getM_id());
				session.setAttribute("user_auth", member.getAuth());
			
				if(log.isDebugEnabled()) {
					log.debug("<<인증 성공>>");
					log.debug("<<user_id>> : " + member.getM_id());
					log.debug("<<user_auth>> : " + member.getAuth());
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
			
			return formLogin();
		}
	}
	//====================회원로그아웃=================//
	/*@RequestMapping("/member/logout.do")
	public String processLogin(HttpSession session) {
		//로그아웃
		session.invalidate();
		
		return "redirect:/main/main.do";
	}*/
	//====================회원상세정보=================//
	/*@RequestMapping("/mypage/my_info.do")
	public String process(HttpSession session,
			              Model model) {
		
		String id = 
			(String)session.getAttribute("user_id");
		
		MemberCommand member = 
				memberService.selectMember(id);
		
		if(log.isDebugEnabled()) {
			log.debug("<<memberCommand>> : " + member);
		}
		
		model.addAttribute("member", member);
		
		return "my_info";
	}*/
	//====================회원상세수정=================//
	//수정폼
	/*@RequestMapping(value="/mypage/my_info.do",
	        method=RequestMethod.GET)
	public String formUpdate(HttpSession session,
			                 Model model) {
		String id = (String)session.getAttribute("user_id");
		
		MemberCommand member = 
				      memberService.selectMember(id);
		
		model.addAttribute("command", member);
		
		return "my_info";
	}
	//수정폼에 전송된 데이터 처리
	@RequestMapping(value="/member/update.do",
	        method=RequestMethod.POST)
	public String submitUpdate(@ModelAttribute("command") 
	                           @Valid MemberCommand memberCommand,
	                           BindingResult result) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<memberCommand>> : " + memberCommand);
		}
		
		if(result.hasErrors()) {
			return "my_info";
		}
		
		//CipherTemplate을 이용한 암호화
		memberCommand.setM_passwd(
						cipherAES.encrypt(
								memberCommand.getM_passwd()));
		//회원정보수정
		memberService.update(memberCommand);
		
		return "redirect:/mypage/my_info.do";
	}*/
	//====================회원삭제=================//
	//회원 삭제 폼
	/*@RequestMapping(value="/member/delete.do",
	        method=RequestMethod.GET)
	public String formDelete(HttpSession session,
			                 Model model) {
		String id = 
			(String)session.getAttribute("user_id");
		MemberCommand member = new MemberCommand();
		member.setM_id(id);
		
		model.addAttribute("command",member);
		
		return "memberDelete";
	}*/
	//회원 데이터 삭제
	/*@RequestMapping(value="/member/delete.do",
	        method=RequestMethod.POST)
	public String submitDelete(@ModelAttribute("command")
	                           @Valid MemberCommand memberCommand,
	                           BindingResult result,
	                           HttpSession session) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<memberCommand>> : " + memberCommand);
		}
		
		//passwd 필드의 에러만 체크
		if(result.hasFieldErrors("passwd")) {
			return "memberDelete";
		}
		
		//비밀번호 일치 여부 체크
		try {
			MemberCommand member = 
					memberService.selectMember(
							memberCommand.getM_id());
			boolean check = false;
			
			if(member!=null) {
				//비밀번호 일치 여부 체크
				check = member.isCheckedPasswd(
						cipherAES.encrypt(
								memberCommand.getM_passwd()));
			}
			if(check) {
				//인증성공, 회원정보 삭제
				memberService.delete(memberCommand.getM_id());
				//로그아웃
				session.invalidate();
				return "redirect:/main/main.do";
			}else {
				//인증 실패
				throw new Exception();
			}
		}catch(Exception e) {
			result.rejectValue("passwd", "invalidPassword");
			return "memberDelete";
		}*/
	}










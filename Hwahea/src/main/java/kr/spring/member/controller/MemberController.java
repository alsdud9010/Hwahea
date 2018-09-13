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
	//자바빈 초기화
	@ModelAttribute("command")
	public MemberCommand initCommand() {
		return new MemberCommand();
	}
	//약관동의 폼 호출
	@RequestMapping(value="/signin/service_agree.do")
		public String service_agree() {
		return "service_agree";
	}
	//회원등록 폼 호출
	@RequestMapping(value="/signin/m_signin.do",
			        method=RequestMethod.GET)
	public String m_signin() {
		return "m_signin";
	}
	//*******************************************************회원 가입 데이터 전송
	@RequestMapping(value="/signin/m_signin.do",
	        method=RequestMethod.POST)
	public String m_signin(@ModelAttribute("command")
						 MemberCommand memberCommand,
	                     @Valid BindingResult result)throws Exception {
		
		if(log.isDebugEnabled()) {
			log.debug("<<memberCommand>> : " + memberCommand);
		}
		
		if(result.hasErrors()) {
			return m_signin();
		}
		
		
		//CipherTemplate을 이용한 암호화
		memberCommand.setM_passwd(
				cipherAES.encrypt(
						memberCommand.getM_passwd()));
		//회원가입
		memberService.insert(memberCommand);
		
		return "redirect:/main/main.do";
	}
	//회원수정 폼 호출
	@RequestMapping(value="/mypage/my_info.do")
		public String my_info(String bc, HttpSession session,Model model) {
		
		String m_id = (String)session.getAttribute("user_id");
		MemberCommand member = memberService.selectMember(m_id);
		model.addAttribute("command",member);
		if(log.isDebugEnabled()) {
			log.debug("<<memberCommand>> : " + member);
		}
		//현재 메뉴바 처리
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		
		return "my_info";
	}
	//회원포인트  호출
	@RequestMapping(value="/mypage/my_point.do")
		public String my_point(String bc, HttpSession session, Model model) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		String id = 
			(String)session.getAttribute("user_id");
			
			MemberCommand member = 
					memberService.selectMember(id);
			
			if(log.isDebugEnabled()) {
				log.debug("<<memberCommand>> : " + member);
			}
			
			model.addAttribute("member", member);
			
		return "my_point";
	}
	//내리뷰/스트랩(내리뷰)  호출
	@RequestMapping(value="/mypage/my_reviewmyreview.do")
		public String my_reviewmyreview(String bc,HttpSession session, Model model) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		String m_id = (String)session.getAttribute("user_id");
		MemberCommand member = memberService.selectMember(m_id);
		if(log.isDebugEnabled()) {
			log.debug("<<memberCommand>> : " + member);
		}
		model.addAttribute("member", member);
		
		return "my_reviewmyreview";
	}
	//내리뷰/스트랩(스크랩)  호출
	@RequestMapping(value="/mypage/my_reviewscrap.do",
	        method=RequestMethod.GET)
		public String my_reviewscrap(String bc) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_reviewscrap";
	}
	//내리뷰/스트랩(타유저리뷰)  호출
	@RequestMapping(value="/mypage/my_reviewreview.do",
	        method=RequestMethod.GET)
		public String my_reviewreview(String bc) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_reviewreview";
	}
	//즐겨찾기(브랜드)  호출
	@RequestMapping(value="/mypage/my_favoritebrand.do",
	        method=RequestMethod.GET)
		public String my_favoritebrand(String bc) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_favoritebrand";
	}
	//즐겨찾기(제품)  호출
	@RequestMapping(value="/mypage/my_favoriteproduct.do",
	        method=RequestMethod.GET)
		public String my_favoriteproduct(String bc) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_favoriteproduct";
	}
	//즐겨찾기(유저)  호출
	@RequestMapping(value="/mypage/my_favoriteuser.do",
	        method=RequestMethod.GET)
		public String my_favoriteuser(String bc) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_favoriteuser";
	}
	//즐겨찾기(성분)  호출
	@RequestMapping(value="/mypage/my_favoriteingredient.do",
	        method=RequestMethod.GET)
		public String my_favoriteingredient(String bc) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_favoriteingredient";
	}
	//화해쇼핑(주문)  호출
	@RequestMapping(value="/mypage/my_cartorder.do")
		
		public String my_cartorder(String bc, HttpSession session, Model model) {
		
		String m_id = (String)session.getAttribute("user_id");
		MemberCommand member = memberService.selectCart(m_id);
		if(log.isDebugEnabled()) {
			log.debug("<<memberCommand>> : " + member);
		}
		model.addAttribute("member", member);
		
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_cartorder";
	}
	//화해쇼핑(찜)  호출
	@RequestMapping(value="/mypage/my_cartzzim.do",
	        method=RequestMethod.GET)
		public String my_cartzzim(String bc) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_cartzzim";
	}
	//이벤트(참여)  호출
	@RequestMapping(value="/mypage/my_eventdoing.do",
	        method=RequestMethod.GET)
		public String my_eventdoing(String bc) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_eventdoing";
	}
	//이벤트(참여)  호출
	@RequestMapping(value="/mypage/my_eventnotyet.do",
	        method=RequestMethod.GET)
		public String my_eventnotyet(String bc) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_eventnotyet";
	}
	//문의하기  호출
	@RequestMapping(value="/mypage/my_QnA.do",
	        method=RequestMethod.GET)
		public String my_QnA(String bc) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_QnA";
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










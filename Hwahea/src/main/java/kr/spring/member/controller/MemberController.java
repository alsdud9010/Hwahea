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
	
	//ȸ������ �� ȣ��
	@RequestMapping(value="/signin/service_agree.do")
		public String service_agree() {
		return "service_agree";
	}
	//ȸ������ �� ȣ��
	@RequestMapping(value="/signin/m_signin.do",
	        method=RequestMethod.GET)
		public String m_signin() {
		return "m_signin";
	}
	//ȸ������ �� ȣ��
	@RequestMapping(value="/mypage/my_info.do",
	        method=RequestMethod.GET)
		public String my_info() {
		return "my_info";
	}
	//ȸ������Ʈ  ȣ��
	@RequestMapping(value="/mypage/my_point.do",
	        method=RequestMethod.GET)
		public String my_point() {
		return "my_point";
	}
	//������/��Ʈ��(������)  ȣ��
	@RequestMapping(value="/mypage/my_reviewmyreview.do",
	        method=RequestMethod.GET)
		public String my_reviewmyreview() {
		return "my_reviewmyreview";
	}
	//������/��Ʈ��(��ũ��)  ȣ��
	@RequestMapping(value="/mypage/my_reviewscrap.do",
	        method=RequestMethod.GET)
		public String my_reviewscrap() {
		return "my_reviewscrap";
	}
	//������/��Ʈ��(Ÿ��������)  ȣ��
	@RequestMapping(value="/mypage/my_reviewreview.do",
	        method=RequestMethod.GET)
		public String my_reviewreview() {
		return "my_reviewreview";
	}
	//���ã��(�귣��)  ȣ��
	@RequestMapping(value="/mypage/my_favoritebrand.do",
	        method=RequestMethod.GET)
		public String my_favoritebrand() {
		return "my_favoritebrand";
	}
	//���ã��(��ǰ)  ȣ��
	@RequestMapping(value="/mypage/my_favoriteproduct.do",
	        method=RequestMethod.GET)
		public String my_favoriteproduct() {
		return "my_favoriteproduct";
	}
	//���ã��(����)  ȣ��
	@RequestMapping(value="/mypage/my_favoriteuser.do",
	        method=RequestMethod.GET)
		public String my_favoriteuser() {
		return "my_favoriteuser";
	}
	//���ã��(����)  ȣ��
	@RequestMapping(value="/mypage/my_favoriteingredient.do",
	        method=RequestMethod.GET)
		public String my_favoriteingredient() {
		return "my_favoriteingredient";
	}
	//ȭ�ؼ���(�ֹ�)  ȣ��
	@RequestMapping(value="/mypage/my_cartorder.do",
	        method=RequestMethod.GET)
		public String my_cartorder() {
		return "my_cartorder";
	}
	//ȭ�ؼ���(��)  ȣ��
	@RequestMapping(value="/mypage/my_cartzzim.do",
	        method=RequestMethod.GET)
		public String my_cartzzim() {
		return "my_cartzzim";
	}
	//�̺�Ʈ(����)  ȣ��
	@RequestMapping(value="/mypage/my_eventdoing.do",
	        method=RequestMethod.GET)
		public String my_eventdoing() {
		return "my_eventdoing";
	}
	//�̺�Ʈ(����)  ȣ��
	@RequestMapping(value="/mypage/my_eventnotyet.do",
	        method=RequestMethod.GET)
		public String my_eventnotyet() {
		return "my_eventnotyet";
	}
	//�����ϱ�  ȣ��
	@RequestMapping(value="/mypage/my_QnA.do",
	        method=RequestMethod.GET)
		public String my_QnA() {
		return "my_QnA";
	}

	
	@ModelAttribute("command")
	public MemberCommand initCommand() {
		return new MemberCommand();
	}
	//ȸ�� ���� ������ ����
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
		//CipherTemplate�� �̿��� ��ȣȭ
		memberCommand.setM_passwd(
				cipherAES.encrypt(
						memberCommand.getM_passwd()));
		//ȸ������
		memberService.insert(memberCommand);
		
		return "redirect:/main/main.do";
	}
	//====================ȸ���α���=================//
	//�α��� ��
	@RequestMapping(value="/member/login.do",
			        method=RequestMethod.GET)
	public String formLogin() {
		return "memberLogin";
	}
	//�α��� ���� ���۵� ������ ó��
	@RequestMapping(value="/member/login.do",
	        method=RequestMethod.POST)
	public String submitLogin(@ModelAttribute("command")
	                          @Valid MemberCommand memberCommand,
	                          BindingResult result,
	                          HttpSession session) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<memberCommand>> : " + memberCommand);
		}
		
		//id�� passwd �ʵ常 üũ
		if(result.hasFieldErrors("id") || 
				result.hasFieldErrors("passwd")) {
			return formLogin();
		}
		
		//�α��� üũ(id,��й�ȣ ��ġ ���� üũ)
		try {
			MemberCommand member = 
					memberService.selectMember(
							memberCommand.getM_id());
			boolean check = false;
			
			if(member!=null) {
				//��й�ȣ ��ġ ���� üũ
				check = member.isCheckedPasswd(
						cipherAES.encrypt(
								memberCommand.getM_passwd()));
			}
			if(check) {
				//���� ����, �α��� ó��
				session.setAttribute("user_id", member.getM_id());
				session.setAttribute("user_auth", member.getAuth());
			
				if(log.isDebugEnabled()) {
					log.debug("<<���� ����>>");
					log.debug("<<user_id>> : " + member.getM_id());
					log.debug("<<user_auth>> : " + member.getAuth());
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
			
			return formLogin();
		}
	}
	//====================ȸ���α׾ƿ�=================//
	/*@RequestMapping("/member/logout.do")
	public String processLogin(HttpSession session) {
		//�α׾ƿ�
		session.invalidate();
		
		return "redirect:/main/main.do";
	}*/
	//====================ȸ��������=================//
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
	//====================ȸ���󼼼���=================//
	//������
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
	//�������� ���۵� ������ ó��
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
		
		//CipherTemplate�� �̿��� ��ȣȭ
		memberCommand.setM_passwd(
						cipherAES.encrypt(
								memberCommand.getM_passwd()));
		//ȸ����������
		memberService.update(memberCommand);
		
		return "redirect:/mypage/my_info.do";
	}*/
	//====================ȸ������=================//
	//ȸ�� ���� ��
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
	//ȸ�� ������ ����
	/*@RequestMapping(value="/member/delete.do",
	        method=RequestMethod.POST)
	public String submitDelete(@ModelAttribute("command")
	                           @Valid MemberCommand memberCommand,
	                           BindingResult result,
	                           HttpSession session) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<memberCommand>> : " + memberCommand);
		}
		
		//passwd �ʵ��� ������ üũ
		if(result.hasFieldErrors("passwd")) {
			return "memberDelete";
		}
		
		//��й�ȣ ��ġ ���� üũ
		try {
			MemberCommand member = 
					memberService.selectMember(
							memberCommand.getM_id());
			boolean check = false;
			
			if(member!=null) {
				//��й�ȣ ��ġ ���� üũ
				check = member.isCheckedPasswd(
						cipherAES.encrypt(
								memberCommand.getM_passwd()));
			}
			if(check) {
				//��������, ȸ������ ����
				memberService.delete(memberCommand.getM_id());
				//�α׾ƿ�
				session.invalidate();
				return "redirect:/main/main.do";
			}else {
				//���� ����
				throw new Exception();
			}
		}catch(Exception e) {
			result.rejectValue("passwd", "invalidPassword");
			return "memberDelete";
		}*/
	}










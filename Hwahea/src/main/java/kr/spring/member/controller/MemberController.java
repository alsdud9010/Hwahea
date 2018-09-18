package kr.spring.member.controller;

import java.util.List;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.member.domain.MemberCommand;
import kr.spring.member.domain.ScrapCommand;
import kr.spring.member.service.MemberService;
import kr.spring.plus.domain.PlusCommand;
import kr.spring.review.domain.ReviewCommand;
import kr.spring.shop.domain.OrderCommand;
import kr.spring.util.CipherTemplate;

@Controller
public class MemberController {
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
	//������� �� ȣ��
	@RequestMapping(value="/signin/service_agree.do")
		public String service_agree() {
		return "service_agree";
	}
	//ȸ����� �� ȣ��
	@RequestMapping(value="/signin/m_signin.do",
			        method=RequestMethod.GET)
	public String m_signin() {
		return "m_signin";
	}
	//*******************************************************ȸ�� ���� ������ ����
	@RequestMapping(value="/signin/m_signin.do",
	           method=RequestMethod.POST)
	   public String m_signin(@ModelAttribute("command")
	                   MemberCommand memberCommand,
	                        @Valid BindingResult result) {
	      
	      if(log.isDebugEnabled()) {
	         log.debug("<<memberCommand>> : " + memberCommand);
	      }
	      
	      if(result.hasErrors()) {
	         return m_signin();
	      }
	      //CipherTemplate�� �̿��� ��ȣȭ
	      memberCommand.setM_passwd(
	            cipherAES.encrypt(
	                  memberCommand.getM_passwd()));
	      //ȸ������
	      memberService.insert(memberCommand);
	      
	      return "redirect:/main/main.do";
	   }
	//ȸ������ �� ȣ��
	@RequestMapping(value="/mypage/my_info.do")
		public String my_info(String bc, HttpSession session,Model model) {
		
		String m_id = (String)session.getAttribute("user_id");
		MemberCommand member = memberService.selectMember(m_id);
		model.addAttribute("command",member);
		if(log.isDebugEnabled()) {
			log.debug("<<memberCommand>> : " + member);
		}
		//���� �޴��� ó��
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		
		return "my_info";
	}
	//�������� ���۵� ������ ó��
		@RequestMapping(value="/mypage/my_info.do",
		        method=RequestMethod.POST)
		public String submitUpdate(@ModelAttribute("command") 
		                           @Valid MemberCommand memberCommand,
		                           BindingResult result) {
			
			if(log.isDebugEnabled()) {
				log.debug("<<memberCommand>> : " + memberCommand);
			}
			
			/*if(result.hasErrors()) {
				return "my_info";
			}*/
			
			//ȸ����������
			memberService.update(memberCommand);
			
			return "redirect:/mypage/my_info.do";
		}
		
		// �̹��� ���
		@RequestMapping("/mypage/imageView.do")
		public ModelAndView viewImage(@RequestParam("m_id") String m_id) {

			MemberCommand member = memberService.selectMember(m_id);

			ModelAndView mav = new ModelAndView();
			mav.setViewName("imageView");
			//				   �Ӽ���			�Ӽ���(byte[]�� ������)
			mav.addObject("imageFile",member.getM_profile());
			mav.addObject("filename",member.getM_filename());

			return mav;
		}
		
		
	
	
	//ȸ������Ʈ  ȣ��
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
	
	//������/��Ʈ��(������)  ȣ��
	@RequestMapping(value="/mypage/my_reviewmyreview.do")
		public String my_reviewmyreview(String bc,HttpSession session, Model model) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		String re_id = (String)session.getAttribute("user_id");
			ReviewCommand review = memberService.selectReview(re_id);
			
			if(log.isDebugEnabled()) {
				log.debug("<<��ó�� �� �̰��� �߻��� �����ּҼ�>>" + review);
			}
			
			model.addAttribute("review", review);
		
		return "my_reviewmyreview";
	}
	/*==============�̹������=======================*/
	@RequestMapping(value="/mypage/re_imageView.do")
	public ModelAndView viewImage(@RequestParam("re_id") String re_id, @RequestParam("cnt") int cnt) {

		ReviewCommand review = memberService.selectReview(re_id);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("imageView");
						//�Ӽ���	, �Ӽ���(byte[]�� ������)
		if(cnt == 1) {
			mav.addObject("imageFile",review.getRe_uploadbyte1());
			mav.addObject("filename",review.getRe_filename1());
		}else if(cnt == 2) {
			mav.addObject("imageFile",review.getRe_uploadbyte2());
			mav.addObject("filename",review.getRe_filename2());
		}else if(cnt == 3) {
			mav.addObject("imageFile",review.getRe_uploadbyte3());
			mav.addObject("filename",review.getRe_filename3());
		}
		return mav;
	}
	//������/��Ʈ��(��ũ��)  ȣ��
	@RequestMapping(value="/mypage/my_reviewscrap.do")
		public String my_reviewscrap(String bc,HttpSession session, Model model) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		String m_id = (String)session.getAttribute("user_id");
		PlusCommand scrap = memberService.selectScrapPlus(m_id);
		if(log.isDebugEnabled()) {
			log.debug("<<���� �Ƕ�>>" + scrap);
		}
		model.addAttribute("scrap", scrap);
		
		return "my_reviewscrap";
	}
	//������/��Ʈ��(Ÿ��������)  ȣ��
	@RequestMapping(value="/mypage/my_reviewreview.do",
	        method=RequestMethod.GET)
		public String my_reviewreview(String bc,HttpSession session) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		
		
		return "my_reviewreview";
	}
	//���ã��(�귣��)  ȣ��
	@RequestMapping(value="/mypage/my_favoritebrand.do",
	        method=RequestMethod.GET)
		public String my_favoritebrand(String bc) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_favoritebrand";
	}
	//���ã��(��ǰ)  ȣ��
	@RequestMapping(value="/mypage/my_favoriteproduct.do",
	        method=RequestMethod.GET)
		public String my_favoriteproduct(String bc) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_favoriteproduct";
	}
	//���ã��(����)  ȣ��
	@RequestMapping(value="/mypage/my_favoriteuser.do",
	        method=RequestMethod.GET)
		public String my_favoriteuser(String bc) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_favoriteuser";
	}
	//���ã��(����)  ȣ��
	@RequestMapping(value="/mypage/my_favoriteingredient.do",
	        method=RequestMethod.GET)
		public String my_favoriteingredient(String bc) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_favoriteingredient";
	}
	//ȭ�ؼ���(��ٱ���)  ȣ��
	@RequestMapping(value="/mypage/my_cart.do")
		public String my_cart(String bc) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_cart";
	}
	//ȭ�ؼ���(�ֹ�)  ȣ��
		@RequestMapping(value="/mypage/my_cartorder.do")
		public String process(@RequestParam("bc") String bc, HttpSession session,Model model) {
		
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		List<OrderCommand> list = null;
		
		list = memberService.selectCartOrder((String)session.getAttribute("user_id"));
		
		model.addAttribute("list", list);
		
		return "my_cartorder";
		
	}
	//ȭ�ؼ���(��)  ȣ��
	@RequestMapping(value="/mypage/my_cartzzim.do",
	        method=RequestMethod.GET)
		public String my_cartzzim(String bc) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_cartzzim";
	}
	//�̺�Ʈ(����)  ȣ��
	@RequestMapping(value="/mypage/my_eventdoing.do",
	        method=RequestMethod.GET)
		public String my_eventdoing(String bc) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_eventdoing";
	}
	//�̺�Ʈ(����)  ȣ��
	@RequestMapping(value="/mypage/my_eventnotyet.do",
	        method=RequestMethod.GET)
		public String my_eventnotyet(String bc) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_eventnotyet";
	}
	//�����ϱ�  ȣ��
	@RequestMapping(value="/mypage/my_QnA.do",
	        method=RequestMethod.GET)
		public String my_QnA(String bc) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		return "my_QnA"; 
	}
	//====================ȸ���α׾ƿ�=================//
	@RequestMapping("/template/logout.do")
	public String processLogin(HttpSession session) {
		//�α׾ƿ�
		session.invalidate();
		
		return "redirect:/main/main.do";
	}
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
	/*//������
	@RequestMapping(value="/mypage/my_info.do",
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
	@RequestMapping(value="/mypage/my_info.do",
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










package kr.spring.review.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.spring.review.domain.ReviewCommand;
import kr.spring.review.service.ReviewService;
import kr.spring.util.CipherTemplate;

@Controller
public class ReviewController {
	
	//�α�ó��
		private Logger log = Logger.getLogger(this.getClass());
		
		@Resource
		private ReviewService reviewService;
		
		@Resource
		private CipherTemplate ciperAES;
		
		//�ڹٺ� �ʱ�ȭ
		@ModelAttribute("reviewcommand")
		public ReviewCommand initCommand() {
			return new ReviewCommand();
		}
	
	//==============================��ǰ �󼼺��� 
	@RequestMapping("/review/productInfo.do")
	public String process(){
		
		return "productInfo";
	}
	
	//==============================���� �ۼ� ��
	@RequestMapping(value="/review/writeReview.do",method=RequestMethod.GET)
	public String form() {
		/*String id = (String)session.getAttribute("user_id");
		ReviewCommand command = new ReviewCommand();
		command.setRe_id(id);*/
		
		return "writeReview";
	}
	//==============================���� ������ ����
	@RequestMapping(value="/review/reviewSuccess.do",method=RequestMethod.POST)
	public String submit(@ModelAttribute("reviewcommand") @Valid ReviewCommand reviewCommand, BindingResult result, HttpServletRequest request) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<ReviewCommand>> : "+reviewCommand);
		}
		
		if(result.hasErrors()) {
			return form();
		}
		
		//ip ����
		reviewCommand.setRe_ip(request.getRemoteAddr());
		
		//���� �ۼ�
		reviewService.insert(reviewCommand);
		
		return "redirect:/review/productInfo.do";
	}
	
	
	
	
	//==============================���� ������û ��
	@RequestMapping("/review/editRequest.do")
	public String editForm() {
		
		return "editRequest";
	}
	
	//==============================���� �˾�
	@RequestMapping("/review/ingreSpec.do")
	public String ingreProcess() {
		
		return "/review/ingreSpec";
	}
	
	
}

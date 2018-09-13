package kr.spring.review.controller;

import java.util.HashMap;
import java.util.Map;

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

import kr.spring.review.domain.ReviewCommand;
import kr.spring.review.service.ReviewService;
import kr.spring.util.CipherTemplate;
import kr.spring.util.StringUtil;

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
	
	//==============================���� ��� ��� 
	
	
	
	
	
	//==============================���� 1�� �� ���� 
	@RequestMapping("/review/reviewDetail.do")
	public ModelAndView process(@RequestParam("re_num") int re_num) {

		if(log.isDebugEnabled()) {
			log.debug("<<re_num>> : "+re_num);
		}

		ReviewCommand review = reviewService.selectReview(re_num);
		review.setRe_good(StringUtil.useBrNoHtml(review.getRe_good()));
		review.setRe_bad(StringUtil.useBrNoHtml(review.getRe_bad()));
		review.setRe_tip(StringUtil.useBrNoHtml(review.getRe_tip()));

		return new ModelAndView("reviewView","review",review);
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
	public String submit(@ModelAttribute("reviewcommand") @Valid ReviewCommand reviewCommand, BindingResult result, HttpSession session, HttpServletRequest request) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<ReviewCommand>> : "+reviewCommand);
		}
		
		if(result.hasErrors()) {
			return "writeReview";
		}
		
		String user_id = (String)session.getAttribute("user_id");
		reviewCommand.setRe_id(user_id);
		
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
	
	//==============================���� ������û ������ ����
	@RequestMapping("/review/editSuccess.do")
	@ResponseBody
	public Map<String,String> writeEdit(ReviewCommand reviewCommand, HttpSession session, HttpServletRequest request){
		
		if(log.isDebugEnabled()) {
			log.debug("<<reviewReplyCommand>> : "+reviewCommand);
		}
		
		Map<String,String> map = new HashMap<String,String>();
		
		String user_id = (String)session.getAttribute("user_id");
		reviewCommand.setM_id(user_id);
		
		if(user_id==null) {//�α����� �� ��
			map.put("result", "logout");
		}else {	
			//������û ���
			reviewService.insertEdit(reviewCommand);
			map.put("result", "success");
		}
		
		return map;
	}
	
	//==============================���� �˾�
	@RequestMapping("/review/ingreSpec.do")
	public String ingreProcess() {
		
		return "/review/ingreSpec";
	}
	
	
}

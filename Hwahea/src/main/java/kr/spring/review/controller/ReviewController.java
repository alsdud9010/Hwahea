package kr.spring.review.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.cosmetic.domain.CosmeticCommand;
import kr.spring.cosmetic.service.CosmeticService;
import kr.spring.member.domain.MemberCommand;
import kr.spring.member.service.MemberService;
import kr.spring.review.domain.ReviewCommand;
import kr.spring.review.service.ReviewService;
import kr.spring.util.CipherTemplate;
import kr.spring.util.PagingUtil;

@Controller
public class ReviewController {
	
	//로그처리
	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;
		
	@Resource
	private ReviewService reviewService;
	@Resource
	private MemberService memberService;
	@Resource
	private CosmeticService cosmeticService;
		
	@Resource
	private CipherTemplate ciperAES;
		
	//자바빈 초기화
	@ModelAttribute("reviewcommand")
	public ReviewCommand initCommand() {
		return new ReviewCommand();
	}
	
	//==============================목록 출력하기
	@RequestMapping("/review/productInfo.do")
	public ModelAndView getList(@RequestParam("c_code") String c_code, @RequestParam(value="pageNum",defaultValue="1")int currentPage, @RequestParam(value="keyfield",defaultValue="") String keyfield, @RequestParam(value="keyword",defaultValue="") String keyword){
		
		if(log.isDebugEnabled()) {
			log.debug("<<currentPage>> : "+currentPage);
			log.debug("<<c_code>> : "+c_code);
		}
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		//총 리뷰의 갯수
		int count = reviewService.selectRowCount(map);
		
		PagingUtil page = new PagingUtil(currentPage, count, rowCount, pageCount, "productInfo.do");
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());
		map.put("c_code", c_code);
		
		List<ReviewCommand> list = null;
		List<MemberCommand> member = null;
		CosmeticCommand cosmetic = null;
		
		
		if(count > 0) {
			
			list = reviewService.selectList(map);
			
			member = memberService.memberDetailList(c_code);
			
			cosmetic = cosmeticService.cosmeticDetail(c_code);
			
			if(log.isDebugEnabled()) {
				log.debug("<<list>> : " + list);
				log.debug("<<member>> : " + member);
				log.debug("<<cosmetic>> : " + cosmetic);
			}
		}	
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("productInfo");
		mav.addObject("count",count);
		mav.addObject("list", list);
		mav.addObject("member",member);
		mav.addObject("cosmetic",cosmetic);
		mav.addObject("pagingHTML", page.getPagingHtml());
		
		return mav;
	}
	
	//=================================================================리뷰 이미지 출력
	@RequestMapping("/review/imageView.do")
	public ModelAndView viewImage(@RequestParam("re_num") int re_num, @RequestParam("cnt") int cnt) {

		ReviewCommand review = reviewService.selectReview2(re_num);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("imageView");
						//속성명	, 속성값(byte[]의 데이터)
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
	
	//=================================================================리뷰 이미지 출력
	@RequestMapping("/review/imageView2.do")
	public ModelAndView cosmeticImage(@RequestParam("c_code") String c_code) {

		CosmeticCommand cosmetic = cosmeticService.cosmeticDetail(c_code);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("imageView");
		mav.addObject("imageFile",cosmetic.getC_uploadbyte());
		mav.addObject("filename",cosmetic.getC_photoname());

		return mav;
	}
	
	//=================================================================프로필 이미지 출력
	@RequestMapping("/review/imageView3.do")
	public ModelAndView profileImage(@RequestParam("m_id") String m_id) {

		MemberCommand member = memberService.selectMember(m_id);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("imageView");
		mav.addObject("imageFile",member.getM_profile());
		mav.addObject("filename",member.getM_filename());

		return mav;
	}
	
	//==============================리뷰 1개 상세 보기 
	@RequestMapping("/review/oneReview.do")
	@ResponseBody
	public Map<String,Object> oneReview(@RequestParam("re_num") int re_num, @RequestParam("re_id") String re_id){
		
		if(log.isDebugEnabled()) {
			log.debug("<<re_num>> : "+re_num);
			log.debug("<<re_id>> : "+re_id);
		}
		
		
		List<ReviewCommand> list = null;
		List<MemberCommand> member = null;
		
		list = reviewService.selectReview(re_num);
		member = memberService.memberDetail(re_id);
		
		if(log.isDebugEnabled()) {
			log.debug("<<list>> : "+member);
		}
		
		Map<String,Object> mapJson = new HashMap<String,Object>();
		mapJson.put("list", list);
		mapJson.put("member", member);
		
		return mapJson;
	}
	
	//==============================리뷰 작성 폼
	@RequestMapping(value="/review/writeReview.do",method=RequestMethod.GET)
	public ModelAndView writeForm(@RequestParam("c_code") String c_code, Model model) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<c_code>> : "+c_code);
		}
		
		CosmeticCommand cosmetic = null;
		cosmetic = cosmeticService.cosmeticDetail(c_code);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("writeReview");
		mav.addObject("cosmetic",cosmetic);
		
		return mav;
	}
	
	
	//==============================리뷰 데이터 전송
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
		
		//ip 셋팅
		reviewCommand.setRe_ip(request.getRemoteAddr());
		
		//리뷰 작성
		reviewService.insert(reviewCommand);
		
		return "redirect:/main/main.do";
	}
	
	//=================================================================리뷰 삭제
	@RequestMapping("/review/delete.do")
	public String submit(@RequestParam("re_num")int re_num) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<re_num>> : "+re_num);
		}
		
		//리뷰 삭제
		reviewService.delete(re_num);
		
		return "redirect:/main/main.do";
	}
	
	//=================================================================리뷰 수정
	//수정 폼
	@RequestMapping(value="/review/update.do",method=RequestMethod.GET)
	public String form(@RequestParam("re_num") int re_num, Model model) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<re_num>> : "+re_num);
		}
		
		ReviewCommand reviewCommand = reviewService.selectReview2(re_num);
		
		model.addAttribute("review",reviewCommand);
		
		return "modifyReview";
	}
	//수정 폼에서 전송된 데이터 처리
	@RequestMapping(value="/review/update.do",method=RequestMethod.POST)
	public String updateSubmit(@RequestParam("re_num") int re_num, ReviewCommand reviewCommand, HttpSession session, HttpServletRequest request) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<re_num>> : "+re_num);
			log.debug("<<reviewCommand>> : "+reviewCommand);
		}
		
		reviewCommand.setRe_num(re_num);
		
		//ip셋팅
		reviewCommand.setRe_ip(request.getRemoteAddr());
		
		//글 수정
		reviewService.update(reviewCommand);
			
		return "redirect:/review/productInfo.do";
	}
	
	//==============================리뷰 신고하기
	@RequestMapping(value="/review/report.do",method=RequestMethod.POST)
	public String report(@RequestParam("re_num") int re_num, ReviewCommand reviewCommand, HttpSession session) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<re_num>> : "+re_num);
		}
		
		//신고 등록(리뷰 테이블)
		reviewService.addReport(re_num);
		
		//신고 등록(리포트 테이블)
		reviewCommand.setRe_num(re_num);
		String user_id = (String)session.getAttribute("user_id");
		reviewCommand.setRe_id(user_id);
		
		reviewService.addReportTable(reviewCommand);
		
		return "redirect:/main/main.do";
	}
	
	
	//==============================정보 수정요청 폼
	@RequestMapping(value="/review/editRequest.do",method=RequestMethod.GET)
	public ModelAndView editForm(@RequestParam("c_code") String c_code, Model model) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<c_code>> : "+c_code);
		}
		
		CosmeticCommand cosmetic = null;
		cosmetic = cosmeticService.cosmeticDetail(c_code);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("editRequest");
		mav.addObject("cosmetic",cosmetic);
		
		return mav;
	}
	
	//==============================정보 수정요청 데이터 전송
	@RequestMapping("/review/editSuccess.do")
	@ResponseBody
	public Map<String,String> writeEdit(ReviewCommand reviewCommand, HttpSession session, HttpServletRequest request){
		
		if(log.isDebugEnabled()) {
			log.debug("<<reviewReplyCommand>> : "+reviewCommand);
		}
		
		Map<String,String> map = new HashMap<String,String>();
		
		String user_id = (String)session.getAttribute("user_id");
		reviewCommand.setM_id(user_id);
		
		if(user_id==null) {//로그인이 안 됨
			map.put("result", "logout");
		}else {	
			//수정요청 등록
			reviewService.insertEdit(reviewCommand);
			map.put("result", "success");
		}
		
		return map;
	}
	
	//=============================리뷰 좋아요누르기
	@RequestMapping(value="/review/reviewLike.do",method=RequestMethod.GET)
	public String like(@RequestParam("re_num") int re_num) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<re_num>> : "+re_num);
		}
		
		//신고 등록(리뷰 테이블)
		reviewService.likeReview(re_num);
			
		return "redirect:/main/main.do";
	}
	
	
	
	
	//==============================성분 팝업
	@RequestMapping("/review/ingreSpec.do")
	public ModelAndView ingreProcess(@RequestParam("c_code") String c_code) {
		
		if(log.isDebugEnabled()) {
			log.debug("<<c_code>> : "+c_code);
		}
		
		CosmeticCommand cosmetic = cosmeticService.cosmeticDetail(c_code);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ingreSpec");
		mav.addObject("cosmetic",cosmetic);
		
		return mav;
	}
	
	
}

package kr.spring.bookmark.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.admin.domain.AdminBrandCommand;
import kr.spring.admin.domain.AdminIngredientCommand;
import kr.spring.bookmark.dao.BookmarkMapper;
import kr.spring.bookmark.domain.BookmarkCommand;
import kr.spring.bookmark.service.BookmarkService;
import kr.spring.cosmetic.domain.BrandCommand;
import kr.spring.member.domain.MemberCommand;
import kr.spring.member.service.MemberService;
import kr.spring.shop.domain.ProductCommand;
import kr.spring.util.CipherTemplate;
import kr.spring.util.PagingUtil;

@Controller
public class BookmarkController {

	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;

	@Resource
	private BookmarkService bookmarkService;

	@Resource
	private CipherTemplate cipherAES;

	//자바빈 초기화
	@ModelAttribute("command")
	public BookmarkCommand initCommand() {
		return new BookmarkCommand();
	}

	/*// 이미지 출력
	@RequestMapping("/mypage/imageViewProduct.do")
	public ModelAndView viewImageProduct(@RequestParam("p_num") int p_num) {	
		Map<String,Object> map = new HashMap<String,Object>();
		List<ProductCommand> list = bookmarkService.selectProductBm_List(map);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("imageView");	//클래스호출
		//속성명			속성값(byte[]의 데이터)
		mav.addObject("imageFile",((ProductCommand) list).getP_image());
		mav.addObject("filename",((ProductCommand) list).getP_photo());

		return mav;
	}*/


	//즐겨찾기등록
	@RequestMapping(value="/mypage/my_favoritewrite.do",
			method=RequestMethod.GET)
	public String my_favoritewrite(BookmarkCommand bookmark,HttpSession session) {

		//세션에서 user_id -> BookmarkCommand
		String m_id= (String)session.getAttribute("user_id");
		bookmark.setM_id(m_id);

		if(log.isDebugEnabled()) {
			//로그표시
			log.debug("<<BookmarkCommand>> : " + bookmark);
		}
		//service
		bookmarkService.insert(bookmark);
		return "redirect:/review/productInfo.do";
	}


	/*//즐겨찾기(브랜드)  호출
	@RequestMapping(value="/mypage/my_favoritebrand.do",
			method=RequestMethod.GET)
		public String my_favoritebrand(@RequestParam(value="pageNum",defaultValue="1") int currentPage,
				String bc,Model model) {
			if(bc == null || bc.equals("")) {
				return "redirect:/mypage/my_info.do?bc=0";
			}

			

			// 총 글의 갯수 또는 검색된 글의 갯수
			int count = bookmarkService.selectBrandBm_Count();

			if(log.isDebugEnabled()) {
				log.debug("<<count>> : " + count);
			}

			PagingUtil page = new PagingUtil(currentPage, count, rowCount, pageCount,"my_favoritebrand.do");
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("start", page.getStartCount());
			map.put("end", page.getEndCount());

			List<BrandCommand> list = null;
			if(count > 0) {
				list= bookmarkService.selectBrandBm_List(map);
			}
			if(log.isDebugEnabled()) {
				log.debug("<<list>> : " + list);
			}
			model.addAttribute("count",count);
			model.addAttribute("list",list);
			model.addAttribute("pagingHtml",page.getPagingHtml());

		return "my_favoritebrand";
	} */
	//즐겨찾기(제품)  호출
	@RequestMapping(value="/mypage/my_favoriteproduct.do",
			method=RequestMethod.GET)
	public String my_favoriteproduct(@RequestParam(value="pageNum",defaultValue="1") int currentPage,
			String bc,Model model) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}

		// 총 글의 갯수 또는 검색된 글의 갯수
		int count = bookmarkService.selectProductBm_Count();

		if(log.isDebugEnabled()) {
			log.debug("<<count>> : " + count);
		}

		PagingUtil page = new PagingUtil(currentPage, count, rowCount, pageCount,"my_favoriteproduct.do");
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());

		List<ProductCommand> list = null;
		if(count > 0) {
			list = bookmarkService.selectProductBm_List(map);
		}
		if(log.isDebugEnabled()) {
			log.debug("<<list>> : " + list);
		}
		model.addAttribute("count",count);
		model.addAttribute("list",list);
		model.addAttribute("pagingHtml",page.getPagingHtml());

		return "my_favoriteproduct";
	}


	//즐겨찾기(유저)  호출
	@RequestMapping(value="/mypage/my_favoriteuser.do",
			method=RequestMethod.GET)
	public String my_favoriteuser(@RequestParam(value="pageNum",defaultValue="1") int currentPage,
			String bc, Model model) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		
		

		// 총 글의 갯수 또는 검색된 글의 갯수
		int count = bookmarkService.selectMemberBm_Count();

		if(log.isDebugEnabled()) {
			log.debug("<<count>> : " + count);
		}

		PagingUtil page = new PagingUtil(currentPage, count, rowCount, pageCount,"my_favoriteuser.do");
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());

		List<MemberCommand> list = null;
		if(count > 0) {
			list = bookmarkService.selectMemberBm_List(map);
		}
		if(log.isDebugEnabled()) {
			log.debug("<<list>> : " + list);
		}
		model.addAttribute("count",count);
		model.addAttribute("list",list);
		model.addAttribute("pagingHtml",page.getPagingHtml());

		return "my_favoriteuser";
	}
	//즐겨찾기(성분)  호출
	@RequestMapping(value="/mypage/my_favoriteingredient.do",
			method=RequestMethod.GET)
	public String my_favoriteingredient(@RequestParam(value="pageNum",defaultValue="1") int currentPage,
			String bc,Model model) {
		if(bc == null || bc.equals("")) {
			return "redirect:/mypage/my_info.do?bc=0";
		}
		
		

		// 총 글의 갯수 또는 검색된 글의 갯수
		int count = bookmarkService.selectIngredientBm_Count();

		if(log.isDebugEnabled()) {
			log.debug("<<count>> : " + count);
		}

		PagingUtil page = new PagingUtil(currentPage, count, rowCount, pageCount,"my_favoriteingedient.do");
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());

		List<AdminIngredientCommand> list = null;
		if(count > 0) {
			list = bookmarkService.selectIngredientBm_List(map);
		}
		if(log.isDebugEnabled()) {
			log.debug("<<list>> : " + list);
		}
		model.addAttribute("count",count);
		model.addAttribute("list",list);
		model.addAttribute("pagingHtml",page.getPagingHtml());

		return "my_favoriteingredient";


	}
	
	
	
	
}
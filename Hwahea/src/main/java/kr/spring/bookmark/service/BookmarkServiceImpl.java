package kr.spring.bookmark.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.admin.domain.AdminBrandCommand;
import kr.spring.admin.domain.AdminIngredientCommand;
import kr.spring.bookmark.dao.BookmarkMapper;
import kr.spring.bookmark.domain.BookmarkCommand;
import kr.spring.cosmetic.domain.BrandCommand;
import kr.spring.member.domain.MemberCommand;
import kr.spring.shop.domain.ProductCommand;

@Service("bookmarkService")
public class BookmarkServiceImpl implements BookmarkService{
	
	@Resource
	private BookmarkMapper bookmarkMapper;
	
	
	@Override
	public void insert(BookmarkCommand bookmark) {
		bookmarkMapper.insert(bookmark);
	}
	
	/*@Override
	public List<BrandCommand> selectBrandBm_List(Map<String,Object> map){
		return bookmarkMapper.selectBrandBm_List(map);
	}
	@Override
	public int selectBrandBm_Count() {
		return bookmarkMapper.selectBrandBm_Count();
	}*/
	
	@Override
	public List<ProductCommand> selectProductBm_List(Map<String, Object> map){
		return bookmarkMapper.selectProductBm_List(map);
	}
	@Override
	public int selectProductBm_Count() {
		return bookmarkMapper.selectProductBm_Count();
	}
	
	@Override
	public List<MemberCommand> selectMemberBm_List(Map<String,Object> map){
		return bookmarkMapper.selectMamberBm_List(map);
	}
	@Override
	public int selectMemberBm_Count() {
		return bookmarkMapper.selectMamberBm_Count();
	}

	@Override
	public List<AdminIngredientCommand> selectIngredientBm_List(Map<String,Object> map){
		return bookmarkMapper.selectIngredientBm_List(map);
	}
	@Override
	public int selectIngredientBm_Count() {
		return bookmarkMapper.selectIngredientBm_Count();
	}


		
	
	
	
	
}

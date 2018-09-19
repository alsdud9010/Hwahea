package kr.spring.bookmark.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;


import kr.spring.admin.domain.AdminIngredientCommand;
import kr.spring.bookmark.domain.BookmarkCommand;
import kr.spring.cosmetic.domain.BrandCommand;
import kr.spring.member.domain.MemberCommand;
import kr.spring.shop.domain.ProductCommand;

public interface BookmarkMapper {
	
	@Insert("INSERT INTO bookmark (bookmark_num,bookmark_kind,bookmark_detail,m_id) VALUES (bookmark_seq.nextval,#{bookmark_kind},#{bookmark_detail},#{m_id})")
	public void insert(BookmarkCommand bookmarkCommand);
	
	public List<BookmarkCommand> selectbookmark_List(Map<String,Object> map);
	
	/*public List<BrandCommand> selectBrandBm_List(Map<String,Object> map);
	public int selectBrandBm_Count();*/
	
	public List<ProductCommand> selectProductBm_List(Map<String,Object> map);
	public int selectProductBm_Count();
	
	public List<MemberCommand> selectMamberBm_List(Map<String,Object> map);
	public int selectMamberBm_Count();
	
	public List<AdminIngredientCommand> selectIngredientBm_List(Map<String,Object> map);
	public int selectIngredientBm_Count();
	
	

}

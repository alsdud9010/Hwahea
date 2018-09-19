package kr.spring.bookmark.service;

import java.util.List;
import java.util.Map;


import kr.spring.admin.domain.AdminIngredientCommand;
import kr.spring.bookmark.domain.BookmarkCommand;
import kr.spring.cosmetic.domain.BrandCommand;
import kr.spring.member.domain.MemberCommand;
import kr.spring.shop.domain.ProductCommand;

public interface BookmarkService {	
	
	public void insert(BookmarkCommand bookmark);

	/*public List<BrandCommand> selectBrandBm_List(Map<String,Object> map);
	public int selectBrandBm_Count();*/

	public List<ProductCommand> selectProductBm_List(Map<String, Object> map);
	public int selectProductBm_Count();

	public List<MemberCommand> selectMemberBm_List(Map<String,Object> map);
	public int selectMemberBm_Count();

	public List<AdminIngredientCommand> selectIngredientBm_List(Map<String,Object> map);
	public int selectIngredientBm_Count();
	
	
}

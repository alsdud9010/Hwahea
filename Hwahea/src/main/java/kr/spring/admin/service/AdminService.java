package kr.spring.admin.service;

import java.util.List;
import java.util.Map;

import kr.spring.admin.domain.AdminBrandCommand;
import kr.spring.admin.domain.AdminCategoryCommand;
import kr.spring.admin.domain.AdminCosmeticCommand;
import kr.spring.admin.domain.AdminEventCommand;
import kr.spring.admin.domain.AdminIngredientCommand;
import kr.spring.admin.domain.AdminFAQCommand;
import kr.spring.admin.domain.AdminProductCommand;

public interface AdminService {
	//브랜드
	public List<AdminBrandCommand> selectBrandList(Map<String, Object> map);
	public int selectBrandRowCount(Map<String, Object> map);
	public void insertBrand(AdminBrandCommand brand);
	public AdminBrandCommand selectBrand(Integer brand_num);
	public void deleteBrand(Integer brand_num);
	
	//세부 카테고리
	public List<AdminCategoryCommand> selectCateDetailList(Map<String, Object> map);
	public int selectCateDetailRowCount(Map<String, Object> map);
	public void insertCateDetail(AdminCategoryCommand categoryDetail);
	
	//카테고리
		public List<AdminCategoryCommand> selectCateList(Map<String, Object> map);
		public int selectCateRowCount(Map<String, Object> map);
		public void insertCategory(AdminCategoryCommand category);
		public AdminCategoryCommand selectCategory(int category_num);
		public void deleteCategory(int category_num);
	
	//화장품
		public List<AdminCosmeticCommand> selectCosmeticList(Map<String, Object> map);
		public int selectCosmeticRowCount(Map<String, Object> map);
		public void insertCosmetic(AdminCosmeticCommand cosmetic);
		public AdminCosmeticCommand selectCosmetic(String c_code);
		public void deleteCosmetic(String c_code);
		public int selectCosmeticSeq();
		
	//이벤트
		public void insertEvent(AdminEventCommand event);
		public AdminEventCommand selectEvent(int event_num);
		public void deleteEvent(int event_num);
	
	//FAQ
		public List<AdminFAQCommand> selectFAQList(
				Map<String, Object> map);
		public int selectFAQRowCount(Map<String,Object> map);
		public void insertFAQ(AdminFAQCommand faq);
		public AdminFAQCommand selectFAQ(int faq_num);
		public void deleteFAQ(int faq_num);
	
	//성분
		public List<AdminIngredientCommand> selectIngreList(Map<String, Object> map);
		public int selectIngreRowCount(Map<String, Object> map);
		public void insertIngredient(AdminIngredientCommand ingredient);
		public AdminIngredientCommand selectIngredient(int i_num);
		public void deleteIngredient(int i_num);
	
	//쇼핑 상품
		public List<AdminProductCommand> selectProductList(Map<String, Object> map);
		public int selectProductRowCount(Map<String, Object> map);
		public void insertProduct(AdminProductCommand product);
		public AdminProductCommand selectProduct(Integer p_num);
		public void deleteProduct(Integer p_num);
}

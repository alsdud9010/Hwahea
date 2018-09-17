package kr.spring.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.spring.admin.domain.AdminBrandCommand;
import kr.spring.admin.domain.AdminCategoryCommand;
import kr.spring.admin.domain.AdminCosmeticCommand;
import kr.spring.admin.domain.AdminEventCommand;
import kr.spring.admin.domain.AdminIngredientCommand;
import kr.spring.admin.domain.AdminFAQCommand;
import kr.spring.admin.domain.AdminProductCommand;

public interface AdminMapper {
	
	//브랜드
	public List<AdminBrandCommand> selectBrandList();
	public int selectBrandRowCount(Map<String, Object> map);
	@Insert("INSERT INTO brand(brand_num, brand_name, brand_reg_date, brand_image, image_name) VALUES(brand_seq.nextval, #{brand_name}, sysdate, #{brand_image}, #{image_name})")
	public void insertBrand(AdminBrandCommand brand);
	@Select("SELECT * FROM brand WHERE brand_num=#{brand_num}")
	public AdminBrandCommand selectBrand(Integer brand_num);
	
	//세부 카테고리
	@Select("SELECT * FROM category_Detail")
	public List<AdminCategoryCommand> selectCateDetailList();
	public int selectCateDetailRowCount(Map<String, Object> map);
	@Insert("INSERT INTO category_detail(category_detail_num, category_detail_name, head_category, shopping_exist)"
			+ "VALUES(category_detail_seq.nextval, #{category_detail_name}, #{head_category}, #{shopping_exist})")
	public void insertCateDetail(AdminCategoryCommand categoryDetail);
	
	//카테고리
	public List<AdminCategoryCommand> selectCateList(Map<String, Object> map);
	public int selectCateRowCount(Map<String,Object> map);
	@Insert("INSERT INTO category(category_num, category_name, category_kind)"
			+ "VALUES(category_seq.nextval, #{category_name}, #{category_kind})")
	public void insertCategory(AdminCategoryCommand category);
	
	//화장품
	public List<AdminCosmeticCommand> selectCosmeticList(Map<String, Object> map);
	public int selectCosmeticRowCount(Map<String, Object> map);
	@Insert("INSERT INTO cosmetic(c_code, c_name, c_image, c_photo, c_capacity, c_price, c_ingre, c_rate, c_rank, c_shopping, sysdate)"
			+ "VALUES(#{c_code}, #{c_name}, #{c_image}, #{c_photo}, #{c_capacity}, #{c_price}, #{c_ingre}, #{c_rate}, #{c_rank}, #{c_shopping}, sysdate)")
	public void insert(AdminCosmeticCommand cosmetic);
	@Select("Select cosmetic_seq.nextval FROM dual")
	public int selectCosmeticSeq();
	@Select("SELECT * FROM cosmetic WHERE c_code=#{c_code}")
	public AdminCosmeticCommand selectCosmetic(String c_code);
	@Delete("DELETE FROM cosmetic WHERE c_code=#{c_code}")
	public void deleteCosmetic(String c_code);
	
	//이벤트
	@Insert("INSERT INTO event (event_num, event_name, event_status, event_upload1 , event_image1, event_upload2, event_image2, event_upload3, event_image3, event_upload4, event_image4, event_hit)"
			+ "VALUES(event_seq.nextval, #{event_name}, #{event_status}, #{event_upload1}, #{event_image1}, #{event_upload2}, #{event_image2}, #{event_upload3},#{event_image3}, #{event_upload4}, #{event_image4}, #{#{event_hit})")
	public void insertEvent(AdminEventCommand event);
	
	//FAQ
	public List<AdminFAQCommand> selectFAQList(Map<String,Object> map);
	public int selectFAQRowCount(Map<String,Object> map);
	@Insert("INSERT INTO FAQ(faq_num, faq_title, faq_content, faq_date) VALUES(FAQ_seq.nextval, #{faq_title}, #{faq_content}, sysdate)")
	public void insertFAQ(AdminFAQCommand faq);
	
	//성분
	public List<AdminIngredientCommand> selectIngreList(Map<String, Object> map);
	public int selectIngreRowCount(Map<String, Object> map);
	@Insert("INSERT INTO ingredient(i_num, i_KName, i_EName, i_prop, i_grade, i_datagrade, i_warning, i_oilly, i_dry, i_sensitive, i_func, i_allergie)"
			+ "VALUES(ingredient_seq.nextval, #{i_KName}, #{i_EName}, #{i_prop}, #{i_grade}, #{i_datagrade}, #{i_warning}, #{i_oilly}, #{i_dry}, #{i_sensitive}, #{i_func}, #{i_allergie})")
	public void insertIngredient(AdminIngredientCommand ingredient);
	
	//상품
	public List<AdminProductCommand> selectProductList(Map<String, Object> map);
	public int selectProductRowCount(Map<String,Object> map);
	@Insert("INSERT INTO product(p_num, p_name, p_price, p_capacity, p_brand, p_image, p_photo, p_reg_date, p_main_spec, p_expiry_date, p_how_to, p_manufacturer, p_made_in, p_main_ingredient, p_test_exist, p_attention, p_content, p_category, p_discount)"
			+ "VALUES(product_seq.nextval, #{p_name}, #{p_price}, #{p_capacity}, #{p_brand}, #{p_image}, #{p_photo}, sysdate, #{p_main_spec}, #{p_expiry_date}, #{p_how_to}, #{p_manufacturer}, #{p_made_in}, #{p_main_ingredient}, #{p_test_exist}, #{p_attention}, #{p_content}, #{p_category}, #{p_discount})")
	public void insertProduct(AdminProductCommand product);
	@Select("SELECT * FROM product WHERE p_num=#{p_num}")
	public AdminProductCommand selectProduct(Integer p_num);
	@Delete("DELETE FROM product WHERE p_num=#{p_num}")
	public void deleteProduct(Integer num);
}

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
	@Select("SELECT * FROM brand")
	public List<AdminBrandCommand> selectBrandList();
	@Insert("INSERT INTO brand(brand_num, brand_name, brand_reg_date, brand_image, image_name) VALUES(brand_seq.nextval, #{brand_name}, sysdate, #{brand_image}, #{image_name})")
	public void insertBrand(AdminBrandCommand brand);
	@Select("SELECT * FROM brand WHERE brand_num=#{brand_num}")
	public AdminBrandCommand selectBrand(Integer brand_num);
	@Delete("DELETE FROM brand WHERE brand_num=#{brand_num}")
	public void deleteBrand(Integer brand_num);
	
	//세부 카테고리
	@Select("SELECT * FROM category_Detail")
	public List<AdminCategoryCommand> selectCateDetailList();
	public int selectCateDetailRowCount(Map<String, Object> map);
	@Insert("INSERT INTO category_detail(category_detail_num, category_detail_name, head_category, shopping_exist)"
			+ "VALUES(category_detail_seq.nextval, #{category_detail_name}, #{head_category}, #{shopping_exist})")
	public void insertCateDetail(AdminCategoryCommand categoryDetail);
	
	//카테고리
	@Select("SELECT * FROM category, category_detail WHERE category_num = head_category")
	public List<AdminCategoryCommand> selectCateList();
	public int selectCateRowCount(Map<String,Object> map);
	@Insert("INSERT INTO category(category_num, category_name, category_kind)"
			+ "VALUES(category_seq.nextval, #{category_name}, #{category_kind})")
	public void insertCategory(AdminCategoryCommand category);
	
	//화장품
	@Select("SELECT * FROM cosmetic")
	public List<AdminCosmeticCommand> selectCosmeticList();
	@Insert("INSERT INTO cosmetic(c_code, c_name, c_image, c_photo, c_capacity, c_price, c_ingre, c_rate, c_rank, c_shopping, c_reg_date)"
			+ "VALUES(#{c_code}, #{c_name}, #{c_image}, #{c_photo}, #{c_capacity}, #{c_price}, #{c_ingre}, #{c_rate,jdbcType=VARCHAR}, #{c_rank}, #{c_shopping}, sysdate)")
	public void insertCosmetic(AdminCosmeticCommand cosmetic);
	@Select("Select cosmetic_seq.nextval FROM dual")
	public int selectCosmeticSeq();
	@Select("SELECT * FROM cosmetic WHERE c_code=#{c_code}")
	public AdminCosmeticCommand selectCosmetic(String c_code);
	@Delete("DELETE FROM cosmetic WHERE c_code=#{c_code}")
	public void deleteCosmetic(String c_code);
	
	//이벤트
	@Select("SELECT * FROM event")
	public List<AdminEventCommand> selectEventList();
	@Select("SELECT * FROM event WHERE event_num=#{event_num}")
	public AdminEventCommand selectEvent(int event_num);
	@Insert("INSERT INTO event (event_num, event_kind, event_name, event_status, event_start, event_end, event_image1, event_image2, event_image3, event_filename1, event_filename2, event_filename3, event_like)"
			+ "VALUES(event_seq.nextval, #{event_kind}, #{event_name}, #{event_status}, #{event_start}, #{event_end}, #{event_image1}, #{event_image2}, #{event_image3}, #{event_filename1}, #{event_filename2}, #{event_filename3}, #{event_like})")
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

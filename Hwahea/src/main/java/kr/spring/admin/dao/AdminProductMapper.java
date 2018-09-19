package kr.spring.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.spring.admin.domain.AdminProductCommand;

public interface AdminProductMapper {
	//ªÛ«∞
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

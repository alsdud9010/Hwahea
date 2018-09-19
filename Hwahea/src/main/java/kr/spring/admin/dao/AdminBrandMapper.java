package kr.spring.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.spring.admin.domain.AdminBrandCommand;

public interface AdminBrandMapper {
	//ºê·£µå
		@Select("SELECT * FROM brand")
		public List<AdminBrandCommand> selectBrandList();
		@Insert("INSERT INTO brand(brand_num, brand_name, brand_reg_date, brand_image, image_name) VALUES(brand_seq.nextval, #{brand_name}, sysdate, #{brand_image}, #{image_name})")
		public void insertBrand(AdminBrandCommand brand);
		@Select("SELECT * FROM brand WHERE brand_num=#{brand_num}")
		public AdminBrandCommand selectBrand(Integer brand_num);
		@Delete("DELETE FROM brand WHERE brand_num=#{brand_num}")
		public void deleteBrand(Integer brand_num);
}

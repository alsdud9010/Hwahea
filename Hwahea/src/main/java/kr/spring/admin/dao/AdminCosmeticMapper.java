package kr.spring.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.spring.admin.domain.AdminCosmeticCommand;

public interface AdminCosmeticMapper {
	//»≠¿Â«∞
		@Select("SELECT * FROM cosmetic")
		public List<AdminCosmeticCommand> selectCosmeticList();
		@Insert("INSERT INTO cosmetic(c_code, c_name, c_uploadbyte, c_photoname, c_capacity, c_price, c_ingre, c_rate, c_rank, c_shopping, c_brand_num, c_reg_date)"
				+ "VALUES(#{c_code}, #{c_name}, #{c_uploadbyte}, #{c_photoname}, #{c_capacity}, #{c_price}, #{c_ingre}, #{c_rate,jdbcType=VARCHAR}, #{c_rank}, #{c_shopping},#{c_brand_num}, sysdate)")
		public void insertCosmetic(AdminCosmeticCommand cosmetic);
		@Select("Select cosmetic_seq.nextval FROM dual")
		public int selectCosmeticSeq();
		@Select("SELECT * FROM cosmetic WHERE c_code=#{c_code}")
		public AdminCosmeticCommand selectCosmetic(String c_code);
		@Delete("DELETE FROM cosmetic WHERE c_code=#{c_code}")
		public void deleteCosmetic(String c_code);
}

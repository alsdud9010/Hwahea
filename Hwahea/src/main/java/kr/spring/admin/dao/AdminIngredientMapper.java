package kr.spring.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.spring.admin.domain.AdminIngredientCommand;

public interface AdminIngredientMapper {
	//����
		@Select("SELECT * FROM ingredient")
		public List<AdminIngredientCommand> selectIngreList();
		@Insert("INSERT INTO ingredient(i_num, i_KName, i_EName, i_prop, i_grade, i_datagrade, i_warning, i_oilly, i_dry, i_sensitive, i_func, i_allergie)"
				+ "VALUES(ingredient_seq.nextval, #{i_KName}, #{i_EName}, #{i_prop}, #{i_grade}, #{i_datagrade}, #{i_warning}, #{i_oilly}, #{i_dry}, #{i_sensitive}, #{i_func}, #{i_allergie})")
		public void insertIngredient(AdminIngredientCommand ingredient);
		
}

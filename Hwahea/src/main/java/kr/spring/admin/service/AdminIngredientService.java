package kr.spring.admin.service;

import java.util.List;
import java.util.Map;

import kr.spring.admin.domain.AdminIngredientCommand;

public interface AdminIngredientService {
	//����
	public List<AdminIngredientCommand> selectIngreList();
	public void insertIngredient(AdminIngredientCommand ingredient);
	public AdminIngredientCommand selectIngredient(int i_num);
	public void deleteIngredient(int i_num);
}

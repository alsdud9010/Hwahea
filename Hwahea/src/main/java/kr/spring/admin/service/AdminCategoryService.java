package kr.spring.admin.service;

import java.util.List;
import java.util.Map;

import kr.spring.admin.domain.AdminCategoryCommand;

public interface AdminCategoryService {
	//세부 카테고리
	public List<AdminCategoryCommand> selectCateDetailList();
	public int selectCateDetailRowCount(Map<String, Object> map);
	public void insertCateDetail(AdminCategoryCommand categoryDetail);
	public List<AdminCategoryCommand> selectC_DetailList(int category_num);
		
	//카테고리
	public List<AdminCategoryCommand> selectCategoryList();
	public List<AdminCategoryCommand> selectCateList();
	public void insertCategory(AdminCategoryCommand category);
	public AdminCategoryCommand selectCategory(int category_num);
	public void deleteCategory(int category_num);
}

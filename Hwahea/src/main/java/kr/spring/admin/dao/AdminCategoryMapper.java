package kr.spring.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.spring.admin.domain.AdminCategoryCommand;

public interface AdminCategoryMapper {
	//세부 카테고리
	@Select("SELECT * FROM category_Detail")
	public List<AdminCategoryCommand> selectCateDetailList();
	public int selectCateDetailRowCount(Map<String, Object> map);
	@Insert("INSERT INTO category_detail(category_detail_num, category_detail_name, head_category, shopping_exist)"
			+ "VALUES(category_detail_seq.nextval, #{category_detail_name}, #{head_category}, #{shopping_exist})")
	public void insertCateDetail(AdminCategoryCommand categoryDetail);
	@Select("SELECT distinct (d.CATEGORY_DETAIL_NUM),d.CATEGORY_DETAIL_NAME FROM category c LEFT JOIN category_detail d ON d.HEAD_CATEGORY=#{category_num} ORDER BY d.CATEGORY_DETAIL_NUM")
	public List<AdminCategoryCommand> selectC_DetailList(int category_num);
	
	//카테고리
	@Select("SELECT category_num,category_name FROM category")
	public List<AdminCategoryCommand> selectCategoryList();
	@Select("SELECT * FROM category, category_detail WHERE category_num = head_category")
	public List<AdminCategoryCommand> selectCateList();
	public int selectCateRowCount(Map<String,Object> map);
	@Insert("INSERT INTO category(category_num, category_name, category_kind)"
			+ "VALUES(category_seq.nextval, #{category_name}, #{category_kind})")
	public void insertCategory(AdminCategoryCommand category);
}

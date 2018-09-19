package kr.spring.admin.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.admin.dao.AdminCategoryMapper;
import kr.spring.admin.domain.AdminCategoryCommand;

@Service("adminCategoryService")
public class AdminCategoryServiceImpl implements AdminCategoryService{
	//����ī�װ�
		@Resource
		private AdminCategoryMapper adminCategoryMapper;
		
		@Override
		public void insertCateDetail(AdminCategoryCommand categoryDetail) {
			adminCategoryMapper.insertCateDetail(categoryDetail);
			
		}

		@Override
		public List<AdminCategoryCommand> selectCateDetailList() {
			
			return adminCategoryMapper.selectCateDetailList();
		}

		@Override
		public int selectCateDetailRowCount(Map<String, Object> map) {
			
			return adminCategoryMapper.selectCateDetailRowCount(map);
		}
		
		@Override
		public List<AdminCategoryCommand> selectC_DetailList(int category_num) {
			return adminCategoryMapper.selectC_DetailList(category_num);
		}
		
		//ī�װ�
		
		@Override
		public List<AdminCategoryCommand> selectCategoryList() {
			return adminCategoryMapper.selectCategoryList();
		}
		
		@Override
		public List<AdminCategoryCommand> selectCateList() {
		
			return adminCategoryMapper.selectCateList();
		}

		@Override
		public void insertCategory(AdminCategoryCommand category) {

			adminCategoryMapper.insertCategory(category);
			
		}

		@Override
		public AdminCategoryCommand selectCategory(int category_num) {
			
			return null;
		}

		@Override
		public void deleteCategory(int category_num) {
			// TODO Auto-generated method stub
			
		}
}

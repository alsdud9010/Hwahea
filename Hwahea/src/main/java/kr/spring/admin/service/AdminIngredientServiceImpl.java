package kr.spring.admin.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.admin.dao.AdminIngredientMapper;
import kr.spring.admin.domain.AdminIngredientCommand;

@Service("adminIngredientService")
public class AdminIngredientServiceImpl implements AdminIngredientService{
	//¼ººÐ
		@Resource
		private AdminIngredientMapper adminIngredientMapper;

		@Override
		public void insertIngredient(AdminIngredientCommand ingredient) {
			adminIngredientMapper.insertIngredient(ingredient);
			
		}

		@Override
		public AdminIngredientCommand selectIngredient(int i_num) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public void deleteIngredient(int i_num) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public List<AdminIngredientCommand> selectIngreList() {
			
			return adminIngredientMapper.selectIngreList();
		}
}

package kr.spring.admin.service;

import java.util.List;

import kr.spring.admin.dao.AdminMapper;
import kr.spring.admin.domain.AdminPlusCommand;

public class AdminPlusServiceImpl implements AdminPlusService{

	private AdminMapper adminPlusMapper;
	
	@Override
	public List<AdminPlusCommand> selectPlusList() {
		
		return null;
	}

	@Override
	public void insertPlus(AdminPlusCommand plus) {
		adminPlusMapper.insertPlus(plus);
		
	}

}

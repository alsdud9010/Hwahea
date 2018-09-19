package kr.spring.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.spring.admin.dao.AdminPlusMapper;
import kr.spring.admin.domain.AdminPlusCommand;

@Service("adminPlusService")
public class AdminPlusServiceImpl implements AdminPlusService{

	private AdminPlusMapper adminPlusMapper;
	
	@Override
	public List<AdminPlusCommand> selectPlusList() {
		
		return null;
	}

	@Override
	public void insertPlus(AdminPlusCommand plus) {
		adminPlusMapper.insertPlus(plus);
		
	}

}

package kr.spring.admin.service;

import java.util.List;

import kr.spring.admin.domain.AdminPlusCommand;

public interface AdminPlusService {
	
	public List<AdminPlusCommand> selectPlusList();
	public void insertPlus(AdminPlusCommand plus);
}

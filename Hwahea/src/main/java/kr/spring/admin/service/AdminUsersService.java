package kr.spring.admin.service;

import java.util.List;

import kr.spring.admin.domain.AdminUsersCommand;

public interface AdminUsersService {
	public List<AdminUsersCommand> selectUsersList();
	public AdminUsersCommand selectUsers(String m_id);
}

package kr.spring.admin.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.admin.dao.AdminUsersMapper;
import kr.spring.admin.domain.AdminUsersCommand;

@Service("adminUsersService")
public class AdminUsersServiceImpl implements AdminUsersService {
	@Resource
	private AdminUsersMapper adminUsersMapper;
	
	@Override
	public List<AdminUsersCommand> selectUsersList() {
		
		return adminUsersMapper.selectUsersList();
	}

	@Override
	public AdminUsersCommand selectUsers(String m_id) {
		
		return adminUsersMapper.selectUsers(m_id);
	}

	
}

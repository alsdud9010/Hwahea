package kr.spring.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.spring.admin.domain.AdminUsersCommand;

public interface AdminUsersMapper {
	@Select("SELECT * FROM member_detail")
	public List<AdminUsersCommand> selectUsersList();
	@Select("SELECT * FROM member_detail WHERE m_id=#{m_id}")
	public AdminUsersCommand selectUsers(String m_id);
}

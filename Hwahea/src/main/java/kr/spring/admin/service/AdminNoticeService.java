package kr.spring.admin.service;

import java.util.List;

import kr.spring.admin.domain.AdminNoticeCommand;

public interface AdminNoticeService {
	public List<AdminNoticeCommand> selectNoticeList();
	public void insertNotice(AdminNoticeCommand notice);
}

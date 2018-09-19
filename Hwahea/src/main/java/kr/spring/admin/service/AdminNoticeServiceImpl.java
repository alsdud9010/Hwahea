package kr.spring.admin.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.admin.dao.AdminNoticeMapper;
import kr.spring.admin.domain.AdminNoticeCommand;

@Service("adminNoticeService")
public class AdminNoticeServiceImpl implements AdminNoticeService {
	
	@Resource
	private AdminNoticeMapper adminNoticeMapper;

	@Override
	public List<AdminNoticeCommand> selectNoticeList() {
		
		return adminNoticeMapper.selectNoticeList();
	}

	@Override
	public void insertNotice(AdminNoticeCommand notice) {
		adminNoticeMapper.insertNotice(notice);
		
	}
}

package kr.spring.notice.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.notice.dao.NoticeMapper;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{
	
	@Resource
	private NoticeMapper noticeMapper;
}

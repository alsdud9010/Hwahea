package kr.spring.admin.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.admin.dao.AdminEventMapper;
import kr.spring.admin.domain.AdminEventCommand;

@Service("adminEventService")
public class AdminEventServiceImpl implements AdminEventService{
	//¿Ã∫•∆Æ
		@Resource
		private AdminEventMapper adminEventMapper;
		
		@Override
		public List<AdminEventCommand> selectEventList() {
			
			return adminEventMapper.selectEventList();
		}
		
		@Override
		public void insertEvent(AdminEventCommand event) {
			adminEventMapper.insertEvent(event);
			
		}

		@Override
		public AdminEventCommand selectEvent(int event_num) {
			
			return adminEventMapper.selectEvent(event_num);
		}

		@Override
		public void deleteEvent(int event_num) {
			// TODO Auto-generated method stub
			
		}
}

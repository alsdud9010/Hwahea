package kr.spring.admin.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.admin.dao.AdminFAQMapper;
import kr.spring.admin.domain.AdminFAQCommand;

@Service("adminFAQService")
public class AdminFAQServiceImpl implements AdminFAQService{
	//FAQ
		@Resource
		private AdminFAQMapper adminFAQMapper;
		
		@Override
		public void insertFAQ(AdminFAQCommand faq) {
			adminFAQMapper.insertFAQ(faq);
			
		}

		@Override
		public AdminFAQCommand selectFAQ(int faq_num) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public void deleteFAQ(int faq_num) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public List<AdminFAQCommand> selectFAQList(Map<String, Object> map) {
			
			return adminFAQMapper.selectFAQList(map);
		}

		@Override
		public int selectFAQRowCount(Map<String, Object> map) {
			
			return adminFAQMapper.selectFAQRowCount(map);
		}
}

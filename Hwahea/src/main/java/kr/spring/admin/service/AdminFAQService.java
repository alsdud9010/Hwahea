package kr.spring.admin.service;

import java.util.List;
import java.util.Map;

import kr.spring.admin.domain.AdminFAQCommand;

public interface AdminFAQService {
	//FAQ
	public List<AdminFAQCommand> selectFAQList(Map<String, Object> map);
	public int selectFAQRowCount(Map<String,Object> map);
	public void insertFAQ(AdminFAQCommand faq);
	public AdminFAQCommand selectFAQ(int faq_num);
	public void deleteFAQ(int faq_num);
}

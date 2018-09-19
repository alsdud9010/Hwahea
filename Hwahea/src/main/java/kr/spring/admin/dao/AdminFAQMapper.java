package kr.spring.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;

import kr.spring.admin.domain.AdminFAQCommand;

public interface AdminFAQMapper {
	//FAQ
		public List<AdminFAQCommand> selectFAQList(Map<String,Object> map);
		public int selectFAQRowCount(Map<String,Object> map);
		@Insert("INSERT INTO FAQ(faq_num, faq_title, faq_content, faq_date) VALUES(FAQ_seq.nextval, #{faq_title}, #{faq_content}, sysdate)")
		public void insertFAQ(AdminFAQCommand faq);
}

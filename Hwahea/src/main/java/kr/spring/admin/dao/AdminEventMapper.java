package kr.spring.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.spring.admin.domain.AdminEventCommand;

public interface AdminEventMapper {
	//¿Ã∫•∆Æ
		@Select("SELECT * FROM event")
		public List<AdminEventCommand> selectEventList();
		@Select("SELECT * FROM event WHERE event_num=#{event_num}")
		public AdminEventCommand selectEvent(int event_num);
		@Insert("INSERT INTO event (event_num, event_kind, event_name, event_status, event_start, event_end, event_image1, event_image2, event_image3, event_filename1, event_filename2, event_filename3, event_like)"
				+ "VALUES(event_seq.nextval, #{event_kind}, #{event_name}, #{event_status}, #{event_start}, #{event_end}, #{event_image1}, #{event_image2}, #{event_image3}, #{event_filename1}, #{event_filename2}, #{event_filename3}, #{event_like})")
		public void insertEvent(AdminEventCommand event);
}

package kr.spring.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.spring.admin.domain.AdminNoticeCommand;

public interface AdminNoticeMapper {
	@Select("SELECT * FROM notice")
	public List<AdminNoticeCommand> selectNoticeList();
	@Insert("insert into notice (notice_num, notice_kind, notice_title, notice_content, notice_reg_date, notice_image, notice_filename, notice_id)"
			+ "values(notice_seq.nextval, #{notice_kind}, #{notice_title}, #{notice_content}, sysdate, #{notice_image}, #{notice_filename}, #{notice_id})")
	public void insertNotice(AdminNoticeCommand notice);
}

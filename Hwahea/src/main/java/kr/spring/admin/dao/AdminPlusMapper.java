package kr.spring.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;

import kr.spring.admin.domain.AdminPlusCommand;

public interface AdminPlusMapper {
	//화해 플러스
		public List<AdminPlusCommand> selectPlusList();
		@Insert("INSERT INTO plus_board(hp_num, hp_kind, hp_title, hp_content, hp_hit, hp_like, hp_scrap, hp_reg_date, hp_uploadfile1, hp_uploadfile2, hp_uploadfile3, hp_uploadfile4, hp_filename1, hp_filename2, hp_filename3, hp_filename4, hp_ip)"
				+ "VALUES(plus_board_seq.nextval, #{hp_kind}, #{hp_title}, #{hp_content}, #{hp_hit}, #{hp_like}, #{hp_scrap}, sysdate, #{hp_uploadfile1}, #{hp_uploadfile2}, #{hp_uploadfile3}, #{hp_uploadfile4}, #{hp_filename1}, #{hp_filename2}, #{hp_filename3}, #{hp_filename4}, #{hp_id}")
		public void insertPlus(AdminPlusCommand plus);
}

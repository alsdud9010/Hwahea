package kr.spring.plus.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.spring.member.domain.MemberCommand;
import kr.spring.plus.domain.PlusCommand;
import kr.spring.plus.domain.PlusReplyCommand;

public interface PlusMapper {
	/*==================화해플러스=================*/
	
	//화해플러스 목록
	public List<PlusCommand> selectPlusMain(Map<String,Object> map);
	
	//화해플러스 세부 카테고리
	public List<PlusCommand> selectPlusList(Map<String,Object> map);
	
	//화해플러스 페이징
	public int selectRowCount (Map<String,Object> map);
	
	//화해플러스 등록
	@Insert("INSERT INTO plus_board (hp_num, hp_kind, hp_title, hp_content, hp_hit, hp_like, hp_scrap, hp_reg_date, hp_uploadfile1, hp_uploadfile2, hp_uploadfile3, hp_uploadfile4, hp_filename1, hp_filename2, hp_filename3, hp_filename4, hp_ip, m_id) VALUES"
			+ "(plus_board_seq.nextval, 0, 'test-plus', 'test입니다.', #{hp_hit}, #{hp_like}, #{hp_scrap}, SYSDATE, #{hp_uploadfile1}, #{hp_uploadfile2}, #{hp_uploadfile3}, #{hp_uploadfile4}, #{hp_filename1}, #{hp_filename2}, #{hp_filename3}, #{hp_filename4}, #{hp_ip}, 'test')")
	public void insertPlus(PlusCommand plus_board);
	
	//화해플러스 상세보기
	@Select("SELECT * FROM plus_board WHERE hp_num = #{hp_num}")
	public List<PlusCommand> selectPlus(Integer hp_num);
	
	//화해플러스 조회수 업데이트
	@Update("UPDATE plus_board SET hp_hit=hp_hit+1 WHERE hp_num=#{hp_num}")
	public void plusHit(Integer hp_num);
	
	//화해플러스 좋아요 업데이트
	@Update("UPDATE plus_board SET hp_like=hp_like+1 WHERE hp_num=#{hp_num}")
	public void plusLike(Integer hp_num);
	
	//화해플러스 스크랩 업데이트
	@Update("UPDATE plus_board SET hp_scrap=hp_scrap+1 WHERE hp_num=#{hp_num}")
	public void plusScrap(Integer hp_num);
	
	//화해플러스 수정
	public void updatePlus(PlusCommand plus_board);
	
	//화해플러스 삭제
	public void deletePlus(Integer hp_num);
	
	/*==================화해플러스 댓글=================*/
	//화해플러스 댓글 목록
	public List<PlusReplyCommand> selectPlusReply(Map<String,Object> map);
	
	//댓글 페이징
	@Select("SELECT COUNT(*) FROM plus_reply WHERE hp_num=#{hp_num}")
	public int selectRowCountReply(Map<String,Object> map);
	
	//화해플러스 댓글 등록
	@Insert("INSERT INTO plus_reply (hpre_num,hpre_content,hpre_date,hpre_ip,hpre_depth,hpre_parent,hp_num,hpre_id) VALUES (plus_board_reply_seq.nextval,#{hpre_content},SYSDATE,#{hpre_ip},#{hpre_depth},#{hpre_num},#{hp_num},#{hpre_id})") 
	public void insertReply(PlusReplyCommand plusReply);
	
	//화해플러스 댓글 수정
	public void updateReply(PlusReplyCommand plusReply);
	
	//화해플러스 댓글 삭제
	public void deleteReply(Integer hpre_num);
	
	
	//부모글 삭제시 댓글이 존재하면 부모글 삭제전 댓글 삭제
	public void deleteReplyByNum(Integer hp_num);
}

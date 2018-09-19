package kr.spring.review.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.spring.review.domain.ReviewCommand;
import kr.spring.review.domain.ReviewReplyCommand;

public interface ReviewMapper {
	//리뷰 리스트
	public List<ReviewCommand> selectList(Map<String,Object> map);
	
	//리뷰목록들 페이징하기 
	public int selectRowCount (Map<String,Object> map);
	
	//회원 정보 가져오기
	public List<ReviewCommand> selectMember(Map<String,Object> map);
	
	//리뷰 작성
	@Insert("INSERT INTO review (re_num, c_code, re_id, re_rate, re_good, re_bad, re_tip, re_uploadbyte1, re_uploadbyte2, re_uploadbyte3, re_filename1,re_filename2,re_filename3, re_ip, re_regdate) VALUES "
			+ "(review_seq.nextval, #{c_code}, #{re_id}, #{re_rate}, #{re_good}, #{re_bad}, #{re_tip}, #{re_uploadbyte1}, #{re_uploadbyte2}, #{re_uploadbyte3}, #{re_filename1}, #{re_filename2}, #{re_filename3}, #{re_ip}, SYSDATE)")
	public void insert(ReviewCommand review);
	
	//리뷰 상세보기(리스트)
	@Select("SELECT * FROM review WHERE re_num=#{re_num}")
	public List<ReviewCommand> selectReview(Integer re_num);
	
	//리뷰 상세보기
	@Select("SELECT * FROM review WHERE re_num=#{re_num}")
	/*@Select("SELECT r.*, p.c_uploadbyte, p.c_photoname FROM cosmetic p INNER JOIN (SELECT * FROM review WHERE re_num=#{re_num})r ON r.c_code=p.c_code;")*/
	public ReviewCommand selectReview2(Integer re_num);
	
	//리뷰 수정하기
	@Update("UPDATE review SET re_rate=#{re_rate}, re_good=#{re_good}, re_bad=#{re_bad}, re_tip=#{re_tip}, re_uploadbyte1=#{re_uploadbyte1}, re_uploadbyte2=#{re_uploadbyte2}, re_uploadbyte3=#{re_uploadbyte3}, "
			+ "re_filename1=#{re_filename1}, re_filename2=#{re_filename2}, re_filename3=#{re_filename3}, re_ip=#{re_ip}, re_regdate=SYSDATE WHERE re_num=#{re_num}")
	public void update(ReviewCommand review);
	
	//리뷰 삭제하기
	@Delete("DELETE FROM review WHERE re_num=#{re_num}")
	public void delete(Integer re_num);
	
	//리뷰 신고하기
	@Update("UPDATE review SET re_report=re_report+1 WHERE re_num=#{re_num}")
	public void addReport(Integer re_num);
	
	//리뷰 신고 테이블에 신고 내용 저장 
	@Insert("INSERT INTO review_report (re_num, report_cate, report_content, re_id, report_date) VALUES "
			+ "(#{re_num}, #{report_cate}, #{report_content}, #{re_id}, SYSDATE)")
	public void addReportTable(ReviewCommand review);
	
	//리뷰 좋아요 누르기 
	@Update("UPDATE review SET re_like=re_like+1 WHERE re_num=#{re_num}")
	public void likeReview(Integer re_num);
	
	
	
	
	//------------------------------------댓글
	//댓글 목록
	public List<ReviewReplyCommand> selectListReply(Map<String,Object> map);
	
	//댓글 페이징
	@Select("SELECT COUNT(*) FROM review_reply WHERE re_num=#{re_num}")
	public int selectRowCountReply(Map<String,Object> map);
	
	//댓글 달기
	@Insert("INSERT INTO review_reply (rere_num, re_id, rere_ip, rere_content, rere_regdate, re_num, rere_depth, rere_parentnum) VALUES "
			+ "(review_reply_seq.nextval, #{re_id}, #{rere_ip}, #{rere_content}, SYSDATE, #{re_num}, #{rere_depth}, #{rere_num})")
	public void insertReply(ReviewReplyCommand reviewReply);
	
	//댓글 수정
	@Update("UPDATE review_reply SET rere_content=#{rere_content}, rere_ip=#{rere_ip} WHERE rere_num=#{rere_num}")
	public void updateReply(ReviewReplyCommand reviewReply);
	
	//댓글 삭제
	@Delete("DELETE FROM review_reply WHERE rere_num=#{rere_num}")
	public void deleteReply(Integer rere_num);
	
	
	//부모글 삭제시 댓글이 존재하면 부모글 삭제 전 댓글 삭제
	public void deleteReplyByNum(Integer num);
	
	
	//------------------------------------정보 수정 요청
	//정보 수정 요청 작성 
	@Insert("INSERT INTO review_edit (c_code, edit_cate, edit_content, m_id, edit_date) VALUES "
			+ "(#{c_code}, #{edit_cate}, #{edit_content}, #{m_id}, SYSDATE)")
	public void insertEdit(ReviewCommand review);
	
}

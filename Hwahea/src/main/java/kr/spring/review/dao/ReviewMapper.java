package kr.spring.review.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.spring.review.domain.ReviewCommand;
import kr.spring.review.domain.ReviewReplyCommand;

public interface ReviewMapper {
	//리뷰 리스트
	public List<ReviewCommand> selectList(Map<String,Object> map);
	
	//리뷰 작성
	@Insert("INSERT INTO review (re_num, c_code, re_id, re_rate, re_good, re_bad, re_tip, re_uploadbyte1, re_uploadbyte2, re_uploadbyte3, re_filename1,re_filename2,re_filename3, re_ip, re_regdate) VALUES "
			+ "(review_seq.nextval, 1, 'test', #{re_rate}, #{re_good}, #{re_bad}, #{re_tip}, #{re_uploadbyte1}, #{re_uploadbyte2}, #{re_uploadbyte3}, #{re_filename1}, #{re_filename2}, #{re_filename3}, #{re_ip}, SYSDATE)")
	public void insert(ReviewCommand review);
	
	//리뷰 상세보기
	public ReviewCommand selectReview(Integer num);
	
	//리뷰 수정하기
	public void update(ReviewCommand review);
	
	//리뷰 삭제하기
	public void delete(Integer num);
	
	
	
	
	//------------------------------------댓글
	//댓글 목록
	public List<ReviewReplyCommand> selectListReply(Map<String,Object> map);
	
	//댓글 페이징
	@Select("SELECT COUNT(*) FROM review_reply WHERE re_num=1")
	public int selectRowCountReply(Map<String,Object> map);
	
	//댓글 달기
	
	public void insertReply(ReviewReplyCommand reviewReply);
	
	//댓글 수정
	public void updateReply(ReviewReplyCommand reviewReply);
	
	//댓글 삭제
	public void deleteReply(Integer re_num);
	
	
	//부모글 삭제시 댓글이 존재하면 부모글 삭제 전 댓글 삭제
	public void deleteReplyByNum(Integer num);
	
}

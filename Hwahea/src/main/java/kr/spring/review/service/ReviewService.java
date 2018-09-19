package kr.spring.review.service;

import java.util.List;
import java.util.Map;

import kr.spring.review.domain.ReviewCommand;
import kr.spring.review.domain.ReviewReplyCommand;

public interface ReviewService {
	//리뷰 리스트
	public List<ReviewCommand> selectList(Map<String,Object> map);
	
	//리뷰 목록들 페이징하기
	public int selectRowCount (Map<String,Object> map);
	
	//회원 정보 가져오기
	public List<ReviewCommand> selectMember(Map<String,Object> map);
	
	//리뷰 작성
	public void insert(ReviewCommand review);
	
	//리뷰 상세보기
	public List<ReviewCommand> selectReview(Integer re_num);
	
	//리뷰 상세보기
	public ReviewCommand selectReview2(Integer re_num);
	
	//리뷰 수정하기
	public void update(ReviewCommand review);
	
	//리뷰 삭제하기
	public void delete(Integer re_num);
	
	//리뷰 신고하기(리뷰 테이블에 신고 컬럼 +1)
	public void addReport(Integer re_num);
	
	//리뷰 신고하기(신고 테이블에 인서트)
	public void addReportTable(ReviewCommand review);
	
	//리뷰 좋아요 누르기
	public void likeReview(Integer re_num);
	
	
	//------------------------------------댓글
	//댓글 목록
	public List<ReviewReplyCommand> selectListReply(Map<String,Object> map);
	
	//댓글 페이징
	public int selectRowCountReply(Map<String,Object> map);
	
	//댓글 달기
	public void insertReply(ReviewReplyCommand reviewReply);
	
	//댓글 수정
	public void updateReply(ReviewReplyCommand reviewReply);
	
	//댓글 삭제
	public void deleteReply(Integer re_num);
	
	
	//부모글 삭제시 댓글이 존재하면 부모글 삭제 전 댓글 삭제
	public void deleteReplyByNum(Integer num);
	
	
	
	//------------------------------------정보 수정 요청 
	//수정 요청 전송하기 
	public void insertEdit(ReviewCommand review);
	
	
	
	
	
}

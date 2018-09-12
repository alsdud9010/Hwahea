package kr.spring.review.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.spring.review.domain.ReviewCommand;
import kr.spring.review.domain.ReviewReplyCommand;

public interface ReviewMapper {
	//���� ����Ʈ
	public List<ReviewCommand> selectList(Map<String,Object> map);
	
	//���� �ۼ�
	@Insert("INSERT INTO review (re_num, c_code, re_id, re_rate, re_good, re_bad, re_tip, re_uploadbyte1, re_uploadbyte2, re_uploadbyte3, re_filename1,re_filename2,re_filename3, re_ip, re_regdate) VALUES "
			+ "(review_seq.nextval, 1, 'test', #{re_rate}, #{re_good}, #{re_bad}, #{re_tip}, #{re_uploadbyte1}, #{re_uploadbyte2}, #{re_uploadbyte3}, #{re_filename1}, #{re_filename2}, #{re_filename3}, #{re_ip}, SYSDATE)")
	public void insert(ReviewCommand review);
	
	//���� �󼼺���
	public ReviewCommand selectReview(Integer num);
	
	//���� �����ϱ�
	public void update(ReviewCommand review);
	
	//���� �����ϱ�
	public void delete(Integer num);
	
	
	
	
	//------------------------------------���
	//��� ���
	public List<ReviewReplyCommand> selectListReply(Map<String,Object> map);
	
	//��� ����¡
	@Select("SELECT COUNT(*) FROM review_reply WHERE re_num=1")
	public int selectRowCountReply(Map<String,Object> map);
	
	//��� �ޱ�
	
	public void insertReply(ReviewReplyCommand reviewReply);
	
	//��� ����
	public void updateReply(ReviewReplyCommand reviewReply);
	
	//��� ����
	public void deleteReply(Integer re_num);
	
	
	//�θ�� ������ ����� �����ϸ� �θ�� ���� �� ��� ����
	public void deleteReplyByNum(Integer num);
	
}

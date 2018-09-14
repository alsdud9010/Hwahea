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
	//���� ����Ʈ
	public List<ReviewCommand> selectList(Map<String,Object> map);
	
	//�����ϵ� ����¡�ϱ� 
	public int selectRowCount (Map<String,Object> map);
	
	//ȸ�� ���� ��������
	public List<ReviewCommand> selectMember(Map<String,Object> map);
	
	//���� �ۼ�
	@Insert("INSERT INTO review (re_num, c_code, re_id, re_rate, re_good, re_bad, re_tip, re_uploadbyte1, re_uploadbyte2, re_uploadbyte3, re_filename1,re_filename2,re_filename3, re_ip, re_regdate) VALUES "
			+ "(review_seq.nextval, 1, #{re_id}, #{re_rate}, #{re_good}, #{re_bad}, #{re_tip}, #{re_uploadbyte1}, #{re_uploadbyte2}, #{re_uploadbyte3}, #{re_filename1}, #{re_filename2}, #{re_filename3}, #{re_ip}, SYSDATE)")
	public void insert(ReviewCommand review);
	
	//���� �󼼺���
	@Select("SELECT * FROM review WHERE num=21")
	public ReviewCommand selectReview(Integer re_num);
	
	//���� �����ϱ�
	public void update(ReviewCommand review);
	
	//���� �����ϱ�
	public void delete(Integer num);
	
	
	
	
	//------------------------------------���
	//��� ���
	public List<ReviewReplyCommand> selectListReply(Map<String,Object> map);
	
	//��� ����¡
	@Select("SELECT COUNT(*) FROM review_reply WHERE re_num=#{re_num}")
	public int selectRowCountReply(Map<String,Object> map);
	
	//��� �ޱ�
	@Insert("INSERT INTO review_reply (rere_num, re_id, rere_ip, rere_content, rere_regdate, re_num) VALUES "
			+ "(review_reply_seq.nextval, #{re_id}, #{rere_ip}, #{rere_content}, SYSDATE, 21)")
	public void insertReply(ReviewReplyCommand reviewReply);
	
	//��� ����
	@Update("UPDATE review_reply SET rere_content=#{rere_content}, rere_ip=#{rere_ip} WHERE rere_num=#{rere_num}")
	public void updateReply(ReviewReplyCommand reviewReply);
	
	//��� ����
	@Delete("DELETE FROM review_reply WHERE rere_num=#{rere_num}")
	public void deleteReply(Integer rere_num);
	
	
	//�θ�� ������ ����� �����ϸ� �θ�� ���� �� ��� ����
	public void deleteReplyByNum(Integer num);
	
	
	//------------------------------------���� ���� ��û
	//���� ���� ��û �ۼ� 
	@Insert("INSERT INTO review_edit (c_code, edit_cate, edit_content, m_id, edit_date) VALUES "
			+ "(1, #{edit_cate}, #{edit_content}, #{m_id}, SYSDATE)")
	public void insertEdit(ReviewCommand review);
	
}

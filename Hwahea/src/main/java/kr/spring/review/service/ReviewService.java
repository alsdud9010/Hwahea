package kr.spring.review.service;

import java.util.List;
import java.util.Map;

import kr.spring.review.domain.ReviewCommand;
import kr.spring.review.domain.ReviewReplyCommand;

public interface ReviewService {
	//���� ����Ʈ
	public List<ReviewCommand> selectList(Map<String,Object> map);
	
	//���� ��ϵ� ����¡�ϱ�
	public int selectRowCount (Map<String,Object> map);
	
	//ȸ�� ���� ��������
	public List<ReviewCommand> selectMember(Map<String,Object> map);
	
	//���� �ۼ�
	public void insert(ReviewCommand review);
	
	//���� �󼼺���
	public ReviewCommand selectReview(Integer re_num);
	
	//���� �����ϱ�
	public void update(ReviewCommand review);
	
	//���� �����ϱ�
	public void delete(Integer num);
	
	
	
	
	//------------------------------------���
	//��� ���
	public List<ReviewReplyCommand> selectListReply(Map<String,Object> map);
	
	//��� ����¡
	public int selectRowCountReply(Map<String,Object> map);
	
	//��� �ޱ�
	public void insertReply(ReviewReplyCommand reviewReply);
	
	//��� ����
	public void updateReply(ReviewReplyCommand reviewReply);
	
	//��� ����
	public void deleteReply(Integer re_num);
	
	
	//�θ�� ������ ����� �����ϸ� �θ�� ���� �� ��� ����
	public void deleteReplyByNum(Integer num);
	
	
	
	//------------------------------------���� ���� ��û 
	//���� ��û �����ϱ� 
	public void insertEdit(ReviewCommand review);
	
	
	
	
	
}

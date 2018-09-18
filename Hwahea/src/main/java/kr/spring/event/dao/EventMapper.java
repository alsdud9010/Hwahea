package kr.spring.event.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.spring.event.domain.EventCommand;
import kr.spring.event.domain.EventReplyCommand;

public interface EventMapper {
	/*==============�̺�Ʈ ����===============*/
	//�̺�Ʈ ���
	public List<EventCommand> selectEventList(Map<String,Object> map);
	
	//�̺�Ʈ ��� ����¡
	public int selectRowCount(Map<String,Object> map);
	
	//�̺�Ʈ �󼼺���
	@Select("SELECT * FROM event WHERE event_num=#{event_num}")
	public EventCommand selectEventDetail(Integer event_num);
	
	//�̺�Ʈ ���ϱ� ������Ʈ
	public void eventLike(Integer event_like);
	
	/*=============�̺�Ʈ ���==============*/
	//�̺�Ʈ ��� ���
	public List<EventReplyCommand> selectEventReply(Map<String,Object> map);
	
	//��� ����¡
	@Select("SELECT COUNT(*) FROM event_reply WHERE event_num=#{event_num}")
	public int selectRowCountReply(Map<String,Object> map);
	
	//�̺�Ʈ ��� ���
	@Insert("INSERT INTO event_reply (ere_num,ere_content,ere_date,event_num,m_id) VALUES (event_reply_seq.nextval,#{ere_content},SYSDATE,#{event_num},#{m_id})")
	public void insertReply(EventReplyCommand eventReply);
	
	
}

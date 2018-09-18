package kr.spring.event.service;

import java.util.List;
import java.util.Map;
import kr.spring.event.domain.EventCommand;
import kr.spring.event.domain.EventReplyCommand;

public interface EventService {
	/*==============�̺�Ʈ ����===============*/
	//�̺�Ʈ ���
	public List<EventCommand> selectEventList(Map<String,Object> map);
	
	//�̺�Ʈ ��� ����¡
	public int selectRowCount(Map<String,Object> map);
	
	//�̺�Ʈ �󼼺���
	public EventCommand selectEventDetail(Integer event_num);
	
	//�̺�Ʈ ���ϱ� ������Ʈ
	public void eventLike(Integer event_like);
	
	/*=============�̺�Ʈ ���==============*/
	//�̺�Ʈ ��� ���
	public List<EventReplyCommand> selectEventReply(Map<String,Object> map);
	
	//��� ����¡
	public int selectRowCountReply(Map<String,Object> map);
	
	//�̺�Ʈ ��� ���
	public void insertReply(EventReplyCommand eventReply);
}

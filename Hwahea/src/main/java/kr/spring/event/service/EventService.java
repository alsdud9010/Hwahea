package kr.spring.event.service;

import java.util.List;
import java.util.Map;
import kr.spring.event.domain.EventCommand;
import kr.spring.event.domain.EventReplyCommand;

public interface EventService {
	/*==============이벤트 메인===============*/
	//이벤트 목록
	public List<EventCommand> selectEventList(Map<String,Object> map);
	
	//이벤트 목록 페이징
	public int selectRowCount(Map<String,Object> map);
	
	//이벤트 상세보기
	public EventCommand selectEventDetail(Integer event_num);
	
	//이벤트 찜하기 업데이트
	public void eventLike(Integer event_like);
	
	/*=============이벤트 댓글==============*/
	//이벤트 댓글 목록
	public List<EventReplyCommand> selectEventReply(Map<String,Object> map);
	
	//댓글 페이징
	public int selectRowCountReply(Map<String,Object> map);
	
	//이벤트 댓글 등록
	public void insertReply(EventReplyCommand eventReply);
}

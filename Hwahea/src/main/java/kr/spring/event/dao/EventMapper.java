package kr.spring.event.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.spring.event.domain.EventCommand;
import kr.spring.event.domain.EventReplyCommand;

public interface EventMapper {
	/*==============이벤트 메인===============*/
	//이벤트 목록
	public List<EventCommand> selectEventList(Map<String,Object> map);
	
	//이벤트 목록 페이징
	public int selectRowCount(Map<String,Object> map);
	
	//이벤트 상세보기
	@Select("SELECT * FROM event WHERE event_num=#{event_num}")
	public EventCommand selectEventDetail(Integer event_num);
	
	//이벤트 찜하기 업데이트
	public void eventLike(Integer event_like);
	
	/*=============이벤트 댓글==============*/
	//이벤트 댓글 목록
	public List<EventReplyCommand> selectEventReply(Map<String,Object> map);
	
	//댓글 페이징
	@Select("SELECT COUNT(*) FROM event_reply WHERE event_num=#{event_num}")
	public int selectRowCountReply(Map<String,Object> map);
	
	//이벤트 댓글 등록
	@Insert("INSERT INTO event_reply (ere_num,ere_content,ere_date,event_num,m_id) VALUES (event_reply_seq.nextval,#{ere_content},SYSDATE,#{event_num},#{m_id})")
	public void insertReply(EventReplyCommand eventReply);
	
	
}

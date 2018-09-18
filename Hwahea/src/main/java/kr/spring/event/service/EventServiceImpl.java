package kr.spring.event.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.event.dao.EventMapper;
import kr.spring.event.domain.EventCommand;
import kr.spring.event.domain.EventReplyCommand;

@Service("eventService")
public class EventServiceImpl implements EventService{
	
	@Resource
	private EventMapper eventMapper;

	@Override
	public int selectRowCount(Map<String, Object> map) {
		return eventMapper.selectRowCount(map);
	}
	
	@Override
	public List<EventCommand> selectEventList(Map<String, Object> map) {
		return eventMapper.selectEventList(map);
	}

	@Override
	public EventCommand selectEventDetail(Integer event_num) {
		return eventMapper.selectEventDetail(event_num);
	}

	@Override
	public void eventLike(Integer event_like) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public List<EventReplyCommand> selectEventReply(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return eventMapper.selectEventReply(map);
	}

	@Override
	public int selectRowCountReply(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return eventMapper.selectRowCountReply(map);
	}

	@Override
	public void insertReply(EventReplyCommand eventReply) {
		// TODO Auto-generated method stub
		
	}

}

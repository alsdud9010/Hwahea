package kr.spring.event.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.event.dao.EventMapper;

@Service("eventService")
public class EventServiceImpl implements EventService{
	
	@Resource
	private EventMapper eventMapper;
}

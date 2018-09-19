package kr.spring.admin.service;

import java.util.List;

import kr.spring.admin.domain.AdminEventCommand;

public interface AdminEventService {
	//¿Ã∫•∆Æ
	public List<AdminEventCommand> selectEventList();
	public void insertEvent(AdminEventCommand event);
	public AdminEventCommand selectEvent(int event_num);
	public void deleteEvent(int event_num);
}

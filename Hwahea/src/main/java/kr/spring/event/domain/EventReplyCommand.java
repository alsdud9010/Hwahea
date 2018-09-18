package kr.spring.event.domain;

import org.hibernate.validator.constraints.NotEmpty;

import kr.spring.util.DurationFromNow;

public class EventReplyCommand {
	/*
	create table event_reply(
	  ere_num number not null,
	  ere_content varchar2(900) not null,
	  ere_date date not null,
	  event_num number not null,
	  m_id varchar2(12) not null,
	  constraint event_reply_pk primary key(ere_num),
	  constraint event_reply_fk1 foreign key (event_num) references event(event_num),
	  constraint event_reply_fk2 foreign key(m_id) references member(m_id)
	);
	create sequence event_reply_seq;
	 */
	
	private int ere_num;
	@NotEmpty
	private String ere_content;
	private String ere_date;
	private int event_num;
	private String m_id;
	
	public int getEre_num() {
		return ere_num;
	}
	public void setEre_num(int ere_num) {
		this.ere_num = ere_num;
	}
	public String getEre_content() {
		return ere_content;
	}
	public void setEre_content(String ere_content) {
		this.ere_content = ere_content;
	}
	public String getEre_date() {
		return ere_date;
	}
	public void setEre_date(String ere_date) {
		this.ere_date = DurationFromNow.getTimeDiffLabel(ere_date);
	}
	public int getEvent_num() {
		return event_num;
	}
	public void setEvent_num(int event_num) {
		this.event_num = event_num;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	@Override
	public String toString() {
		return "EventReplyCommand [ere_num=" + ere_num + ", ere_content=" + ere_content + ", ere_date=" + ere_date
				+ ", event_num=" + event_num + ", m_id=" + m_id + "]";
	}
}

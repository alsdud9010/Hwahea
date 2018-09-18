package kr.spring.notice.domain;

import java.io.IOException;
import java.sql.Date;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import kr.spring.util.DurationFromNow;

public class OnetooneReplyCommand {
	/*
	    reone_num number not null,
  reone_content clob not null,
  reone_date date not null,
  one_num number not null,
  m_id varchar2(12) not null,
  constraint onetoone_reply_pk primary key(reone_num),
  constraint onetoone_reply_fk1 foreign key(one_num) references onetoone (one_num),
  constraint onetoone_reply_fk2 foreign key(m_id) references member(m_id) 
	 */
	
	private int reone_num;
	private String reone_content;
	private String reone_date;
	private int one_num;
	private String m_id;
	
	public int getReone_num() {
		return reone_num;
	}
	public void setReone_num(int reone_num) {
		this.reone_num = reone_num;
	}
	public String getReone_content() {
		return reone_content;
	}
	public void setReone_content(String reone_content) {
		this.reone_content = reone_content;
	}
	public String getReone_date() {
		return reone_date;
	}
	public void setReone_date(String reone_date) {
		this.reone_date = DurationFromNow.getTimeDiffLabel(reone_date);
	}
	public int getOne_num() {
		return one_num;
	}
	public void setOne_num(int one_num) {
		this.one_num = one_num;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	@Override
	public String toString() {
		return "OnetooneReplyCommand [reone_num=" + reone_num + ", reone_content=" + reone_content + ", reone_date="
				+ reone_date + ", one_num=" + one_num + ", m_id=" + m_id + "]";
	}
}

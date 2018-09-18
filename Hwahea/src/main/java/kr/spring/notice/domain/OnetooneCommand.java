package kr.spring.notice.domain;

import java.sql.Date;

import org.hibernate.validator.constraints.NotEmpty;

public class OnetooneCommand {
	/*
	  one_num number not null,
  one_status number(5) default 0 not null,
  one_kind varchar2(100) not null,
  one_content clob not null,
  one_reg_date date not null,
  one_phone varchar2(50), 
  one_email varchar2(50),
  m_id varchar2(12) not null,
  constraint onetoone_pk primary key(one_num),
  constraint onetoone_fk foreign key(m_id) references member(m_id)
	 */
	
	private int one_num;
	private int one_status;
	private int one_kind;
	private String one_title;
	@NotEmpty
	private String one_content;
	private Date one_reg_date;
	private String one_phone;
	private String one_email;
	private String m_id;
	
	private int reone_cnt;
	
	public String getOne_title() {
		return one_title;
	}
	public void setOne_title(String one_title) {
		this.one_title = one_title;
	}
	public int getReone_cnt() {
		return reone_cnt;
	}
	public void setReone_cnt(int reone_cnt) {
		this.reone_cnt = reone_cnt;
	}
	public int getOne_num() {
		return one_num;
	}
	public void setOne_num(int one_num) {
		this.one_num = one_num;
	}
	public int getOne_status() {
		return one_status;
	}
	public void setOne_status(int one_status) {
		this.one_status = one_status;
	}
	public int getOne_kind() {
		return one_kind;
	}
	public void setOne_kind(int one_kind) {
		this.one_kind = one_kind;
	}
	public String getOne_content() {
		return one_content;
	}
	public void setOne_content(String one_content) {
		this.one_content = one_content;
	}
	public Date getOne_reg_date() {
		return one_reg_date;
	}
	public void setOne_reg_date(Date one_reg_date) {
		this.one_reg_date = one_reg_date;
	}
	public String getOne_phone() {
		return one_phone;
	}
	public void setOne_phone(String one_phone) {
		this.one_phone = one_phone;
	}
	public String getOne_email() {
		return one_email;
	}
	public void setOne_email(String one_email) {
		this.one_email = one_email;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	@Override
	public String toString() {
		return "OnetooneCommand [one_num=" + one_num + ", one_status=" + one_status + ", one_kind=" + one_kind
				+ ", one_title=" + one_title + ", one_content=" + one_content + ", one_reg_date=" + one_reg_date
				+ ", one_phone=" + one_phone + ", one_email=" + one_email + ", m_id=" + m_id + ", reone_cnt="
				+ reone_cnt + "]";
	}
}

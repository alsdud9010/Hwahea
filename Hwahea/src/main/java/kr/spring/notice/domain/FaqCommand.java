package kr.spring.notice.domain;

import java.sql.Date;

import org.hibernate.validator.constraints.NotEmpty;

public class FaqCommand {
	/*
	  faq_num number not null,
	  faq_kind number not null, //0:TOP10, 1:회원/멤버십, 2:주문/결제, 3:배송, 4:교환/반품/환불, 5:이벤트, 6:성분사전
	  faq_title varchar2(30) not null,
	  faq_content clob not null,
	  faq_date date not null,
	  constraint faq_pk primary key(faq_num)  
	 */
	
	private int faq_num;
	@NotEmpty
	private String faq_title;
	@NotEmpty
	private String faq_content;
	private Date faq_date;
	private int faq_kind;
	
	public int getFaq_kind() {
		return faq_kind;
	}
	public void setFaq_kind(int faq_kind) {
		this.faq_kind = faq_kind;
	}
	public int getFaq_num() {
		return faq_num;
	}
	public void setFaq_num(int faq_num) {
		this.faq_num = faq_num;
	}
	public String getFaq_title() {
		return faq_title;
	}
	public void setFaq_title(String faq_title) {
		this.faq_title = faq_title;
	}
	public String getFaq_content() {
		return faq_content;
	}
	public void setFaq_content(String faq_content) {
		this.faq_content = faq_content;
	}
	public Date getFaq_date() {
		return faq_date;
	}
	public void setFaq_date(Date faq_date) {
		this.faq_date = faq_date;
	}
	
	@Override
	public String toString() {
		return "FaqCommand [faq_num=" + faq_num + ", faq_title=" + faq_title + ", faq_content=" + faq_content
				+ ", faq_date=" + faq_date + ", faq_kind=" + faq_kind + "]";
	}
}

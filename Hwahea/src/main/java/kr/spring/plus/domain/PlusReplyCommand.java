package kr.spring.plus.domain;

import org.hibernate.validator.constraints.NotEmpty;

import kr.spring.util.DurationFromNow;

public class PlusReplyCommand {
	/*
	  hpre_num number(8) not null,
	  hpre_content varchar2(900) not null,
	  hpre_date date not null,
	  hpre_ip varchar2(40) not null,
	  hpre_depth number(8),
	  hpre_parent number(8),
	  hp_num number(8) not null, 
	  hpre_id varchar2(12) not null,
	  constraint plus_reply_pk primary key(hpre_num),
	  constraint plus_reply_fk1 foreign key(hp_num) references plus_board(hp_num),
	  constraint plus_reply_fk2 foreign key(hpre_id) references member(m_id)
	  
	  create sequence plus_board_reply_seq;
	 */
	
	private int hpre_num; //´ñ±Û ¹øÈ£
	@NotEmpty
	private String hpre_content; //´ñ±Û ³»¿ë
	private String hpre_date; //´ñ±Û µî·ÏÀÏ
	private String hpre_ip; //´ñ±Û ÀÛ¼ºÀÚ IP
	private int hpre_depth; //´ñ±Û ¿©¹é(ºÎ¸ð´ñ±ÛÀÏ °æ¿ì 0)
	private int hpre_parent;//´ñ±Û ºÎ¸ð(´ñ±Û-´ë´ñ±Û, ºÎ¸ð´ñ±ÛÀÏ °æ¿ì 0)
	private int hp_num;//ºÎ¸ð±Û ¹øÈ£
	private String hpre_id;//´ñ±Û ÀÛ¼ºÀÚ ID
	
	public int getHpre_num() {
		return hpre_num;
	}
	public void setHpre_num(int hpre_num) {
		this.hpre_num = hpre_num;
	}
	public String getHpre_content() {
		return hpre_content;
	}
	public void setHpre_content(String hpre_content) {
		this.hpre_content = hpre_content;
	}
	public String getHpre_date() {
		return hpre_date;
	}
	public void setHpre_date(String hpre_date) {
		this.hpre_date = DurationFromNow.getTimeDiffLabel(hpre_date);
	}
	public String getHpre_ip() {
		return hpre_ip;
	}
	public void setHpre_ip(String hpre_ip) {
		this.hpre_ip = hpre_ip;
	}
	public int getHpre_depth() {
		return hpre_depth;
	}
	public void setHpre_depth(int hpre_depth) {
		this.hpre_depth = hpre_depth;
	}
	public int getHpre_parent() {
		return hpre_parent;
	}
	public void setHpre_parent(int hpre_parent) {
		this.hpre_parent = hpre_parent;
	}
	public int getHp_num() {
		return hp_num;
	}
	public void setHp_num(int hp_num) {
		this.hp_num = hp_num;
	}
	public String getHpre_id() {
		return hpre_id;
	}
	public void setHpre_id(String hpre_id) {
		this.hpre_id = hpre_id;
	}
	
	@Override
	public String toString() {
		return "PlusReplyCommand [hpre_num=" + hpre_num + ", hpre_content=" + hpre_content + ", hpre_date=" + hpre_date
				+ ", hpre_ip=" + hpre_ip + ", hpre_depth=" + hpre_depth + ", hpre_parent=" + hpre_parent + ", hp_num="
				+ hp_num + ", hpre_id=" + hpre_id + "]";
	}
}

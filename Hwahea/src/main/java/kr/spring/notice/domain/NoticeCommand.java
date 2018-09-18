package kr.spring.notice.domain;

import java.io.IOException;
import java.sql.Date;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class NoticeCommand {
	/*
	  notice_num number not null,
  notice_kind number(5) not null, // 0:일반, 1:블라인드 (블라인드 된 리뷰), 2:이벤트 (당첨자 발표)
  notice_title varchar2(150) not null,
  notice_content clob not null,
  notice_reg_date date not null,
  notice_image varchar2(50),
  notice_filename varchar2(100),
  notice_id varchar2(12) not null,
  constraint notice_pk primary key(notice_num),
  constraint notice_fk foreign key (notice_id) references member(m_id)
	 */
	
	
	private int notice_num;
	private int notice_kind;
	@NotEmpty
	private String notice_title;
	@NotEmpty
	private String notice_content;
	private Date notice_reg_date;
	private MultipartFile notice_upload;
	private byte[] notice_image;
	private String notice_filename;
	private String notice_id;
	
	public int getNotice_num() {
		return notice_num;
	}
	public void setNotice_num(int notice_num) {
		this.notice_num = notice_num;
	}
	public int getNotice_kind() {
		return notice_kind;
	}
	public void setNotice_kind(int notice_kind) {
		this.notice_kind = notice_kind;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public Date getNotice_reg_date() {
		return notice_reg_date;
	}
	public void setNotice_reg_date(Date notice_reg_date) {
		this.notice_reg_date = notice_reg_date;
	}
	public MultipartFile getNotice_upload() {
		return notice_upload;
	}
	public void setNotice_upload(MultipartFile notice_upload) throws IOException{
		this.notice_upload = notice_upload;
		
		setNotice_image(notice_upload.getBytes());
		setNotice_filename(notice_upload.getOriginalFilename());
	}
	public byte[] getNotice_image() {
		return notice_image;
	}
	public void setNotice_image(byte[] notice_image) {
		this.notice_image = notice_image;
	}
	public String getNotice_filename() {
		return notice_filename;
	}
	public void setNotice_filename(String notice_filename) {
		this.notice_filename = notice_filename;
	}
	public String getNotice_id() {
		return notice_id;
	}
	public void setNotice_id(String notice_id) {
		this.notice_id = notice_id;
	}
	
	@Override
	public String toString() {
		return "NoticeCommand [notice_num=" + notice_num + ", notice_kind=" + notice_kind + ", notice_title="
				+ notice_title + ", notice_content=" + notice_content + ", notice_reg_date=" + notice_reg_date
				+ ", notice_upload=" + notice_upload + ", notice_filename=" + notice_filename + ", notice_id="
				+ notice_id + "]";
	}
	
}

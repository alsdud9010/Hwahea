package kr.spring.admin.domain;

import java.io.IOException;
import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class AdminNoticeCommand {
	private int notice_num;
	private int notice_kind;
	private String notice_title;
	private String notice_content;
	private Date notice_reg_date;
	private MultipartFile upload;
	private byte[] notice_image;
	private String notice_filename;
	private String notice_id;
	
	public void setUpload(MultipartFile upload) throws IOException {
		this.upload = upload;
		setNotice_image(upload.getBytes());
		setNotice_filename(upload.getOriginalFilename());
	}
	
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
	public MultipartFile getUpload() {
		return upload;
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
		return "AdminNoticeCommand [notice_num=" + notice_num + ", notice_kind=" + notice_kind + ", notice_title="
				+ notice_title + ", notice_content=" + notice_content + ", notice_reg_date=" + notice_reg_date
				+ ", upload=" + upload + ", notice_filename=" + notice_filename + ", notice_id=" + notice_id + "]";
	}

	
}

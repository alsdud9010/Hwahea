package kr.spring.event.domain;

import java.io.IOException;
import java.sql.Date;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class EventCommand {
	/*
	create table event(
	  event_num number not null,
	  event_kind number(5) not null, // 0 : 첫구매지원, 1 : 꼼평단, 2 : 화장품설문회, 3 : 화장품유목민
	  event_name varchar2(20) not null,
	  event_status varchar2(40) not null,
	  event_image1 varchar2(30) not null,
	  event_image2 varchar2(30),
	  event_image3 varchar2(30),
	  event_filename1 varchar2(100),
	  event_filename2 varchar2(100),
	  event_filename3 varchar2(100),
	  event_filename4 varchar2(100),
	  event_like number default 0 not null,
	  constraint event_pk primary key(event_num)
	);
	
	create sequence event_seq;
	 */
	
	private String event_due;
	private int event_over;
	private int ere_cnt;

	private int event_num;
	private int event_kind;
	private String event_name;
	private int event_status;
	private Date event_start;
	private Date event_end;
	private MultipartFile event_image1;
	private MultipartFile event_image2;
	private MultipartFile event_image3;
	
	private byte[] event_uploadfile1; //업로드 파일(DB저장)
	private byte[] event_uploadfile2;
	private byte[] event_uploadfile3;
	
	private String event_filename1;
	private String event_filename2;
	private String event_filename3;
	
	private int event_like;

	public int getEvent_num() {
		return event_num;
	}

	public void setEvent_num(int event_num) {
		this.event_num = event_num;
	}

	public int getEvent_kind() {
		return event_kind;
	}

	public void setEvent_kind(int event_kind) {
		this.event_kind = event_kind;
	}

	public String getEvent_name() {
		return event_name;
	}

	public void setEvent_name(String event_name) {
		this.event_name = event_name;
	}

	public int getEvent_status() {
		return event_status;
	}

	public void setEvent_status(int event_status) {
		this.event_status = event_status;
	}

	public MultipartFile getEvent_image1() {
		return event_image1;
	}

	public void setEvent_image1(MultipartFile event_image1) throws IOException{
		this.event_image1 = event_image1;
		
		//byte[] 데이터 저장
		setEvent_uploadfile1(event_image1.getBytes());
		setEvent_filename1(event_image1.getOriginalFilename());
	}

	public MultipartFile getEvent_image2() {
		return event_image2;
	}

	public void setEvent_image2(MultipartFile event_image2) throws IOException {
		this.event_image2 = event_image2;
		
		//byte[] 데이터 저장
		setEvent_uploadfile2(event_image2.getBytes());
		setEvent_filename2(event_image2.getOriginalFilename());
	}

	public MultipartFile getEvent_image3() {
		return event_image3;
	}

	public void setEvent_image3(MultipartFile event_image3) throws IOException{
		this.event_image3 = event_image3;
		
		//byte[] 데이터 저장
		setEvent_uploadfile3(event_image3.getBytes());
		setEvent_filename3(event_image3.getOriginalFilename());
	}

	public byte[] getEvent_uploadfile1() {
		return event_uploadfile1;
	}

	public void setEvent_uploadfile1(byte[] event_uploadfile1) {
		this.event_uploadfile1 = event_uploadfile1;
	}

	public byte[] getEvent_uploadfile2() {
		return event_uploadfile2;
	}

	public void setEvent_uploadfile2(byte[] event_uploadfile2) {
		this.event_uploadfile2 = event_uploadfile2;
	}

	public byte[] getEvent_uploadfile3() {
		return event_uploadfile3;
	}

	public void setEvent_uploadfile3(byte[] event_uploadfile3) {
		this.event_uploadfile3 = event_uploadfile3;
	}

	public String getEvent_filename1() {
		return event_filename1;
	}

	public void setEvent_filename1(String event_filename1) {
		this.event_filename1 = event_filename1;
	}

	public String getEvent_filename2() {
		return event_filename2;
	}

	public void setEvent_filename2(String event_filename2) {
		this.event_filename2 = event_filename2;
	}

	public String getEvent_filename3() {
		return event_filename3;
	}

	public void setEvent_filename3(String event_filename3) {
		this.event_filename3 = event_filename3;
	}

	public int getEvent_like() {
		return event_like;
	}

	public void setEvent_like(int event_like) {
		this.event_like = event_like;
	}
	
	public String getEvent_due() {
		return event_due;
	}
	
	public void setEvent_due(String event_due) {
		this.event_due = event_due;
	}
	
	public Date getEvent_start() {
		return event_start;
	}

	public void setEvent_start(Date event_start) {
		this.event_start = event_start;
	}

	public Date getEvent_end() {
		return event_end;
	}

	public void setEvent_end(Date event_end) {
		this.event_end = event_end;
	}

	public int getEvent_over() {
		return event_over;
	}

	public void setEvent_over(int event_over) {
		this.event_over = event_over;
	}

	public int getEre_cnt() {
		return ere_cnt;
	}

	public void setEre_cnt(int ere_cnt) {
		this.ere_cnt = ere_cnt;
	}

	@Override
	public String toString() {
		return "EventCommand [event_due=" + event_due + ", event_over=" + event_over + ", ere_cnt=" + ere_cnt
				+ ", event_num=" + event_num + ", event_kind=" + event_kind + ", event_name=" + event_name
				+ ", event_status=" + event_status + ", event_start=" + event_start + ", event_end=" + event_end
				+ ", event_image1=" + event_image1 + ", event_image2=" + event_image2 + ", event_image3=" + event_image3
				+ ", event_filename1=" + event_filename1 + ", event_filename2=" + event_filename2 + ", event_filename3="
				+ event_filename3 + ", event_like=" + event_like + "]";
	}

}

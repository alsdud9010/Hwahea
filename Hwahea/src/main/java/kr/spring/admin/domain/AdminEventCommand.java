package kr.spring.admin.domain;

import java.io.IOException;
import java.sql.Date;
import java.util.Arrays;

import org.springframework.web.multipart.MultipartFile;

public class AdminEventCommand {

	private int event_num;
	private int event_kind;
	private String event_name;
	private int event_status;
	private Date event_start;
	private Date event_end;
	private MultipartFile upload1;
	private MultipartFile upload2;
	private MultipartFile upload3;
	private byte[] event_image1;
	private byte[] event_image2;
	private byte[] event_image3;
	private String event_filename1;
	private String event_filename2;
	private String event_filename3;
	private int event_like;
	
	public void setUpload1(MultipartFile upload1) throws IOException {
		this.upload1 = upload1;
		setEvent_image1(upload1.getBytes());
		setEvent_filename1(upload1.getOriginalFilename());
	}
	
	public void setUpload2(MultipartFile upload2) throws IOException {
		this.upload2 = upload2;
		setEvent_image2(upload2.getBytes());
		setEvent_filename2(upload2.getOriginalFilename());
	}
	
	public void setUpload3(MultipartFile upload3) throws IOException {
		this.upload3 = upload3;
		setEvent_image3(upload3.getBytes());
		setEvent_filename3(upload3.getOriginalFilename());
	}
	
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
	public MultipartFile getUpload1() {
		return upload1;
	}
	
	public MultipartFile getUpload2() {
		return upload2;
	}
	
	public MultipartFile getUpload3() {
		return upload3;
	}
	
	public byte[] getEvent_image1() {
		return event_image1;
	}
	public void setEvent_image1(byte[] event_image1) {
		this.event_image1 = event_image1;
	}
	public byte[] getEvent_image2() {
		return event_image2;
	}
	public void setEvent_image2(byte[] event_image2) {
		this.event_image2 = event_image2;
	}
	public byte[] getEvent_image3() {
		return event_image3;
	}
	public void setEvent_image3(byte[] event_image3) {
		this.event_image3 = event_image3;
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
	
	
	
}

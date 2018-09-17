package kr.spring.admin.domain;

import java.io.IOException;
import java.util.Arrays;

import org.springframework.web.multipart.MultipartFile;

public class AdminEventCommand {

	private int event_num;
	private String event_name;
	private String event_status;
	private MultipartFile upload1;
	private MultipartFile upload2;
	private MultipartFile upload3;
	private MultipartFile upload4;
	private byte[] event_uploadfile1;
	private byte[] event_uploadfile2;
	private byte[] event_uploadfile3;
	private byte[] event_uploadfile4;
	private String event_image1;
	private String event_image2;
	private String event_image3;
	private String event_image4;
	private int event_hit;
	
	public void setUpload1(MultipartFile upload1) throws IOException {
		this.upload1 = upload1;
		setEvent_uploadfile1(upload1.getBytes());
		setEvent_image1(upload1.getOriginalFilename());
	}
	
	public void setUpload2(MultipartFile upload2) throws IOException{
		this.upload2 = upload2;
		setEvent_uploadfile2(upload2.getBytes());;
		setEvent_image2(upload2.getOriginalFilename());
	}
	
	public int getEvent_num() {
		return event_num;
	}
	public void setEvent_num(int event_num) {
		this.event_num = event_num;
	}
	public String getEvent_name() {
		return event_name;
	}
	public void setEvent_name(String event_name) {
		this.event_name = event_name;
	}
	public String getEvent_status() {
		return event_status;
	}
	public void setEvent_status(String event_status) {
		this.event_status = event_status;
	}
	
	public MultipartFile getUpload2() {
		return upload2;
	}
	
	public MultipartFile getUpload3() {
		return upload3;
	}
	public void setUpload3(MultipartFile upload3) {
		this.upload3 = upload3;
	}
	public MultipartFile getUpload4() {
		return upload4;
	}
	public void setUpload4(MultipartFile upload4) {
		this.upload4 = upload4;
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
	public byte[] getEvent_uploadfile4() {
		return event_uploadfile4;
	}
	public void setEvent_uploadfile4(byte[] event_uploadfile4) {
		this.event_uploadfile4 = event_uploadfile4;
	}
	public String getEvent_image1() {
		return event_image1;
	}
	public void setEvent_image1(String event_image1) {
		this.event_image1 = event_image1;
	}
	public String getEvent_image2() {
		return event_image2;
	}
	public void setEvent_image2(String event_image2) {
		this.event_image2 = event_image2;
	}
	public String getEvent_image3() {
		return event_image3;
	}
	public void setEvent_image3(String event_image3) {
		this.event_image3 = event_image3;
	}
	public String getEvent_image4() {
		return event_image4;
	}
	public void setEvent_image4(String event_image4) {
		this.event_image4 = event_image4;
	}
	public int getEvent_hit() {
		return event_hit;
	}
	public void setEvent_hit(int event_hit) {
		this.event_hit = event_hit;
	}
	
	//byte[]파일 제외
	@Override
	public String toString() {
		return "AdminEventCommand [event_num=" + event_num + ", event_name=" + event_name + ", event_status="
				+ event_status + ", upload1=" + upload1 + ", upload2=" + upload2 + ", upload3=" + upload3 + ", upload4="
				+ upload4 + ", event_image1=" + event_image1 + ", event_image2=" + event_image2 + ", event_image3="
				+ event_image3 + ", event_image4=" + event_image4 + ", event_hit=" + event_hit + "]";
	}
	
}

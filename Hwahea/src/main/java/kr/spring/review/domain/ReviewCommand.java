package kr.spring.review.domain;

import java.io.IOException;
import java.sql.Date;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;
import org.springframework.web.multipart.MultipartFile;

public class ReviewCommand {
	private int re_num;//리뷰를 식별할 수 있는 리뷰 글번호
	private String c_code; //리뷰를 작성한 제품의 제품코드
	private String re_id; //리뷰를 작성한 작성자 닉네임
	@Range(min=1,max=5)
	private int re_rate; //별점
	@NotEmpty
	@Size(min=20,max=5000)
	private String re_good; //좋았던 점 리뷰
	@NotEmpty
	@Size(min=20,max=5000)
	private String re_bad; //아쉬운 점 리뷰
	private String re_tip; //꿀팁 리뷰
	private MultipartFile re_uploadfile1; //리뷰사진1
	private MultipartFile re_uploadfile2; //리뷰사진2
	private MultipartFile re_uploadfile3; //리뷰사진3
	
	private byte[] re_uploadbyte1;
	private byte[] re_uploadbyte2;
	private byte[] re_uploadbyte3;
	
	private String re_filename1; //업로드한 파일명(DB 저장)
	private String re_filename2;
	private String re_filename3;
	
	private int re_report; //신고당한 횟수
	private int re_like; //좋아요 수
	private String re_ip; //리뷰 작성자 IP
	private Date re_regdate; //리뷰 작성 날짜 
	
	//-------------------------------------------------리뷰 수정 요청
	private String edit_cate;
	private String edit_content;
	private String m_id;
	
	
	public String getEdit_cate() {
		return edit_cate;
	}
	public void setEdit_cate(String edit_cate) {
		this.edit_cate = edit_cate;
	}
	public String getEdit_content() {
		return edit_content;
	}
	public void setEdit_content(String edit_content) {
		this.edit_content = edit_content;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public Date getEdit_date() {
		return edit_date;
	}
	public void setEdit_date(Date edit_date) {
		this.edit_date = edit_date;
	}
	private Date edit_date;
	
	public int getRe_num() {
		return re_num;
	}
	public void setRe_num(int re_num) {
		this.re_num = re_num;
	}
	
	public String getC_code() {
		return c_code;
	}
	public void setC_code(String c_code) {
		this.c_code = c_code;
	}
	public String getRe_id() {
		return re_id;
	}
	public void setRe_id(String re_id) {
		this.re_id = re_id;
	}
	public int getRe_rate() {
		return re_rate;
	}
	public void setRe_rate(int re_rate) {
		this.re_rate = re_rate;
	}
	public String getRe_good() {
		return re_good;
	}
	public void setRe_good(String re_good) {
		this.re_good = re_good;
	}
	public String getRe_bad() {
		return re_bad;
	}
	public void setRe_bad(String re_bad) {
		this.re_bad = re_bad;
	}
	public String getRe_tip() {
		return re_tip;
	}
	public void setRe_tip(String re_tip) {
		this.re_tip = re_tip;
	}
	public MultipartFile getRe_uploadfile1() {
		return re_uploadfile1;
	}
	public void setRe_uploadfile1(MultipartFile re_uploadfile1) throws IOException {
		this.re_uploadfile1 = re_uploadfile1;
		setRe_uploadbyte1(re_uploadfile1.getBytes());
		setRe_filename1(re_uploadfile1.getOriginalFilename());
	}
	public MultipartFile getRe_uploadfile2() {
		return re_uploadfile2;
	}
	public void setRe_uploadfile2(MultipartFile re_uploadfile2) throws IOException {
		this.re_uploadfile2 = re_uploadfile2;
		setRe_uploadbyte2(re_uploadfile2.getBytes());
		setRe_filename2(re_uploadfile2.getOriginalFilename());
	}
	public MultipartFile getRe_uploadfile3() {
		return re_uploadfile3;
	}
	public void setRe_uploadfile3(MultipartFile re_uploadfile3) throws IOException {
		this.re_uploadfile3 = re_uploadfile3;
		setRe_uploadbyte3(re_uploadfile3.getBytes());
		setRe_filename3(re_uploadfile3.getOriginalFilename());
	}
	public int getRe_report() {
		return re_report;
	}
	public void setRe_report(int re_report) {
		this.re_report = re_report;
	}
	public int getRe_like() {
		return re_like;
	}
	public void setRe_like(int re_like) {
		this.re_like = re_like;
	}
	public String getRe_ip() {
		return re_ip;
	}
	public void setRe_ip(String re_ip) {
		this.re_ip = re_ip;
	}
	public Date getRe_regdate() {
		return re_regdate;
	}
	public void setRe_regdate(Date re_regdate) {
		this.re_regdate = re_regdate;
	}
	public byte[] getRe_uploadbyte1() {
		return re_uploadbyte1;
	}
	public void setRe_uploadbyte1(byte[] re_uploadbyte1) {
		this.re_uploadbyte1 = re_uploadbyte1;
	}
	public byte[] getRe_uploadbyte2() {
		return re_uploadbyte2;
	}
	public void setRe_uploadbyte2(byte[] re_uploadbyte2) {
		this.re_uploadbyte2 = re_uploadbyte2;
	}
	public byte[] getRe_uploadbyte3() {
		return re_uploadbyte3;
	}
	public void setRe_uploadbyte3(byte[] re_uploadbyte3) {
		this.re_uploadbyte3 = re_uploadbyte3;
	}
	public String getRe_filename1() {
		return re_filename1;
	}
	public void setRe_filename1(String re_filename1) {
		this.re_filename1 = re_filename1;
	}
	public String getRe_filename2() {
		return re_filename2;
	}
	public void setRe_filename2(String re_filename2) {
		this.re_filename2 = re_filename2;
	}
	public String getRe_filename3() {
		return re_filename3;
	}
	public void setRe_filename3(String re_filename3) {
		this.re_filename3 = re_filename3;
	}
	
	@Override
	public String toString() {
		return "ReviewCommand [re_num=" + re_num + ", c_code=" + c_code + ", re_id=" + re_id + ", re_rate=" + re_rate
				+ ", re_good=" + re_good + ", re_bad=" + re_bad + ", re_tip=" + re_tip + ", re_uploadfile1="
				+ re_uploadfile1 + ", re_uploadfile2=" + re_uploadfile2 + ", re_uploadfile3=" + re_uploadfile3
				+ ", re_filename1=" + re_filename1 + ", re_filename2=" + re_filename2 + ", re_filename3=" + re_filename3
				+ ", re_report=" + re_report + ", re_like=" + re_like + ", re_ip=" + re_ip + ", re_regdate="
				+ re_regdate + ", edit_cate=" + edit_cate + ", edit_content=" + edit_content + ", m_id=" + m_id
				+ ", edit_date=" + edit_date + "]";
	}
	
}

package kr.spring.admin.domain;

import java.io.IOException;
import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class AdminPlusCommand {
	private int hp_num;
	private int hp_kind;
	private String hp_title;
	private String hp_content;
	private int hp_hit;
	private int hp_like;
	private int hp_scrap;
	private Date hp_reg_date;
	private MultipartFile upload1;
	private MultipartFile upload2;
	private MultipartFile upload3;
	private MultipartFile upload4;
	private byte[] hp_uploadfile1;
	private byte[] hp_uploadfile2;
	private byte[] hp_uploadfile3;
	private byte[] hp_uploadfile4;
	private String hp_filename1;
	private String hp_filename2;
	private String hp_filename3;
	private String hp_filename4;
	private String hp_ip;
	private String m_id;
	
	public void setUpload1(MultipartFile upload1) throws IOException {
		this.upload1 = upload1;
		setHp_uploadfile1(upload1.getBytes());
		setHp_filename1(upload1.getOriginalFilename());
	}
	
	public void setUpload2(MultipartFile upload2) throws IOException {
		this.upload2 = upload2;
		setHp_uploadfile2(upload2.getBytes());
		setHp_filename2(upload2.getOriginalFilename());
	}
	
	public void setUpload3(MultipartFile upload3) throws IOException {
		this.upload3 = upload3;
		setHp_uploadfile3(upload3.getBytes());
		setHp_filename3(upload3.getOriginalFilename());
	}
	
	public void setUpload4(MultipartFile upload4) throws IOException {
		this.upload4 = upload4;
		setHp_uploadfile4(upload4.getBytes());
		setHp_filename4(upload4.getOriginalFilename());
	}

	public int getHp_num() {
		return hp_num;
	}
	public void setHp_num(int hp_num) {
		this.hp_num = hp_num;
	}
	public int getHp_kind() {
		return hp_kind;
	}
	public void setHp_kind(int hp_kind) {
		this.hp_kind = hp_kind;
	}
	public String getHp_title() {
		return hp_title;
	}
	public void setHp_title(String hp_title) {
		this.hp_title = hp_title;
	}
	public String getHp_content() {
		return hp_content;
	}
	public void setHp_content(String hp_content) {
		this.hp_content = hp_content;
	}
	public int getHp_hit() {
		return hp_hit;
	}
	public void setHp_hit(int hp_hit) {
		this.hp_hit = hp_hit;
	}
	public int getHp_like() {
		return hp_like;
	}
	public void setHp_like(int hp_like) {
		this.hp_like = hp_like;
	}
	public int getHp_scrap() {
		return hp_scrap;
	}
	public void setHp_scrap(int hp_scrap) {
		this.hp_scrap = hp_scrap;
	}
	public Date getHp_reg_date() {
		return hp_reg_date;
	}
	public void setHp_reg_date(Date hp_reg_date) {
		this.hp_reg_date = hp_reg_date;
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
	
	public MultipartFile getUpload4() {
		return upload4;
	}
	
	public byte[] getHp_uploadfile1() {
		return hp_uploadfile1;
	}
	public void setHp_uploadfile1(byte[] hp_uploadfile1) {
		this.hp_uploadfile1 = hp_uploadfile1;
	}
	public byte[] getHp_uploadfile2() {
		return hp_uploadfile2;
	}
	public void setHp_uploadfile2(byte[] hp_uploadfile2) {
		this.hp_uploadfile2 = hp_uploadfile2;
	}
	public byte[] getHp_uploadfile3() {
		return hp_uploadfile3;
	}
	public void setHp_uploadfile3(byte[] hp_uploadfile3) {
		this.hp_uploadfile3 = hp_uploadfile3;
	}
	public byte[] getHp_uploadfile4() {
		return hp_uploadfile4;
	}
	public void setHp_uploadfile4(byte[] hp_uploadfile4) {
		this.hp_uploadfile4 = hp_uploadfile4;
	}
	public String getHp_filename1() {
		return hp_filename1;
	}
	public void setHp_filename1(String hp_filename1) {
		this.hp_filename1 = hp_filename1;
	}
	public String getHp_filename2() {
		return hp_filename2;
	}
	public void setHp_filename2(String hp_filename2) {
		this.hp_filename2 = hp_filename2;
	}
	public String getHp_filename3() {
		return hp_filename3;
	}
	public void setHp_filename3(String hp_filename3) {
		this.hp_filename3 = hp_filename3;
	}
	public String getHp_filename4() {
		return hp_filename4;
	}
	public void setHp_filename4(String hp_filename4) {
		this.hp_filename4 = hp_filename4;
	}
	public String getHp_ip() {
		return hp_ip;
	}
	public void setHp_ip(String hp_ip) {
		this.hp_ip = hp_ip;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	@Override
	public String toString() {
		return "AdminBrandCommand [hp_num=" + hp_num + ", hp_kind=" + hp_kind + ", hp_title=" + hp_title
				+ ", hp_content=" + hp_content + ", hp_hit=" + hp_hit + ", hp_like=" + hp_like + ", hp_scrap="
				+ hp_scrap + ", hp_reg_date=" + hp_reg_date + ", upload1=" + upload1 + ", upload2=" + upload2
				+ ", upload3=" + upload3 + ", upload4=" + upload4 + ", hp_filename1=" + hp_filename1 + ", hp_filename2="
				+ hp_filename2 + ", hp_filename3=" + hp_filename3 + ", hp_filename4=" + hp_filename4 + ", hp_ip="
				+ hp_ip + ", m_id=" + m_id + "]";
	}
}

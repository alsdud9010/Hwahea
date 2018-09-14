package kr.spring.plus.domain;

import java.io.IOException;
import java.sql.Date;
import java.util.Arrays;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class PlusCommand {
	/*
	  hp_num number(8) not null,
	  hp_kind number(1) not null,
	  hp_title varchar2(100) not null,
	  hp_content clob not null,
	  hp_hit number(10) default 0 not null,
	  hp_like number(10) default 0 not null,
	  hp_scrap number(10) default 0 not null,
	  hp_reg_date date not null,
	  hp_uploadfile1 blob,
	  hp_uploadfile2 blob,
	  hp_uploadfile3 blob,
	  hp_uploadfile4 blob,
	  hp_filename1 varchar2(100),
	  hp_filename2 varchar2(100),
	  hp_filename3 varchar2(100),
	  hp_filename4 varchar2(100),  
	  hp_ip varchar2(40) not null,  
	  m_id varchar2(12) not null,
	  constraint plus_board_pk primary key(hp_num),
	  constraint plus_board_fk foreign key(m_id) references member(m_id)
	 
	  create sequence plus_board_seq;  
	 */
	
	private int hp_num; //글 번호
	@NotEmpty
	private int hp_kind; //글 분류 (0:신상&트렌드 , 1:인기템리뷰 , 2:화장품 팩트체크 , 3:뷰티팁 , 4:쇼핑팁)
	@NotEmpty
	private String hp_title; //글 제목
	@NotEmpty
	private String hp_content; //글 내용
	private int hp_hit; //글 조회수
	private int hp_like; //좋아요 수
	private int hp_scrap; //스크랩 수
	private Date hp_reg_date; //글 등록일
	private MultipartFile hp_upload1;
	private MultipartFile hp_upload2;
	private MultipartFile hp_upload3;
	private MultipartFile hp_upload4;
	
	private byte[] hp_uploadfile1; //업로드 파일(DB저장)
	private byte[] hp_uploadfile2;
	private byte[] hp_uploadfile3;
	private byte[] hp_uploadfile4;
	
	private String hp_filename1; //업로드 파일 이름
	private String hp_filename2;
	private String hp_filename3;
	private String hp_filename4;
	
	private String hp_ip; //작성자 ip주소
	private String m_id; //작성자 id
	
	public void setUpload1(MultipartFile hp_upload1) throws IOException {
	
		
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
	public MultipartFile getHp_upload1() {
		return hp_upload1;
	}
	public void setHp_upload1(MultipartFile hp_upload1) throws IOException{
		this.hp_upload1 = hp_upload1;
		
		//byte[] 데이터 저장
		setHp_uploadfile1(hp_upload1.getBytes());
		setHp_filename1(hp_upload1.getOriginalFilename());
	}
	public MultipartFile getHp_upload2() {
		return hp_upload2;
	}
	public void setHp_upload2(MultipartFile hp_upload2) throws IOException{
		this.hp_upload2 = hp_upload2;
		
		//byte[] 데이터 저장
		setHp_uploadfile2(hp_upload2.getBytes());
		setHp_filename2(hp_upload2.getOriginalFilename());
	}
	public MultipartFile getHp_upload3() {
		return hp_upload3;
	}
	public void setHp_upload3(MultipartFile hp_upload3) throws IOException{
		this.hp_upload3 = hp_upload3;
		
		//byte[] 데이터 저장
		setHp_uploadfile3(hp_upload3.getBytes());
		setHp_filename3(hp_upload3.getOriginalFilename());
	}
	public MultipartFile getHp_upload4() {
		return hp_upload4;
	}
	public void setHp_upload4(MultipartFile hp_upload4) throws IOException{
		this.hp_upload4 = hp_upload4;
		
		//byte[] 데이터 저장
		setHp_uploadfile4(hp_upload4.getBytes());
		setHp_filename4(hp_upload4.getOriginalFilename());
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
		return "PlusCommand [hp_num=" + hp_num + ", hp_kind=" + hp_kind + ", hp_tile=" + hp_title + ", hp_content="
				+ hp_content + ", hp_hit=" + hp_hit + ", hp_like=" + hp_like + ", hp_scrap=" + hp_scrap
				+ ", hp_reg_date=" + hp_reg_date + ", hp_upload1=" + hp_upload1 + ", hp_upload2=" + hp_upload2
				+ ", hp_upload3=" + hp_upload3 + ", hp_upload4=" + hp_upload4 + ", hp_uploadfile1="
				+ Arrays.toString(hp_uploadfile1) + ", hp_uploadfile2=" + Arrays.toString(hp_uploadfile2)
				+ ", hp_uploadfile3=" + Arrays.toString(hp_uploadfile3) + ", hp_uploadfile4="
				+ Arrays.toString(hp_uploadfile4) + ", hp_filename1=" + hp_filename1 + ", hp_filename2=" + hp_filename2
				+ ", hp_filename3=" + hp_filename3 + ", hp_filename4=" + hp_filename4 + ", hp_ip=" + hp_ip + ", m_id="
				+ m_id + "]";
	}
}

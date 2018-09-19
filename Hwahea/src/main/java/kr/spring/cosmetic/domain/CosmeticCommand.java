package kr.spring.cosmetic.domain;

import java.io.IOException;
import java.sql.Date;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class CosmeticCommand {
	private String brand;
	@NotEmpty
	private String c_code;
	@NotEmpty
	private String c_name;
	
	private MultipartFile c_uploadfile; //화장품사진
	private byte[] c_uploadbyte; 
	@NotEmpty
	private String c_photoname; //업로드한 파일명 DB에 저장된다.  
	@NotEmpty
	private String c_capacity;
	@NotEmpty
	private int c_price;
	@NotEmpty
	private String c_ingre;
	private String c_rate;
	private int c_rank;
	@NotEmpty
	private int c_shopping;
	@NotEmpty
	private Date c_reg_date;
	
	
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getC_code() {
		return c_code;
	}
	public void setC_code(String c_code) {
		this.c_code = c_code;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public MultipartFile getC_uploadfile() {
		return c_uploadfile;
	}
	public void setC_uploadfile(MultipartFile c_uploadfile) throws IOException {
		this.c_uploadfile = c_uploadfile;
		setC_uploadbyte(c_uploadfile.getBytes());
		setC_photoname(c_uploadfile.getOriginalFilename());
	}
	public byte[] getC_uploadbyte() {
		return c_uploadbyte;
	}
	public void setC_uploadbyte(byte[] c_uploadbyte) {
		this.c_uploadbyte = c_uploadbyte;
	}
	public String getC_photoname() {
		return c_photoname;
	}
	public void setC_photoname(String c_photoname) {
		this.c_photoname = c_photoname;
	}
	
	public String getC_capacity() {
		return c_capacity;
	}
	public void setC_capacity(String c_capacity) {
		this.c_capacity = c_capacity;
	}
	public int getC_price() {
		return c_price;
	}
	public void setC_price(int c_price) {
		this.c_price = c_price;
	}
	public String getC_ingre() {
		return c_ingre;
	}
	public void setC_ingre(String c_ingre) {
		this.c_ingre = c_ingre;
	}
	public String getC_rate() {
		return c_rate;
	}
	public void setC_rate(String c_rate) {
		this.c_rate = c_rate;
	}
	public int getC_rank() {
		return c_rank;
	}
	public void setC_rank(int c_rank) {
		this.c_rank = c_rank;
	}
	public int getC_shopping() {
		return c_shopping;
	}
	public void setC_shopping(int c_shopping) {
		this.c_shopping = c_shopping;
	}
	public Date getC_reg_date() {
		return c_reg_date;
	}
	public void setC_reg_date(Date c_reg_date) {
		this.c_reg_date = c_reg_date;
	}
	
	
	@Override
	public String toString() {
		return "CosmeticCommand [brand=" + brand + ", c_code=" + c_code + ", c_name=" + c_name + ", c_uploadfile="
				+ c_uploadfile + ", c_photoname=" + c_photoname + ", c_capacity=" + c_capacity + ", c_price=" + c_price
				+ ", c_ingre=" + c_ingre + ", c_rate=" + c_rate + ", c_rank=" + c_rank + ", c_shopping=" + c_shopping
				+ ", c_reg_date=" + c_reg_date + "]";
	}

}
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
	private float c_rate;
	private int c_rank;
	@NotEmpty
	private int c_shopping;
	@NotEmpty
	private Date c_reg_date;
	private String c_brand_num;
	
	//----------------------브랜드 관련
	private int brand_num;

	private String brand_name;

	private Date brand_reg_date;

	private String brand_image;

	private String image_name; 

	public int getBrand_num() {
		return brand_num;
	}
	public void setBrand_num(int brand_num) {
		this.brand_num = brand_num;
	}
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public Date getBrand_reg_date() {
		return brand_reg_date;
	}
	public void setBrand_reg_date(Date brand_reg_date) {
		this.brand_reg_date = brand_reg_date;
	}
	public String getBrand_image() {
		return brand_image;
	}
	public void setBrand_image(String brand_image) {
		this.brand_image = brand_image;
	}
	public String getImage_name() {
		return image_name;
	}
	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}
	
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
	public float getC_rate() {
		return c_rate;
	}
	public void setC_rate(float c_rate) {
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
	
	
	public String getC_brand_num() {
		return c_brand_num;
	}
	public void setC_brand_num(String c_brand_num) {
		this.c_brand_num = c_brand_num;
	}
	@Override
	public String toString() {
		return "CosmeticCommand [brand=" + brand + ", c_code=" + c_code + ", c_name=" + c_name + ", c_uploadfile="
				+ c_uploadfile + ", c_photoname=" + c_photoname + ", c_capacity=" + c_capacity + ", c_price=" + c_price
				+ ", c_ingre=" + c_ingre + ", c_rate=" + c_rate + ", c_rank=" + c_rank + ", c_shopping=" + c_shopping
				+ ", c_reg_date=" + c_reg_date + ", c_brand_num=" + c_brand_num + ", brand_num=" + brand_num
				+ ", brand_name=" + brand_name + ", brand_reg_date=" + brand_reg_date + ", brand_image=" + brand_image
				+ ", image_name=" + image_name + "]";
	}
	
	
}
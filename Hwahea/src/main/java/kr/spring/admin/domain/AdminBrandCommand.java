package kr.spring.admin.domain;

import java.io.IOException;
import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class AdminBrandCommand {
	private int brand_num;
	private String brand_name;
	private Date brand_reg_date;
	private MultipartFile upload;
	private byte[] brand_image;
	private String image_name;
	
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) throws IOException {
		this.upload = upload;
		setBrand_image(upload.getBytes());
		setImage_name(upload.getOriginalFilename());
	}
	public byte[] getBrand_image() {
		return brand_image;
	}
	public void setBrand_image(byte[] brand_image) {
		this.brand_image = brand_image;
	}

	public String getImage_name() {
		return image_name;
	}
	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}
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
	
	
}

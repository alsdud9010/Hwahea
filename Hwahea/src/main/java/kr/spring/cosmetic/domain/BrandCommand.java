package kr.spring.cosmetic.domain;

import java.sql.Date;

import org.hibernate.validator.constraints.NotEmpty;

public class BrandCommand {
	@NotEmpty
	private int brand_num;
	@NotEmpty
	private String brand_name;
	@NotEmpty
	private Date brand_reg_date;
	@NotEmpty
	private String brand_image;
	@NotEmpty
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
	@Override
	public String toString() {
		return "BrandCommand [brand_num=" + brand_num + ", brand_name=" + brand_name + ", brand_reg_date="
				+ brand_reg_date + ", brand_image=" + brand_image + ", image_name=" + image_name + "]";
	}
}

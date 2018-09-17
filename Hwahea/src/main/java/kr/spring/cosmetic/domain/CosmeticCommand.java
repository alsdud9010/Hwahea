package kr.spring.cosmetic.domain;

import java.sql.Blob;
import java.sql.Date;

import org.hibernate.validator.constraints.NotEmpty;

public class CosmeticCommand {
	private String brand;
	@NotEmpty
	private String c_code;
	@NotEmpty
	private String c_name;
	private Blob c_image;
	@NotEmpty
	private String c_photo;
	@NotEmpty
	private int c_capacity;
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
	public Blob getC_image() {
		return c_image;
	}
	public void setC_image(Blob c_image) {
		this.c_image = c_image;
	}
	public String getC_photo() {
		return c_photo;
	}
	public void setC_photo(String c_photo) {
		this.c_photo = c_photo;
	}
	public int getC_capacity() {
		return c_capacity;
	}
	public void setC_capacity(int c_capacity) {
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
		return "CosmeticCommand [brand=" + brand + ", c_code=" + c_code + ", c_name=" + c_name + ", c_image=" + c_image
				+ ", c_photo=" + c_photo + ", c_capacity=" + c_capacity + ", c_price=" + c_price + ", c_ingre="
				+ c_ingre + ", c_rate=" + c_rate + ", c_rank=" + c_rank + ", c_shopping=" + c_shopping + ", c_reg_date="
				+ c_reg_date + "]";
	}
}
package kr.spring.admin.domain;

import java.io.IOException;
import java.sql.Clob;
import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class AdminProductCommand {

	private int p_num;
	private String p_name;
	private int p_price;
	private int p_capacity;
	private int p_brand;
	private MultipartFile upload;//업로드 파일1
	private byte[] p_image;//DB에 저장된 파일
	private String p_photo;//파일 명
	private Date p_reg_date;
	private String p_main_spec;
	private String p_expiry_date;
	private String p_how_to;
	private String p_manufacturer;
	private String p_made_in;
	private String p_main_ingredient;
	private int p_test_exist;
	private String p_attention;
	private String p_content;
	private int p_category;
	private int p_discount;
	
	public void setUpload(MultipartFile upload) throws IOException {
		this.upload = upload;
		setP_image(upload.getBytes());
		setP_photo(upload.getOriginalFilename());
	}
	
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public int getP_capacity() {
		return p_capacity;
	}
	public void setP_capacity(int p_capacity) {
		this.p_capacity = p_capacity;
	}
	public int getP_brand() {
		return p_brand;
	}
	public void setP_brand(int p_brand) {
		this.p_brand = p_brand;
	}
	public MultipartFile getUpload() {
		return upload;
	}
	public byte[] getP_image() {
		return p_image;
	}
	public void setP_image(byte[] p_image) {
		this.p_image = p_image;
	}
	public String getP_photo() {
		return p_photo;
	}
	public void setP_photo(String p_photo) {
		this.p_photo = p_photo;
	}
	public Date getP_reg_date() {
		return p_reg_date;
	}
	public void setP_reg_date(Date p_reg_date) {
		this.p_reg_date = p_reg_date;
	}
	public String getP_main_spec() {
		return p_main_spec;
	}
	public void setP_main_spec(String p_main_spec) {
		this.p_main_spec = p_main_spec;
	}
	public String getP_expiry_date() {
		return p_expiry_date;
	}
	public void setP_expiry_date(String p_expiry_date) {
		this.p_expiry_date = p_expiry_date;
	}
	public String getP_how_to() {
		return p_how_to;
	}
	public void setP_how_to(String p_how_to) {
		this.p_how_to = p_how_to;
	}
	public String getP_manufacturer() {
		return p_manufacturer;
	}
	public void setP_manufacturer(String p_manufacturer) {
		this.p_manufacturer = p_manufacturer;
	}
	public String getP_made_in() {
		return p_made_in;
	}
	public void setP_made_in(String p_made_in) {
		this.p_made_in = p_made_in;
	}
	public String getP_main_ingredient() {
		return p_main_ingredient;
	}
	public void setP_main_ingredient(String p_main_ingredient) {
		this.p_main_ingredient = p_main_ingredient;
	}
	public int getP_test_exist() {
		return p_test_exist;
	}
	public void setP_test_exist(int p_test_exist) {
		this.p_test_exist = p_test_exist;
	}
	public String getP_attention() {
		return p_attention;
	}
	public void setP_attention(String p_attention) {
		this.p_attention = p_attention;
	}
	public String getP_content() {
		return p_content;
	}
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}
	public int getP_category() {
		return p_category;
	}
	public void setP_category(int p_category) {
		this.p_category = p_category;
	}
	public int getP_discount() {
		return p_discount;
	}
	public void setP_discount(int p_discount) {
		this.p_discount = p_discount;
	}
	
	@Override
	public String toString() {
		return "AdminProductCommand [p_num=" + p_num + ", p_name=" + p_name + ", p_price=" + p_price + ", p_capacity="
				+ p_capacity + ", p_brand=" + p_brand + ", upload=" + upload + ", p_photo=" + p_photo + ", p_reg_date="
				+ p_reg_date + ", p_main_spec=" + p_main_spec + ", p_expiry_date=" + p_expiry_date + ", p_how_to="
				+ p_how_to + ", p_manufacturer=" + p_manufacturer + ", p_made_in=" + p_made_in + ", p_main_ingredient="
				+ p_main_ingredient + ", p_test_exist=" + p_test_exist + ", p_attention=" + p_attention + ", p_content="
				+ p_content + ", p_category=" + p_category + ", p_discount=" + p_discount + "]";
	}
	
	
}

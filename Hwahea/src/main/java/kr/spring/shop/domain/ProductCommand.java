package kr.spring.shop.domain;

import java.io.IOException;
import java.sql.Date;
import java.util.Arrays;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class ProductCommand {
	private int p_num; //��ǰ��ȣ
	@NotEmpty
	private String p_name; //��ǰ��
	@NotEmpty
	private int p_price; //��ǰ����
	@NotEmpty
	private int p_capacity; //��ǰ�뷮
	@NotEmpty
	private String brand_name; //�귣���, ��� �� �����ؼ� String������ �귣��� ����
	@NotEmpty
	private int brand_num;
	private MultipartFile upload;//���ε� ����1
	private byte[] p_image;//DB�� ����� ����
	private String p_photo;//���� ��
	private Date p_reg_date;
	private String p_main_spec; //��ǰ �ֿ� ����
	private String p_expiry_date; //������
	private String p_how_to; //�����
	private String p_manufacturer; //������
	private String p_made_in; //������
	private String p_main_ingredient; // �ּ���
	private int p_test_exist; //�׽�Ʈ ����
	private String p_attention; // ���� ���ǻ���
	private String p_content; //��ǰ�Ұ���
	private int p_category; //����ī�װ� ����
	private int p_discount; //������
	
	private int category_num;
	private String category_name;
	private int category_kind;
	private String category_detail_name;
	private int category_detail_num;
	private int head_category;
	private int shopping_exist;
	
	private int discount_price;
	
	private int product_cnt; //��ǰ ��
	private String[] brandSearch;
	
	public void setUpload(MultipartFile upload) throws IOException {
	      this.upload = upload;
	      setP_image(upload.getBytes());
	      setP_photo(upload.getOriginalFilename());
	}

	public int getCategory_num() {
		return category_num;
	}
	public void setCategory_num(int category_num) {
		this.category_num = category_num;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public int getCategory_kind() {
		return category_kind;
	}
	public void setCategory_kind(int category_kind) {
		this.category_kind = category_kind;
	}
	public String getCategory_detail_name() {
		return category_detail_name;
	}
	public void setCategory_detail_name(String category_detail_name) {
		this.category_detail_name = category_detail_name;
	}
	public int getCategory_detail_num() {
		return category_detail_num;
	}
	public void setCategory_detail_num(int category_detail_num) {
		this.category_detail_num = category_detail_num;
	}
	public int getShopping_exist() {
		return shopping_exist;
	}
	public void setShopping_exist(int shopping_exist) {
		this.shopping_exist = shopping_exist;
	}
	public int getHead_category() {
		return head_category;
	}
	public void setHead_category(int head_category) {
		this.head_category = head_category;
	}
	public int getProduct_cnt() {
		return product_cnt;
	}
	public void setProduct_cnt(int product_cnt) {
		this.product_cnt = product_cnt;
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
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
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
	public int getBrand_num() {
		return brand_num;
	}
	public void setBrand_num(int brand_num) {
		this.brand_num = brand_num;
	}
	
	public int getDiscount_price() {
		return discount_price;
	}
	public void setDiscount_price(int discount_price) {
		this.discount_price = discount_price;
	}
	public String[] getBrandSearch() {
		return brandSearch;
	}
	public void setBrandSearch(String[] brandSearch) {
		this.brandSearch = brandSearch;
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

	public MultipartFile getUpload() {
		return upload;
	}

	@Override
	public String toString() {
		return "ProductCommand [p_num=" + p_num + ", p_name=" + p_name + ", p_price=" + p_price + ", p_capacity="
				+ p_capacity + ", brand_name=" + brand_name + ", brand_num=" + brand_num + ", upload=" + upload
				+ ", p_image=" + Arrays.toString(p_image) + ", p_photo=" + p_photo + ", p_reg_date=" + p_reg_date
				+ ", p_main_spec=" + p_main_spec + ", p_expiry_date=" + p_expiry_date + ", p_how_to=" + p_how_to
				+ ", p_manufacturer=" + p_manufacturer + ", p_made_in=" + p_made_in + ", p_main_ingredient="
				+ p_main_ingredient + ", p_test_exist=" + p_test_exist + ", p_attention=" + p_attention + ", p_content="
				+ p_content + ", p_category=" + p_category + ", p_discount=" + p_discount + ", category_num="
				+ category_num + ", category_name=" + category_name + ", category_kind=" + category_kind
				+ ", category_detail_name=" + category_detail_name + ", category_detail_num=" + category_detail_num
				+ ", head_category=" + head_category + ", shopping_exist=" + shopping_exist + ", discount_price="
				+ discount_price + ", product_cnt=" + product_cnt + ", brandSearch=" + Arrays.toString(brandSearch)
				+ "]";
	}

	
}

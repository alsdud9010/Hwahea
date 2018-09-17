package kr.spring.shop.domain;

import java.util.Arrays;

import org.hibernate.validator.constraints.NotEmpty;

public class OrderCommand {
	
	private int order_num; //�ֹ���ȣ
	@NotEmpty
	private String order_id; //�ֹ��� ���̵�
	private int quantity; //����
	@NotEmpty
	private int total_price; //�Ѱ���
	@NotEmpty
	private String buyer_name; //�ֹ��� �̸�
	@NotEmpty
	private String buyer_phone1; //�ֹ��ڿ���ó
	@NotEmpty
	private String buyer_phone2;
	@NotEmpty
	private String buyer_phone3;
	@NotEmpty
	private String buyer_email; //�ֹ����̸���
	@NotEmpty
	private int buyer_zipcode; //�ֹ��ڿ����ȣ
	@NotEmpty
	private String buyer_address1; //�ֹ��� �ּ�
	@NotEmpty
	private String buyer_address2;
	@NotEmpty
	private String how; //�������
	private String order_msg; //��۸޼���
	private int order_product; //��ǰ

	private String[] products;
	private String[] quantities;
	
	public int getOrder_num() {
		return order_num;
	}
	public void setOrder_num(int order_num) {
		this.order_num = order_num;
	}
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	public String getBuyer_name() {
		return buyer_name;
	}
	public void setBuyer_name(String buyer_name) {
		this.buyer_name = buyer_name;
	}
	public String getBuyer_phone1() {
		return buyer_phone1;
	}
	public void setBuyer_phone1(String buyer_phone1) {
		this.buyer_phone1 = buyer_phone1;
	}
	public String getBuyer_phone2() {
		return buyer_phone2;
	}
	public void setBuyer_phone2(String buyer_phone2) {
		this.buyer_phone2 = buyer_phone2;
	}
	public String getBuyer_phone3() {
		return buyer_phone3;
	}
	public void setBuyer_phone3(String buyer_phone3) {
		this.buyer_phone3 = buyer_phone3;
	}
	public String getBuyer_email() {
		return buyer_email;
	}
	public void setBuyer_email(String buyer_email) {
		this.buyer_email = buyer_email;
	}
	public int getBuyer_zipcode() {
		return buyer_zipcode;
	}
	public void setBuyer_zipcode(int buyer_zipcode) {
		this.buyer_zipcode = buyer_zipcode;
	}
	public String getBuyer_address1() {
		return buyer_address1;
	}
	public void setBuyer_address1(String buyer_address1) {
		this.buyer_address1 = buyer_address1;
	}
	public String getBuyer_address2() {
		return buyer_address2;
	}
	public void setBuyer_address2(String buyer_address2) {
		this.buyer_address2 = buyer_address2;
	}
	public String getHow() {
		return how;
	}
	public void setHow(String how) {
		this.how = how;
	}
	public String getOrder_msg() {
		return order_msg;
	}
	public void setOrder_msg(String order_msg) {
		this.order_msg = order_msg;
	}
	public int getOrder_product() {
		return order_product;
	}
	public void setOrder_product(int order_product) {
		this.order_product = order_product;
	}
	public String[] getProducts() {
		return products;
	}
	public void setProducts(String[] products) {
		this.products = products;
	}
	
	public String[] getQuantities() {
		return quantities;
	}
	public void setQuantities(String[] quantities) {
		this.quantities = quantities;
	}
	@Override
	public String toString() {
		return "OrderCommand [order_num=" + order_num + ", order_id=" + order_id + ", quantity=" + quantity
				+ ", total_price=" + total_price + ", buyer_name=" + buyer_name + ", buyer_phone1=" + buyer_phone1
				+ ", buyer_phone2=" + buyer_phone2 + ", buyer_phone3=" + buyer_phone3 + ", buyer_email=" + buyer_email
				+ ", buyer_zipcode=" + buyer_zipcode + ", buyer_address1=" + buyer_address1 + ", buyer_address2="
				+ buyer_address2 + ", how=" + how + ", order_msg=" + order_msg + ", order_product=" + order_product
				+ ", products=" + Arrays.toString(products) + ", quantities=" + Arrays.toString(quantities) + "]";
	}
	
}

package kr.spring.shop.domain;

import java.sql.Date;
import java.util.Arrays;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

public class OrderCommand {
	
	private int m_point;
	private String p_name;
	private int order_num; //주문번호
	private String order_id; //주문자 아이디
	@Range(min=0)
	private int total_price; //총가격
	@NotEmpty
	private String buyer_name; //주문자 이름
	@NotEmpty
	private String buyer_phone1; //주문자연락처
	@NotEmpty
	private String buyer_phone2;
	@NotEmpty
	private String buyer_phone3;
	@NotEmpty
	private String buyer_email; //주문자이메일
	@Size(min=5, max=5)
	private String buyer_zipcode; //주문자우편번호
	@NotEmpty
	private String buyer_address1; //주문자 주소
	private String buyer_address2;
	@NotEmpty
	private String how; //결제방법
	private String order_msg; //배송메세지
	private Date order_date;
	
	private int order_product; //상품
	private int quantity; //수량

	private Integer[] orderProduct;
	private Integer[] orderQuantity;
	
	private int seqNum;
	private int discount_price;
	
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
	public String getBuyer_zipcode() {
		return buyer_zipcode;
	}
	public void setBuyer_zipcode(String buyer_zipcode) {
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
	public Integer[] getOrderProduct() {
		return orderProduct;
	}
	public void setOrderProduct(Integer[] orderProduct) {
		this.orderProduct = orderProduct;
	}
	public Integer[] getOrderQuantity() {
		return orderQuantity;
	}
	public void setOrderQuantity(Integer[] orderQuantity) {
		this.orderQuantity = orderQuantity;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}	
	public int getSeqNum() {
		return seqNum;
	}
	public void setSeqNum(int seqNum) {
		this.seqNum = seqNum;
	}
	
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getDiscount_price() {
		return discount_price;
	}
	public void setDiscount_price(int discount_price) {
		this.discount_price = discount_price;
	}
	public int getM_point() {
		return m_point;
	}
	public void setM_point(int m_point) {
		this.m_point = m_point;
	}
	@Override
	public String toString() {
		return "OrderCommand [m_point=" + m_point + ", p_name=" + p_name + ", order_num=" + order_num + ", order_id="
				+ order_id + ", total_price=" + total_price + ", buyer_name=" + buyer_name + ", buyer_phone1="
				+ buyer_phone1 + ", buyer_phone2=" + buyer_phone2 + ", buyer_phone3=" + buyer_phone3 + ", buyer_email="
				+ buyer_email + ", buyer_zipcode=" + buyer_zipcode + ", buyer_address1=" + buyer_address1
				+ ", buyer_address2=" + buyer_address2 + ", how=" + how + ", order_msg=" + order_msg + ", order_date="
				+ order_date + ", order_product=" + order_product + ", quantity=" + quantity + ", orderProduct="
				+ Arrays.toString(orderProduct) + ", orderQuantity=" + Arrays.toString(orderQuantity) + ", seqNum="
				+ seqNum + ", discount_price=" + discount_price + "]";
	}
	
	
}

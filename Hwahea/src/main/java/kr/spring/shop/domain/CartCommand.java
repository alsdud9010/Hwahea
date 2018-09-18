package kr.spring.shop.domain;


import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

public class CartCommand {
	
	private int cart_num;
	@NotEmpty
	private String cart_id;
	private int cart_price;

	@NotEmpty
	private int cart_product;
	private int quantity;
	private int seqCartNum;
	
	public int getCart_num() {
		return cart_num;
	}
	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}
	public String getCart_id() {
		return cart_id;
	}
	public void setCart_id(String cart_id) {
		this.cart_id = cart_id;
	}
	public int getCart_price() {
		return cart_price;
	}
	public void setCart_price(int cart_price) {
		this.cart_price = cart_price;
	}
	public int getCart_product() {
		return cart_product;
	}
	public void setCart_product(int cart_product) {
		this.cart_product = cart_product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public int getSeqCartNum() {
		return seqCartNum;
	}
	public void setSeqCartNum(int seqCartNum) {
		this.seqCartNum = seqCartNum;
	}
	@Override
	public String toString() {
		return "CartCommand [cart_num=" + cart_num + ", cart_id=" + cart_id + ", cart_price=" + cart_price
				+ ", cart_product=" + cart_product + ", quantity=" + quantity + ", seqCartNum=" + seqCartNum + "]";
	}
	
	
	
}

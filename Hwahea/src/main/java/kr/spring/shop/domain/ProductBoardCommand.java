package kr.spring.shop.domain;

import java.sql.Timestamp;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

public class ProductBoardCommand {
	
	//질문
	private int p_num;
	private int brand_num;
	private int pb_num;
	@NotEmpty
	private String pb_id;
	private Timestamp pb_dateTime;
	@NotEmpty
	private String pb_kind;
	@NotEmpty
	private String pb_content;
	private int pb_lock;
	
	//답변
	private int pbr_num;
	@NotEmpty
	private String pbr_id;
	private Timestamp pbr_dateTime;
	@NotEmpty
	private String pbr_content;
	@NotEmpty
	private int pbr_head;
	
	private int pb_cnt;
	
	public int getBrand_num() {
		return brand_num;
	}
	public void setBrand_num(int brand_num) {
		this.brand_num = brand_num;
	}
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public int getPb_num() {
		return pb_num;
	}
	public void setPb_num(int pb_num) {
		this.pb_num = pb_num;
	}
	public String getPb_id() {
		return pb_id;
	}
	public void setPb_id(String pb_id) {
		this.pb_id = pb_id;
	}
	public Timestamp getPb_dateTime() {
		return pb_dateTime;
	}
	public void setPb_dateTime(Timestamp pb_dateTime) {
		this.pb_dateTime = pb_dateTime;
	}
	public String getPb_kind() {
		return pb_kind;
	}
	public void setPb_kind(String pb_kind) {
		this.pb_kind = pb_kind;
	}
	public String getPb_content() {
		return pb_content;
	}
	public void setPb_content(String pb_content) {
		this.pb_content = pb_content;
	}
	public int getPb_lock() {
		return pb_lock;
	}
	public void setPb_lock(int pb_lock) {
		this.pb_lock = pb_lock;
	}
	
	public int getPbr_num() {
		return pbr_num;
	}
	public void setPbr_num(int pbr_num) {
		this.pbr_num = pbr_num;
	}
	public String getPbr_id() {
		return pbr_id;
	}
	public void setPbr_id(String pbr_id) {
		this.pbr_id = pbr_id;
	}
	public Timestamp getPbr_dateTime() {
		return pbr_dateTime;
	}
	public void setPbr_dateTime(Timestamp pbr_dateTime) {
		this.pbr_dateTime = pbr_dateTime;
	}
	public String getPbr_content() {
		return pbr_content;
	}
	public void setPbr_content(String pbr_content) {
		this.pbr_content = pbr_content;
	}
	public int getPbr_head() {
		return pbr_head;
	}
	public void setPbr_head(int pbr_head) {
		this.pbr_head = pbr_head;
	}
	
	public int getPb_cnt() {
		return pb_cnt;
	}
	public void setPb_cnt(int pb_cnt) {
		this.pb_cnt = pb_cnt;
	}
	@Override
	public String toString() {
		return "ProductBoardCommand [p_num=" + p_num + ", brand_num=" + brand_num + ", pb_num=" + pb_num + ", pb_id="
				+ pb_id + ", pb_dateTime=" + pb_dateTime + ", pb_kind=" + pb_kind + ", pb_content=" + pb_content
				+ ", pb_lock=" + pb_lock + ", pbr_num=" + pbr_num + ", pbr_id=" + pbr_id + ", pbr_dateTime="
				+ pbr_dateTime + ", pbr_content=" + pbr_content + ", pbr_head=" + pbr_head + ", pb_cnt=" + pb_cnt + "]";
	}
	
	
	
}

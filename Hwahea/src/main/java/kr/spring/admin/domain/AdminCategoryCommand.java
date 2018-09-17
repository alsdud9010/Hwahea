package kr.spring.admin.domain;

public class AdminCategoryCommand {
	private int category_num;
	private String category_name;
	private int category_kind;
	//세부 카테고리
	private int category_detail_num;
	private String category_detail_name;
	private String head_category;
	private int shopping_exist;
	
	//카테고리
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
	
	//세부 카테고리
	public int getCategory_detail_num() {
		return category_detail_num;
	}
	public void setCategory_detail_num(int category_detail_num) {
		this.category_detail_num = category_detail_num;
	}
	public String getCategory_detail_name() {
		return category_detail_name;
	}
	public void setCategory_detail_name(String category_detail_name) {
		this.category_detail_name = category_detail_name;
	}
	public String getHead_category() {
		return head_category;
	}
	public void setHead_category(String head_category) {
		this.head_category = head_category;
	}
	public int getShopping_exist() {
		return shopping_exist;
	}
	public void setShopping_exist(int shopping_exist) {
		this.shopping_exist = shopping_exist;
	}
	
	@Override
	public String toString() {
		return "AdminCategoryCommand [category_num=" + category_num + ", category_name=" + category_name
				+ ", category_kind=" + category_kind + ", category_detail_num=" + category_detail_num
				+ ", category_detail_name=" + category_detail_name + ", head_category=" + head_category
				+ ", shopping_exist=" + shopping_exist + "]";
	}

}

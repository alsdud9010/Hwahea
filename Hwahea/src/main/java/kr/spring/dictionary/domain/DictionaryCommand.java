package kr.spring.dictionary.domain;

import org.hibernate.validator.constraints.NotEmpty;

public class DictionaryCommand {

	@NotEmpty
	private int i_num;
	@NotEmpty
	private String i_KName;
	@NotEmpty
	private String i_EName;
	@NotEmpty
	private String i_prop; //배합목적
	private String i_grade; //EWG 등급
	private String i_datagrade;
	private String i_warning; //20가지 주의성분
	private String i_oilly;
	private String i_dry;
	private String i_sensitive;
	private String i_func; //기능성여부
	private String i_allergie; //알러지성분여부
	
	public int getI_num() {
		return i_num;
	}
	public void setI_num(int i_num) {
		this.i_num = i_num;
	}
	public String getI_KName() {
		return i_KName;
	}
	public void setI_KName(String i_KName) {
		this.i_KName = i_KName;
	}
	public String getI_EName() {
		return i_EName;
	}
	public void setI_EName(String i_EName) {
		this.i_EName = i_EName;
	}
	public String getI_prop() {
		return i_prop;
	}
	public void setI_prop(String i_prop) {
		this.i_prop = i_prop;
	}
	public String getI_grade() {
		return i_grade;
	}
	public void setI_grade(String i_grade) {
		this.i_grade = i_grade;
	}
	public String getI_datagrade() {
		return i_datagrade;
	}
	public void setI_datagrade(String i_datagrade){
		this.i_datagrade = i_datagrade;
	}
	public String getI_warning() {
		return i_warning;
	}
	public void setI_warning(String i_warning) {
		this.i_warning = i_warning;
	}
	public String getI_oilly() {
		return i_oilly;
	}
	public void setI_oilly(String i_oilly) {
		this.i_oilly = i_oilly;
	}
	public String getI_dry() {
		return i_dry;
	}
	public void setI_dry(String i_dry) {
		this.i_dry = i_dry;
	}
	public String getI_sensitive() {
		return i_sensitive;
	}
	public void setI_sensitive(String i_sensitive) {
		this.i_sensitive = i_sensitive;
	}
	public String getI_func() {
		return i_func;
	}
	public void setI_func(String i_func) {
		this.i_func = i_func;
	}
	public String getI_allergie() {
		return i_allergie;
	}
	public void setI_allergie(String i_allergie) {
		this.i_allergie = i_allergie;
	}
	@Override
	public String toString() {
		return "DictionaryCommand [i_num=" + i_num + ", i_KName=" + i_KName + ", i_EName=" + i_EName + ", i_prop="
				+ i_prop + ", i_grade=" + i_grade + ", i_datagrade=" + i_datagrade + ", i_warning=" + i_warning
				+ ", i_oilly=" + i_oilly + ", i_dry=" + i_dry + ", i_sensitive=" + i_sensitive + ", i_func=" + i_func
				+ ", i_allergie=" + i_allergie + "]";
	}
}

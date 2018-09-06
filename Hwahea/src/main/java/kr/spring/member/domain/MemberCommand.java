package kr.spring.member.domain;

import java.sql.Date;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;


public class MemberCommand {
	@Pattern(regexp="^[A-Za-z0-9+]{4,12}$")
	private String m_id;
	private int auth;
	@NotEmpty
	private String m_name;
	@Size(min=4,max=16)
	private String m_passwd;
	@NotEmpty
	private String m_profile;
	@NotEmpty
	private String m_nickname;
	@NotEmpty
	private String m_gender;
	@NotEmpty
	private String m_havechild;
	@NotEmpty
	private String m_age;
	@NotEmpty
	private String m_skintype;
	private int m_atopy;
	private int m_pimple;
	private int m_susceptilbility;
	@NotEmpty
	private String m_takename;
	@NotEmpty
	private String m_phone1;
	@NotEmpty
	private String m_phone2;
	@NotEmpty
	private String m_phone3;
	private String m_zipphone1;
	private String m_zipphone2;
	private String m_zipphone3;
	@Email
	@NotEmpty
	private String m_email;
	@Size(min=5,max=5)
	private String m_zipcode;
	@NotEmpty
	private String m_address1;
	private String m_address2;
	private int m_point;
	private Date m_reg_date;
	
	//비밀번호 일치 여부 체크
	public boolean isCheckedPasswd(String userPasswd) {
		if(auth > 0 && m_passwd.equals(userPasswd)) {
			return true;
		}
		return false;
	}

	@Override
	public String toString() {
		return "MemberCommand [m_id=" + m_id + ", auth=" + auth + ", m_name=" + m_name + ", m_passwd=" + m_passwd
				+ ", m_profile=" + m_profile + ", m_nickname=" + m_nickname + ", m_gender=" + m_gender
				+ ", m_havechild=" + m_havechild + ", m_age=" + m_age + ", m_skintype=" + m_skintype + ", m_atopy="
				+ m_atopy + ", m_pimple=" + m_pimple + ", m_susceptilbility=" + m_susceptilbility + ", m_takename="
				+ m_takename + ", m_phone1=" + m_phone1 + ", m_phone2=" + m_phone2 + ", m_phone3=" + m_phone3
				+ ", m_zipphone1=" + m_zipphone1 + ", m_zipphone2=" + m_zipphone2 + ", m_zipphone3=" + m_zipphone3
				+ ", m_email=" + m_email + ", m_zipcode=" + m_zipcode + ", m_address1=" + m_address1 + ", m_address2="
				+ m_address2 + ", m_point=" + m_point + ", m_reg_date=" + m_reg_date + "]";
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_passwd() {
		return m_passwd;
	}

	public void setM_passwd(String m_passwd) {
		this.m_passwd = m_passwd;
	}

	public String getM_profile() {
		return m_profile;
	}

	public void setM_profile(String m_profile) {
		this.m_profile = m_profile;
	}

	public String getM_nickname() {
		return m_nickname;
	}

	public void setM_nickname(String m_nickname) {
		this.m_nickname = m_nickname;
	}

	public String getM_gender() {
		return m_gender;
	}

	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}

	public String getM_havechild() {
		return m_havechild;
	}

	public void setM_havechild(String m_havechild) {
		this.m_havechild = m_havechild;
	}

	public String getM_age() {
		return m_age;
	}

	public void setM_age(String m_age) {
		this.m_age = m_age;
	}

	public String getM_skintype() {
		return m_skintype;
	}

	public void setM_skintype(String m_skintype) {
		this.m_skintype = m_skintype;
	}

	public int getM_atopy() {
		return m_atopy;
	}

	public void setM_atopy(int m_atopy) {
		this.m_atopy = m_atopy;
	}

	public int getM_pimple() {
		return m_pimple;
	}

	public void setM_pimple(int m_pimple) {
		this.m_pimple = m_pimple;
	}

	public int getM_susceptilbility() {
		return m_susceptilbility;
	}

	public void setM_susceptilbility(int m_susceptilbility) {
		this.m_susceptilbility = m_susceptilbility;
	}

	public String getM_takename() {
		return m_takename;
	}

	public void setM_takename(String m_takename) {
		this.m_takename = m_takename;
	}

	public String getM_phone1() {
		return m_phone1;
	}

	public void setM_phone1(String m_phone1) {
		this.m_phone1 = m_phone1;
	}

	public String getM_phone2() {
		return m_phone2;
	}

	public void setM_phone2(String m_phone2) {
		this.m_phone2 = m_phone2;
	}

	public String getM_phone3() {
		return m_phone3;
	}

	public void setM_phone3(String m_phone3) {
		this.m_phone3 = m_phone3;
	}

	public String getM_zipphone1() {
		return m_zipphone1;
	}

	public void setM_zipphone1(String m_zipphone1) {
		this.m_zipphone1 = m_zipphone1;
	}

	public String getM_zipphone2() {
		return m_zipphone2;
	}

	public void setM_zipphone2(String m_zipphone2) {
		this.m_zipphone2 = m_zipphone2;
	}

	public String getM_zipphone3() {
		return m_zipphone3;
	}

	public void setM_zipphone3(String m_zipphone3) {
		this.m_zipphone3 = m_zipphone3;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_zipcode() {
		return m_zipcode;
	}

	public void setM_zipcode(String m_zipcode) {
		this.m_zipcode = m_zipcode;
	}

	public String getM_address1() {
		return m_address1;
	}

	public void setM_address1(String m_address1) {
		this.m_address1 = m_address1;
	}

	public String getM_address2() {
		return m_address2;
	}

	public void setM_address2(String m_address2) {
		this.m_address2 = m_address2;
	}

	public int getM_point() {
		return m_point;
	}

	public void setM_point(int m_point) {
		this.m_point = m_point;
	}

	public Date getM_reg_date() {
		return m_reg_date;
	}

	public void setM_reg_date(Date m_reg_date) {
		this.m_reg_date = m_reg_date;
	}
}




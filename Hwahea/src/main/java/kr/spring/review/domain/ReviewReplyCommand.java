package kr.spring.review.domain;

import kr.spring.util.DurationFromNow;
import org.hibernate.validator.constraints.NotEmpty;


public class ReviewReplyCommand {
	private int rere_num;//��� �ĺ� ��ȣ
	private String re_id;//��� �ۼ��� �г���
	private String rere_ip;//��� �ۼ���IP
	@NotEmpty
	private String rere_content;//��� ����
	private String rere_regdate;//��� �ۼ���
	private int rere_depth;//������ ����(������ �� ����)
	private int rere_parentnum;//�θ� ��� ��ȣ, �θ� ����� ��� 0
	private int re_num;//�ش� ����� �θ� ���� �� ��ȣ
	
	private String m_id;
	private String m_auth;
	
	
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_auth() {
		return m_auth;
	}
	public void setM_auth(String m_auth) {
		this.m_auth = m_auth;
	}
	public int getRere_num() {
		return rere_num;
	}
	public void setRere_num(int rere_num) {
		this.rere_num = rere_num;
	}
	public String getRe_id() {
		return re_id;
	}
	public void setRe_id(String re_id) {
		this.re_id = re_id;
	}
	public String getRere_ip() {
		return rere_ip;
	}
	public void setRere_ip(String rere_ip) {
		this.rere_ip = rere_ip;
	}
	public String getRere_content() {
		return rere_content;
	}
	public void setRere_content(String rere_content) {
		this.rere_content = rere_content;
	}
	public String getRere_regdate() {
		return rere_regdate;
	}
	public void setRere_regdate(String rere_regdate) {
		this.rere_regdate = DurationFromNow.getTimeDiffLabel(rere_regdate);
	}
	public int getRere_depth() {
		return rere_depth;
	}
	public void setRere_depth(int rere_depth) {
		this.rere_depth = rere_depth;
	}
	public int getRere_parentnum() {
		return rere_parentnum;
	}
	public void setRere_parentnum(int rere_parentnum) {
		this.rere_parentnum = rere_parentnum;
	}
	public int getRe_num() {
		return re_num;
	}
	public void setRe_num(int re_num) {
		this.re_num = re_num;
	}
	
	
	@Override
	public String toString() {
		return "ReviewReplyCommand [rere_num=" + rere_num + ", re_id=" + re_id + ", rere_ip=" + rere_ip
				+ ", rere_content=" + rere_content + ", rere_regdate=" + rere_regdate + ", rere_depth=" + rere_depth
				+ ", rere_parentnum=" + rere_parentnum + ", re_num=" + re_num + ", m_id=" + m_id + ", m_auth="
				+ m_auth + "]";
	}
	
}

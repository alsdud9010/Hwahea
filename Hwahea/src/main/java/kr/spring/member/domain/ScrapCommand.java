package kr.spring.member.domain;

public class ScrapCommand {
	private String m_id;
	private int scrap_kind;
	private int scrap_object;
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public int getScrap_kind() {
		return scrap_kind;
	}
	@Override
	public String toString() {
		return "ScrapCommand [m_id=" + m_id + ", scrap_kind=" + scrap_kind + ", scrap_object=" + scrap_object + "]";
	}
	public void setScrap_kind(int scrap_kind) {
		this.scrap_kind = scrap_kind;
	}
	public int getScrap_object() {
		return scrap_object;
	}
	public void setScrap_object(int scrap_object) {
		this.scrap_object = scrap_object;
	}
}

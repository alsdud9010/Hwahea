package kr.spring.bookmark.domain;



public class BookmarkCommand {
	
	private int bookmark_num;
	private int bookmark_kind;
	private String bookmark_detail;
	private String m_id;
	
	public int getBookmark_num() {
		return bookmark_num;
	}
	public void setBookmark_num(int bookmark_num) {
		this.bookmark_num = bookmark_num;
	}
	public int getBookmark_kind() {
		return bookmark_kind;
	}
	public void setBookmark_kind(int bookmark_kind) {
		this.bookmark_kind = bookmark_kind;
	}
	public String getBookmark_detail() {
		return bookmark_detail;
	}
	public void setBookmark_detail(String bookmark_detail) {
		this.bookmark_detail = bookmark_detail;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	@Override
	public String toString() {
		return "BookmarkCommand [bookmark_num=" + bookmark_num + ", bookmark_kind=" + bookmark_kind
				+ ", bookmark_detail=" + bookmark_detail + ", m_id=" + m_id + "]";
	}
	
	
	
	

}

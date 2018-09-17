package kr.spring.member.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.spring.member.domain.MemberCommand;
import kr.spring.review.domain.ReviewCommand;

public interface MemberMapper {
	@Insert("INSERT INTO member (m_id) VALUES(#{m_id})")
	public void insert(MemberCommand member);
	
	@Insert("INSERT INTO member_detail (m_id,m_name,m_passwd,m_nickname,m_gender,m_havechild,m_age,m_skintype,m_atopy,m_pimple,m_susceptilbility,m_phone1,m_phone2,m_phone3,m_zipphone1,m_zipphone2,m_zipphone3,m_email,m_zipcode,m_address1,m_address2,m_reg_date,m_point) "
			+ "VALUES (#{m_id},#{m_name},#{m_passwd},#{m_nickname},#{m_gender},#{m_havechild},#{m_age},#{m_skintype,jdbcType=INTEGER},#{m_atopy,jdbcType=INTEGER},#{m_pimple,jdbcType=INTEGER},#{m_susceptilbility,jdbcType=INTEGER},#{m_phone1},#{m_phone2},#{m_phone3},#{m_zipphone1,jdbcType=VARCHAR},#{m_zipphone2,jdbcType=VARCHAR},#{m_zipphone3,jdbcType=VARCHAR},#{m_email},#{m_zipcode},#{m_address1},#{m_address2,jdbcType=VARCHAR},SYSDATE,#{m_point,jdbcType=INTEGER})")
	public void insertDetail(MemberCommand member);
	
	@Select("SELECT * FROM member m LEFT OUTER JOIN member_detail d ON m.m_id=d.m_id WHERE m.m_id=#{m_id}")
	public MemberCommand selectMember(String m_id);
	
	@Select("SELECT * FROM (SELECT a.* FROM (SELECT b.*, r.re_id FROM member_detail b LEFT JOIN (SELECT re_id FROM review)r ON b.m_id = r.re_id)a) WHERE m_id=#{m_id}")
	public List<MemberCommand> memberDetail(String m_id);
	
	@Select("SELECT * FROM (SELECT a.* FROM (SELECT b.*, r.re_id FROM member_detail b LEFT JOIN (SELECT re_id FROM review)r ON b.m_id = r.re_id)a)")
	public List<MemberCommand> memberDetailList();
	
	/*내 리뷰*/
	@Select("SELECT * FROM (SELECT a.*, rownum rnum FROM (SELECT * FROM review re left join (SELECT re_num,COUNT(*) rere_num FROM review_reply GROUP BY re_num)r ON re.re_num = r.num WHERE re.re_id = ? ORDER BY re.re_num DESC)a) WHERE rnum >= ? AND rnum <= ?")
	public ReviewCommand selectReview(String re_id);
	
	/*주문한 상품 정보 출력*/
	@Select("SELECT * FROM CART INNER JOIN MEMBER ON CART.CART_ID = MEMBER.M_ID WHERE CART.CART_ID = #{m_id}")
	public MemberCommand selectCart(String m_id);
	
	public void update(MemberCommand member);
	
	@Update("UPDATE member SET auth=0 WHERE m_id=#{m_id")
	public void delete(String m_id);
	
	@Delete("DELETE FROM member_datail WHERE m_id=#{m_id}")
	public void deleteDetail(String m_id);

}

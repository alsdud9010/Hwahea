package kr.spring.member.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.spring.event.domain.EventCommand;
import kr.spring.member.domain.MemberCommand;
import kr.spring.member.domain.ScrapCommand;
import kr.spring.plus.domain.PlusCommand;
import kr.spring.review.domain.ReviewCommand;
import kr.spring.shop.domain.CartCommand;
import kr.spring.shop.domain.OrderCommand;

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
	@Select("SELECT * FROM (SELECT a.*, rownum rnum FROM (SELECT * FROM review re left join (SELECT re_num,COUNT(*) rere_num FROM review_reply GROUP BY re_num)r ON re.re_num = r.rere_num WHERE re.re_id = #{m_id} ORDER BY re.re_num DESC)a)")
	public ReviewCommand selectReview(String re_id);
	
	/*스크랩*/
	@Select("SELECT s.* FROM scrap s, member_detail m WHERE s.m_id=m.m_id AND s.scrap_kind=0")
	public ScrapCommand selectScrap(String m_id);
	
	/*스크랩 화플*/
	@Select("SELECT pb.* FROM scrap s, plus_board pb WHERE s.m_id=#{m_id} AND s.scrap_kind=0 AND s.scrap_object=pb.hp_num")
	public List<PlusCommand> selectScrapPlus(String m_id);
	
	/*스크랩*/
	@Select("SELECT s.* FROM scrap s, member_detail m WHERE s.m_id = m.m_id AND s.scrap_kind=1")
	public ScrapCommand selectScrapre(String m_id);
	
	/*스크랩 리뷰*/
	@Select("SELECT rv.* FROM scrap s, review rv WHERE s.m_id = #{m_id} AND s.scrap_kind = 1 AND s.scrap_object = rv.re_num")
	public List<ReviewCommand> selectScrapReview(String m_id);
	
	/*스크랩된 리뷰를 쓴 사용자의 정보*/
	@Select("SELECT * FROM member_detail WHERE m_id=#{re_id}")
	public List<MemberCommand> selectScrapUser(String re_id);
	
	/*주문한 상품 정보 출력*/
	@Select("SELECT po.*,od.* FROM product_order po, order_detail od WHERE po.order_num=od.order_num AND po.order_id=#{m_id}") 
	public List<OrderCommand> selectCartOrder(String m_id);
	
	/*장바구니 상품 정보 출력*/
	@Select("SELECT ct.*,cd.*,pd.* FROM cart ct, cart_detail cd, product pd WHERE ct.cart_num = cd.cart_num AND ct.CART_ID = #{m_id} AND pd.p_num = ct.CART_NUM")
	public List<CartCommand> selectCart(String m_id);
	
	/*내가 참여중인 이벤트*/
	@Select("SELECT et.*,er.* FROM event et, EVENT_REQUEST er WHERE er.my_event = et.event_num and er.m_id = #{m_id}")
	public List<EventCommand> selectEvent(String m_id);
	@Select("SELECT et.*,er.* FROM event et, EVENT_REQUEST er WHERE er.my_event = et.event_num and er.m_id = #{m_id}")
	public EventCommand selectEvent2(String m_id);
	
	/*찜한 이벤트*/
	@Select("SELECT distinct  et.*, er.* FROM event et, event_request er WHERE et.event_num = er.MY_EVENT AND et.EVENT_LIKE = 1 AND er.M_ID = #{m_id}")
	public List<EventCommand> selectZzimEvent(String m_id);
	
	public void update(MemberCommand member);
	
	@Update("UPDATE member SET m_auth=0 WHERE m_id=#{m_id}")
	public void delete(String m_id);
	
	@Delete("DELETE FROM member_datail WHERE m_id=#{m_id}")
	public void deleteDetail(String m_id);

}

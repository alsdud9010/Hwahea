package kr.spring.member.service;

import java.util.List;

import kr.spring.event.domain.EventCommand;
import kr.spring.member.domain.MemberCommand;
import kr.spring.member.domain.ScrapCommand;
import kr.spring.plus.domain.PlusCommand;
import kr.spring.review.domain.ReviewCommand;
import kr.spring.shop.domain.CartCommand;
import kr.spring.shop.domain.OrderCommand;

public interface MemberService {
	public void insert(MemberCommand member);
	public MemberCommand selectMember(String m_id);
	public List<MemberCommand> memberDetail(String m_id);
	public List<MemberCommand> memberDetailList();
	public ReviewCommand selectReview(String re_id);
	public ScrapCommand selectScrap(String m_id);
	public List<PlusCommand> selectScrapPlus(String m_id);
	/*public List<ReviewCommand> selectScrapReview(String m_id);
	public List<MemberCommand> selectScrapUser(String re_id);*/  
	public List<OrderCommand> selectCartOrder(String m_id);
	public List<CartCommand> selectCart(String m_id); 
	public List<EventCommand> selectEvent(String m_id);
	public List<EventCommand> selectZzimEvent(String m_id);
	public EventCommand selectEvent2(String m_id);
	public void update(MemberCommand member);
	public void delete(String m_id);
}
 
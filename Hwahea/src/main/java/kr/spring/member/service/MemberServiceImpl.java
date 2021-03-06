package kr.spring.member.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.event.domain.EventCommand;
import kr.spring.member.dao.MemberMapper;
import kr.spring.member.domain.MemberCommand;
import kr.spring.member.domain.ScrapCommand;
import kr.spring.plus.domain.PlusCommand;
import kr.spring.review.domain.ReviewCommand;
import kr.spring.shop.domain.CartCommand;
import kr.spring.shop.domain.OrderCommand;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Resource
	private MemberMapper memberMapper;
	
	@Override
	public void insert(MemberCommand member) {
		memberMapper.insert(member); 
		memberMapper.insertDetail(member);
	}
	
	@Override
	public MemberCommand selectMember(String m_id) {
		return memberMapper.selectMember(m_id);
	}
	
	@Override
	public List<MemberCommand> memberDetail(String m_id) {
		return memberMapper.memberDetail(m_id);
	}
	
	@Override
	public List<MemberCommand> memberDetailList(String c_code) {
		return memberMapper.memberDetailList(c_code);
	}
	
	@Override
	public ScrapCommand selectScrap(String m_id) {
		return memberMapper.selectScrap(m_id);
	}
	
	@Override
	public ReviewCommand selectReview(String re_id) {
		return memberMapper.selectReview(re_id);
	}
	@Override
	public List<PlusCommand> selectScrapPlus(String m_id) {
		return memberMapper.selectScrapPlus(m_id);
	}
	/*===================================���� ��ũ��==================================================
	@Override
	public List<ReviewCommand> selectScrapReview(String m_id);{
		return memberMapper.selectScrapReview(m_id);
	}
	
	@Override
	public List<MemberCommand> selectScrapUser(String re_id);{
		return memberMapper.selectScrapUser(re_id);
	}*/  
	
	@Override
	public List<OrderCommand> selectCartOrder(String m_id){
		return memberMapper.selectCartOrder(m_id);
	}
	
	@Override
	public List<CartCommand> selectCart(String m_id){
		return memberMapper.selectCart(m_id);
	}
	
	@Override
	public List<EventCommand> selectEvent(String m_id){
		return memberMapper.selectEvent(m_id);
	}
	@Override
	public EventCommand selectEvent2(String m_id) {
		return memberMapper.selectEvent2(m_id);
	}
	@Override
	public List<EventCommand> selectZzimEvent(String m_id){
		return memberMapper.selectZzimEvent(m_id);
	}
	
	@Override
	public void update(MemberCommand member) {
		memberMapper.update(member);
	}

	@Override
	public void delete(String m_id) {
		memberMapper.delete(m_id);
		memberMapper.deleteDetail(m_id);
	}

	


}

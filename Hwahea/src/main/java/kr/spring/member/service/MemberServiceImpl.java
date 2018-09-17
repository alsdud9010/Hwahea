package kr.spring.member.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.member.dao.MemberMapper;
import kr.spring.member.domain.MemberCommand;
import kr.spring.review.domain.ReviewCommand;

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
	public List<MemberCommand> memberDetailList() {
		return memberMapper.memberDetailList();
	}
	
	@Override
	public ReviewCommand selectReview(String re_id) {
		return memberMapper.selectReview(re_id);
	}
	
	@Override
	public MemberCommand selectCart(String m_id) {
		return memberMapper.selectCart(m_id);
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

package kr.spring.member.service;

import java.util.List;

import kr.spring.member.domain.MemberCommand;
import kr.spring.review.domain.ReviewCommand;

public interface MemberService {
	public void insert(MemberCommand member);
	public MemberCommand selectMember(String m_id);
	public List<MemberCommand> memberDetail(String m_id);
	public ReviewCommand selectReview(String re_id);
	public MemberCommand selectCart(String m_id);
	public void update(MemberCommand member);
	public void delete(String m_id);
}

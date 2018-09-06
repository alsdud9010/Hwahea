package kr.spring.member.service;

import kr.spring.member.domain.MemberCommand;

public interface MemberService {
	public void insert(MemberCommand member);
	public MemberCommand selectMember(String m_id);
	public void update(MemberCommand member);
	public void delete(String m_id);
}

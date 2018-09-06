package kr.spring.member.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.spring.member.domain.MemberCommand;

public interface MemberMapper {
	@Insert("INSERT INTO member (id) VALUES(#{id}")
	public void insert(MemberCommand member);
	
	@Insert("INSERT INTO member_detail (m_id,m_name,m_passwd,m_profile,m_nickname,m_gender,m_havechild,m_age,m_skintype,m_atopy,m_pimple,m_susceptilbility,m_takename,m_phone1,m_phone2,m_phone3,m_zipphone1,m_zipphone2,m_zipphone3,m_email,m_zipcode,m_address1,m_address2,m_point,m_reg_date) "
			+ "VALUES (#{m_id},#{m_name},#{m_passwd},#{m_profile},#{m_nickname},#{m_gender},#{m_havechild},#{m_age},#{m_skintype},#{m_atopy},#{m_pimple},#{m_susceptilbility},#{m_takename},#{m_phone1},#{m_phone2},#{m_phone3},#{m_zipphone1},#{m_zipphone2},#{m_zipphone3},#{m_email},#{m_zipcode},#{m_address1},#{m_address2},#{m_point},SYSDATE)")
	public void insertDetail(MemberCommand member);
	
	@Select("SELECT * FROM member m LEFT OUTER JOIN member_detail d ON m.m_id=d.m_id WHERE m.m_id=#{m_id}")
	public MemberCommand selectMember(String m_id);
	
	@Update("UPDATE member_detail SET m_name=#{m_name},m_passwd=#{m_passwd},m_profile=#{m_profile},m_nickname=#{m_nickname},m_gender=#{m_gender},m_havechild=#{m_havechild},m_age=#{m_age},m_skintype=#{m_skintype},m_atopy=#{m_atopy},m_pimple=#{m_pimple},m_susceptilbility=#{m_susceptilbility},m_takename=#{m_takename},m_phone1=#{m_phone1},m_phone2=#{m_phone2},m_phone3=#{m_phone3},m_zipphone1=#{m_zipphone1},m_zipphone2=#{m_zipphone2},m_zipphone3=#{m_zipphone3},m_zipcode=#{m_zipcode},m_address1=#{m_address1},m_address2=#{m_address2} WHERE m_id=#{m_id}")
	public void update(MemberCommand member);
	
	@Update("UPDATE member SET auth=0 WHERE m_id=#{m_id")
	public void delete(String m_id);
	
	@Delete("DELETE FROM member_datail WHERE m_id=#{m_id}")
	public void deleteDetail(String m_id);

}

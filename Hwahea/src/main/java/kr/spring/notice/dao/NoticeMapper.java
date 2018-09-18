package kr.spring.notice.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import kr.spring.notice.domain.FaqCommand;
import kr.spring.notice.domain.NoticeCommand;
import kr.spring.notice.domain.OnetooneCommand;
import kr.spring.notice.domain.OnetooneReplyCommand;

public interface NoticeMapper {
	/*===========��������===========*/
	//�������� ���
	public List<NoticeCommand> selectNoticeList(Map<String,Object> map);
	
	//�������� �з��� ���
	@Select("SELECT * FROM notice WHERE notice_kind=#{notice_kind} ORDER BY notice_num")
	public List<NoticeCommand> selectCommonList(Integer common);
	@Select("SELECT * FROM notice WHERE notice_kind=#{notice_kind} ORDER BY notice_num")
	public List<NoticeCommand> selectBlindList(Integer blind);
	@Select("SELECT * FROM notice WHERE notice_kind=#{notice_kind} ORDER BY notice_num")
	public List<NoticeCommand> selectWinnerList(Integer winner);
	
	//�������� ��� ����¡
	public int selectRowCountNotice(Map<String,Object> map);
	
	//�������� �󼼺���
	@Select("SELECT * FROM notice WHERE notice_num=#{notice_num}")
	public NoticeCommand selectNoticeDetail(Integer notice_num);
	
	/*===========FAQ==============*/
	//FAQ ���
	public List<FaqCommand> selectFaqList(Map<String,Object> map);
	
	//FAQ �з��� ���
	@Select("SELECT * FROM faq WHERE faq_kind=#{faq_kind} ORDER BY faq_num")
	public List<FaqCommand> selectTopList(Integer top);
	@Select("SELECT * FROM faq WHERE faq_kind=#{faq_kind} ORDER BY faq_num")
	public List<FaqCommand> selectMembershipList(Integer membership);
	@Select("SELECT * FROM faq WHERE faq_kind=#{faq_kind} ORDER BY faq_num")
	public List<FaqCommand> selectOrderPayList(Integer orderpay);
	@Select("SELECT * FROM faq WHERE faq_kind=#{faq_kind} ORDER BY faq_num")
	public List<FaqCommand> selectDeliveryList(Integer delivery);
	@Select("SELECT * FROM faq WHERE faq_kind=#{faq_kind} ORDER BY faq_num")
	public List<FaqCommand> selectRefundList(Integer refund);
	@Select("SELECT * FROM faq WHERE faq_kind=#{faq_kind} ORDER BY faq_num")
	public List<FaqCommand> selectEventQList(Integer eventq);
	@Select("SELECT * FROM faq WHERE faq_kind=#{faq_kind} ORDER BY faq_num")
	public List<FaqCommand> selectDictQList(Integer dictq);
	
	//FAQ ����¡
	public int selectRowCountFaq(Map<String,Object> map);
	
	/*===========1:1����============*/
	//1:1���� ���
	public List<OnetooneCommand> selectOnetooneList(Map<String,Object> map);
	
	//1:1��� ����¡
	public int selectRowCountOnetoone(Map<String,Object> map);
	
	/*===========1:1���� ���=========*/
	//1:1���� ��� ���
	public List<OnetooneReplyCommand> selectOnetooneReply(Integer one_num);
	
	//1:1���� ��� ���
	public void insertReply(OnetooneReplyCommand onetooneReply);	
	
	
}

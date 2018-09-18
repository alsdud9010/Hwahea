package kr.spring.notice.service;

import java.util.List;
import java.util.Map;

import kr.spring.notice.domain.FaqCommand;
import kr.spring.notice.domain.NoticeCommand;
import kr.spring.notice.domain.OnetooneCommand;
import kr.spring.notice.domain.OnetooneReplyCommand;

public interface NoticeService {
	/*===========��������===========*/
	//�������� ���
	public List<NoticeCommand> selectNoticeList(Map<String,Object> map);
	
	//�������� �з��� ���
	public List<NoticeCommand> selectCommonList(Integer common);
	public List<NoticeCommand> selectBlindList(Integer blind);
	public List<NoticeCommand> selectWinnerList(Integer winner);
	
	//�������� ��� ����¡
	public int selectRowCountNotice(Map<String,Object> map);
	
	//�������� �󼼺���
	public NoticeCommand selectNoticeDetail(Integer notice_num);
	
	/*===========FAQ==============*/
	//FAQ ���
	public List<FaqCommand> selectFaqList(Map<String,Object> map);
	
	//FAQ �з��� ���
	public List<FaqCommand> selectTopList(Integer top);
	public List<FaqCommand> selectMembershipList(Integer membership);
	public List<FaqCommand> selectOrderPayList(Integer orderpay);
	public List<FaqCommand> selectDeliveryList(Integer delivery);
	public List<FaqCommand> selectRefundList(Integer refund);
	public List<FaqCommand> selectEventQList(Integer eventq);
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

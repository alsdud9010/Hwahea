package kr.spring.notice.service;

import java.util.List;
import java.util.Map;

import kr.spring.notice.domain.FaqCommand;
import kr.spring.notice.domain.NoticeCommand;
import kr.spring.notice.domain.OnetooneCommand;
import kr.spring.notice.domain.OnetooneReplyCommand;

public interface NoticeService {
	/*===========공지사항===========*/
	//공지사항 목록
	public List<NoticeCommand> selectNoticeList(Map<String,Object> map);
	
	//공지사항 분류별 목록
	public List<NoticeCommand> selectCommonList(Integer common);
	public List<NoticeCommand> selectBlindList(Integer blind);
	public List<NoticeCommand> selectWinnerList(Integer winner);
	
	//공지사항 목록 페이징
	public int selectRowCountNotice(Map<String,Object> map);
	
	//공지사항 상세보기
	public NoticeCommand selectNoticeDetail(Integer notice_num);
	
	/*===========FAQ==============*/
	//FAQ 목록
	public List<FaqCommand> selectFaqList(Map<String,Object> map);
	
	//FAQ 분류별 목록
	public List<FaqCommand> selectTopList(Integer top);
	public List<FaqCommand> selectMembershipList(Integer membership);
	public List<FaqCommand> selectOrderPayList(Integer orderpay);
	public List<FaqCommand> selectDeliveryList(Integer delivery);
	public List<FaqCommand> selectRefundList(Integer refund);
	public List<FaqCommand> selectEventQList(Integer eventq);
	public List<FaqCommand> selectDictQList(Integer dictq);
	
	//FAQ 페이징
	public int selectRowCountFaq(Map<String,Object> map);
	
	/*===========1:1문의============*/
	//1:1문의 목록
	public List<OnetooneCommand> selectOnetooneList(Map<String,Object> map);
	
	//1:1목록 페이징
	public int selectRowCountOnetoone(Map<String,Object> map);
	
	/*===========1:1문의 댓글=========*/
	//1:1문의 댓글 목록
	public List<OnetooneReplyCommand> selectOnetooneReply(Integer one_num);
	
	//1:1문의 댓글 등록
	public void insertReply(OnetooneReplyCommand onetooneReply);
}

package kr.spring.notice.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.notice.dao.NoticeMapper;
import kr.spring.notice.domain.FaqCommand;
import kr.spring.notice.domain.NoticeCommand;
import kr.spring.notice.domain.OnetooneCommand;
import kr.spring.notice.domain.OnetooneReplyCommand;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{
	
	@Resource
	private NoticeMapper noticeMapper;

	@Override
	public List<NoticeCommand> selectNoticeList(Map<String, Object> map) {
		return noticeMapper.selectNoticeList(map);
	}
	
	@Override
	public List<NoticeCommand> selectCommonList(Integer common) {
		return noticeMapper.selectCommonList(common);
	}

	@Override
	public List<NoticeCommand> selectBlindList(Integer blind) {
		return noticeMapper.selectBlindList(blind);
	}

	@Override
	public List<NoticeCommand> selectWinnerList(Integer winner) {
		return noticeMapper.selectWinnerList(winner);
	}

	@Override
	public int selectRowCountNotice(Map<String, Object> map) {
		return noticeMapper.selectRowCountNotice(map);
	}

	@Override
	public NoticeCommand selectNoticeDetail(Integer notice_num) {
		return noticeMapper.selectNoticeDetail(notice_num);
	}

	@Override
	public List<FaqCommand> selectFaqList(Map<String, Object> map) {
		return noticeMapper.selectFaqList(map);
	}

	@Override
	public int selectRowCountFaq(Map<String, Object> map) {
		return noticeMapper.selectRowCountFaq(map);
	}
	
	@Override
	public List<FaqCommand> selectTopList(Integer top) {
		return noticeMapper.selectTopList(top);
	}

	@Override
	public List<FaqCommand> selectDeliveryList(Integer delivery) {
		return noticeMapper.selectDeliveryList(delivery);
	}
	
	@Override
	public List<FaqCommand> selectMembershipList(Integer membership) {
		return noticeMapper.selectMembershipList(membership);
	}

	@Override
	public List<FaqCommand> selectOrderPayList(Integer orderpay) {
		return noticeMapper.selectOrderPayList(orderpay);
	}

	@Override
	public List<FaqCommand> selectRefundList(Integer refund) {
		return noticeMapper.selectRefundList(refund);
	}

	@Override
	public List<FaqCommand> selectEventQList(Integer eventq) {
		return noticeMapper.selectEventQList(eventq);
	}

	@Override
	public List<FaqCommand> selectDictQList(Integer dictq) {
		return noticeMapper.selectDictQList(dictq);
	}

	@Override
	public List<OnetooneCommand> selectOnetooneList(Map<String, Object> map) {
		return noticeMapper.selectOnetooneList(map);
	}

	@Override
	public int selectRowCountOnetoone(Map<String, Object> map) {
		return noticeMapper.selectRowCountOnetoone(map);
	}

	@Override
	public List<OnetooneReplyCommand> selectOnetooneReply(Integer one_num) {
		return noticeMapper.selectOnetooneReply(one_num);
	}

	@Override
	public void insertReply(OnetooneReplyCommand onetooneReply) {
		// TODO Auto-generated method stub
		
	}
}

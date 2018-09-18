package kr.spring.notice.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.dictionary.domain.DictionaryCommand;
import kr.spring.event.domain.EventReplyCommand;
import kr.spring.notice.domain.FaqCommand;
import kr.spring.notice.domain.NoticeCommand;
import kr.spring.notice.domain.OnetooneReplyCommand;
import kr.spring.notice.service.NoticeService;
import kr.spring.util.PagingUtil;

@Controller
public class NoticeAjaxController {

	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;

	@Resource
	private NoticeService noticeService;

	/*===================��������====================*/
	@RequestMapping("/notice/noticeKind.do")
	@ResponseBody
	public Map<String, Object> getNoticeKind(@RequestParam("notice_kind") int kind){
		List<NoticeCommand> list = null;
		
		if(kind == 0) {//�Ϲ� �������� ���
			list = noticeService.selectCommonList(kind);
		}
		if(kind == 1) {//����ε� �������� ���
			list = noticeService.selectBlindList(kind);
		}
		if(kind == 2) {//�̺�Ʈ �������� ���
			list = noticeService.selectWinnerList(kind);
		}
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("list", list);
		
		return map;
	}
	
	/*===================FAQ===================*/
	@RequestMapping("/notice/faqKind.do")
	@ResponseBody
	public Map<String,Object> getFaqKind(@RequestParam("faq_kind") int kind){
		List<FaqCommand> list = null;
		
		if(log.isDebugEnabled()) {
			log.debug("<<faq_kind>> : " + kind);
		}
		
		if(kind == 0) {//TOP10 ���
			list = noticeService.selectTopList(kind);
		}
		if(kind == 1) {//ȸ��/����� ���
			list = noticeService.selectMembershipList(kind);
		}
		if(kind == 2) {//�ֹ�/���� ���
			list = noticeService.selectOrderPayList(kind);
		}
		if(kind == 3) {//��� ���
			list = noticeService.selectDeliveryList(kind);
		}
		if(kind == 4) {//��ȯ/��ǰ/ȯ��
			list = noticeService.selectRefundList(kind);
		}
		if(kind == 5) {//�̺�Ʈ
			list = noticeService.selectEventQList(kind);
		}
		if(kind == 6) {//���л���
			list = noticeService.selectDictQList(kind);
		}
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("list", list);
		
		return map;
	}
	
	/*===================1:1����===================*/
	//========= ��� ���
	@RequestMapping("/notice/oneReply.do")
	@ResponseBody
	public Map<String,Object> getOnetoone(@RequestParam("one_num") int one_num){

		if(log.isDebugEnabled()) {
			log.debug("<<one_num>> : " + one_num);
		}

		List<OnetooneReplyCommand> list = null;

		list = noticeService.selectOnetooneReply(one_num);

		Map<String,Object> map = new HashMap<String,Object>();
		map.put("list", list);

		return map;
	}
	
	//========= ��� ���
}

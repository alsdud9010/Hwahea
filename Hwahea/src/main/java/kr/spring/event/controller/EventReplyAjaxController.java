package kr.spring.event.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.event.domain.EventReplyCommand;
import kr.spring.event.service.EventService;
import kr.spring.util.PagingUtil;

@Controller
public class EventReplyAjaxController {

	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;

	@Resource
	private EventService eventService;
	
	//==========��۵��
	@RequestMapping("/event/writeReply.do")
	@ResponseBody
	public Map<String,String> writeReply(EventReplyCommand eventReplyCommand, HttpSession session, HttpServletRequest request){
		if(log.isDebugEnabled()) {
			log.debug("<<eventReplyCommand>> : " + eventReplyCommand);
		}

		Map<String,String> map = new HashMap<String,String>();

		String user_id = (String)session.getAttribute("user_id");
		if(user_id == null) {
			//�α��� �� ��
			map.put("result", "logout");
		}else {
			//���̵� ���
			eventReplyCommand.setM_id(user_id);

			//��� ���
			eventService.insertReply(eventReplyCommand);
			map.put("result", "success");
		}

		return map;
	}

	//��� ���
	@RequestMapping("/event/listReply.do")
	@ResponseBody
	public Map<String,Object> getList(@RequestParam(value="pageNum",defaultValue="1") int currentPage, @RequestParam("event_num") int event_num){

		if(log.isDebugEnabled()) {
			log.debug("<<currentPage>> : " + currentPage);
			log.debug("<<event_num>> : " + event_num);
		}

		Map<String,Object> map = new HashMap<String,Object>();
		map.put("event_num", event_num);

		//�� ���� ����
		int count = eventService.selectRowCountReply(map);

		PagingUtil page = new PagingUtil(currentPage, count, rowCount, pageCount, null);
		map.put("start", page.getStartCount());
		map.put("end", page.getEndCount());

		List<EventReplyCommand> list = null;
		if(count > 0) {
			list = eventService.selectEventReply(map);
		}else {
			list = Collections.emptyList(); //null�� �ƴ� ����ְ� ó��
		}

		Map<String,Object> mapJson = new HashMap<String,Object>();

		mapJson.put("count",count);
		mapJson.put("rowCount", rowCount);
		mapJson.put("list",list);

		return mapJson;
	}

	/*//��� ����
	@RequestMapping("/plus/deleteReply.do")
	@ResponseBody
	public Map<String, String> deleteReply(@RequestParam("hpre_num") int hpre_num, @RequestParam("id") String id, HttpSession session){

		if(log.isDebugEnabled()) {
			log.debug("<<hpre_num>> : "+hpre_num);
			log.debug("<<id>> : "+id);
		}

		Map<String, String> map = new HashMap<String, String>();

		String user_id = (String)session.getAttribute("user_id");

		if(user_id == null) {
			//�α����� �Ǿ����� ����
			map.put("result", "logout");
		}else if(user_id!=null && user_id.equals(id)) {
			//�α��� �Ǿ��ְ�, �α����� ���̵�� �ۼ��� ���̵� ��ġ��
			plusService.deleteReply(hpre_num);
			map.put("result", "success");
		}else {
			map.put("result", "wrongAccess");
		}

		return map;
	}

	//��� ����
	@RequestMapping("/plus/updateReply.do")
	@ResponseBody
	public Map<String,String> modifyReply(PlusReplyCommand plusReplyCommand, HttpSession session, HttpServletRequest request){

		if(log.isDebugEnabled()) {
			log.debug("<<plusReplyCommand>> : "+plusReplyCommand);
			log.debug(plusReplyCommand.getHpre_id());
			log.debug(request.getRemoteAddr());
		}

		Map<String,String> map = new HashMap<String,String>();

		String user_id = (String)session.getAttribute("user_id");


		if(user_id==null) {
			//�α��� �ȵ�
			map.put("result", "logout");
		}
		if(!user_id.equals(plusReplyCommand.getHpre_id())){
			//�α��� ���̵�� �ۼ��� ���̵� ����ġ
			map.put("result", "wrongAccess");
		}
		if(user_id.equals(plusReplyCommand.getHpre_id())) {
			//��� �ۼ��� ���̵�� �α��� ���̵� ��ġ
			//ip ���
			plusReplyCommand.setHpre_ip(request.getRemoteAddr());

			//��� ����
			plusService.updateReply(plusReplyCommand);
			map.put("result", "success");
		}

		return map;
	}*/

}

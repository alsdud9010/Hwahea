package kr.spring.plus.service;

import java.util.List;
import java.util.Map;

import kr.spring.plus.domain.PlusCommand;
import kr.spring.plus.domain.PlusReplyCommand;

public interface PlusService {
	//ºÎ¸ð±Û
	public List<PlusCommand> selectPlusList(Map<String,Object> map);
	
	public int selectRowCount (Map<String,Object> map);
	
	public void insertPlus(PlusCommand plus_board);
	
	public List<PlusCommand> selectPlus(Integer hp_num);
	
	public void plusHit(Integer hp_num);
	
	public void plusLike(Integer hp_num);
	
	public void plusScrap(Integer hp_num);
	
	public void updatePlus(PlusCommand plus_board);
	
	public void deletePlus(Integer hp_num);
	
	//´ñ±Û
	public List<PlusReplyCommand> selectPlusReply(Map<String,Object> map);
	
	public int selectRowCountReply(Map<String,Object> map);
	
	public void insertReply(PlusReplyCommand plusReply);
	
	public void updateReply(PlusReplyCommand plusReply);
	
	public void deleteReply(Integer hpre_num);
}

package kr.spring.plus.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.member.domain.MemberCommand;
import kr.spring.plus.dao.PlusMapper;
import kr.spring.plus.domain.PlusCommand;
import kr.spring.plus.domain.PlusReplyCommand;

@Service("plusService")
public class PlusServiceImpl implements PlusService{
	@Resource
	private PlusMapper plusMapper;

	@Override
	public List<PlusCommand> selectPlusMain(Map<String, Object> map) {
		return plusMapper.selectPlusMain(map);
	}

	@Override
	public List<PlusCommand> selectPlusList(Map<String, Object> map) {
		return plusMapper.selectPlusList(map);
	}
	
	@Override
	public int selectRowCount(Map<String, Object> map) {
		return plusMapper.selectRowCount(map);
	}

	@Override
	public void insertPlus(PlusCommand plus_board) {
		plusMapper.insertPlus(plus_board);
	}

	@Override
	public List<PlusCommand> selectPlus(Integer hp_num) {
		return plusMapper.selectPlus(hp_num);
	}

	@Override
	public void plusHit(Integer hp_num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void plusLike(Integer hp_num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void plusScrap(Integer hp_num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updatePlus(PlusCommand plus_board) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deletePlus(Integer hp_num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<PlusReplyCommand> selectPlusReply(Map<String, Object> map) {
		return plusMapper.selectPlusReply(map);
	}

	@Override
	public int selectRowCountReply(Map<String, Object> map) {
		return plusMapper.selectRowCountReply(map);
	}

	@Override
	public void insertReply(PlusReplyCommand plusReply) {
		plusMapper.insertReply(plusReply);
	}

	@Override
	public void updateReply(PlusReplyCommand plusReply) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteReply(Integer hpre_num) {
		// TODO Auto-generated method stub
		
	}

}

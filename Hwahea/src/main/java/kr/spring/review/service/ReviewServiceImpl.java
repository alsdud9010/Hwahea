package kr.spring.review.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.review.dao.ReviewMapper;
import kr.spring.review.domain.ReviewCommand;
import kr.spring.review.domain.ReviewReplyCommand;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService{
	
	@Resource
	private ReviewMapper reviewMapper;

	@Override
	public List<ReviewCommand> selectList(Map<String, Object> map) {
		return reviewMapper.selectList(map);
	}
	
	@Override
	public int selectRowCount(Map<String, Object> map) {
		return reviewMapper.selectRowCount(map);
	}
	
	@Override
	public List<ReviewCommand> selectMember(Map<String, Object> map) {
		return reviewMapper.selectMember(map);
	}

	@Override
	public void insert(ReviewCommand review) {
		reviewMapper.insert(review);
		
	}

	@Override
	public List<ReviewCommand> selectReview(Integer re_num) {
		return reviewMapper.selectReview(re_num);
	}
	
	@Override
	public ReviewCommand selectReview2(Integer re_num) {
		return reviewMapper.selectReview2(re_num);
	}

	@Override
	public void update(ReviewCommand review) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Integer num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ReviewReplyCommand> selectListReply(Map<String, Object> map) {
		return reviewMapper.selectListReply(map);
	}

	@Override
	public int selectRowCountReply(Map<String, Object> map) {
		return reviewMapper.selectRowCountReply(map);
	}

	@Override
	public void insertReply(ReviewReplyCommand reviewReply) {
		reviewMapper.insertReply(reviewReply);
		
	}

	@Override
	public void updateReply(ReviewReplyCommand reviewReply) {
		reviewMapper.updateReply(reviewReply);
		
	}

	@Override
	public void deleteReply(Integer rere_num) {
		reviewMapper.deleteReply(rere_num);
		
	}

	@Override
	public void deleteReplyByNum(Integer num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertEdit(ReviewCommand review) {
		reviewMapper.insertEdit(review);
		
	}


}

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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(ReviewCommand review) {
		reviewMapper.insert(review);
		
	}

	@Override
	public ReviewCommand selectReview(Integer num) {
		// TODO Auto-generated method stub
		return null;
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
		/*reviewMapper.insertReply(reviewReply);*/
		
	}

	@Override
	public void updateReply(ReviewReplyCommand reviewReply) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteReply(Integer re_num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteReplyByNum(Integer num) {
		// TODO Auto-generated method stub
		
	}
}

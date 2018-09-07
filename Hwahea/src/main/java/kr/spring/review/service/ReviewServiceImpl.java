package kr.spring.review.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.review.dao.ReviewMapper;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService{
	
	@Resource
	private ReviewMapper reviewMapper;
}

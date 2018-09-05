package kr.spring.plus.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.plus.dao.PlusMapper;

@Service("plusService")
public class PlusServiceImpl implements PlusService{
	
	@Resource
	private PlusMapper plusMapper;
}

package kr.spring.shop.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.shop.dao.ProductBoardMapper;
import kr.spring.shop.domain.ProductBoardCommand;

@Service("productBoardService")
public class ProductBoardServiceImpl implements ProductBoardService{
	
	@Resource
	private ProductBoardMapper productBoardMapper;
	
	@Override
	public void insertProductBoard(ProductBoardCommand pbcommand) {
		productBoardMapper.insertProductBoard(pbcommand);	
	}

	@Override
	public int selectBoardCount() {
		return productBoardMapper.selectBoardCount();
	}

	@Override
	public List<ProductBoardCommand> selectBoardList(Map<String, Object> map) {
		return productBoardMapper.selectBoardList(map);
	}

	@Override
	public void insertPBReply(ProductBoardCommand productBoardCommand) {
		productBoardMapper.insertPBReply(productBoardCommand);
		
	}
	
}

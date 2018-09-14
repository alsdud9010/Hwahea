package kr.spring.shop.service;

import java.util.List;
import java.util.Map;

import kr.spring.shop.domain.ProductBoardCommand;
import kr.spring.shop.domain.ProductCommand;

public interface ProductBoardService {
	
	//��ǰ����
	public void insertProductBoard(ProductBoardCommand pbcommand);
	public List<ProductBoardCommand> selectBoardList(Map<String,Object> map);
	public int selectBoardCount();

	//���Ǵ亯
}

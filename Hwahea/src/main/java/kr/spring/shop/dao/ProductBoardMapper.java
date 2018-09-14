package kr.spring.shop.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.spring.shop.domain.ProductBoardCommand;

public interface ProductBoardMapper {
	
	//상품문의
	@Insert("INSERT INTO product_board(pb_num,pb_id,pb_dateTime,pb_kind,pb_content,pb_lock) "
			+ "VALUES(product_board_seq.nextval,#{pb_id},systimestamp,#{pb_kind},#{pb_content},#{pb_lock})")
	public void insertProductBoard(ProductBoardCommand pbcommand);
	
	//문의목록
	public List<ProductBoardCommand> selectBoardList(Map<String,Object> map);
	@Select("SELECT COUNT(*) FROM product_board")
	public int selectBoardCount();
}

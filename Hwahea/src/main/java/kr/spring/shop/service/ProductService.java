package kr.spring.shop.service;

import java.util.List;
import java.util.Map;

import kr.spring.member.domain.MemberCommand;
import kr.spring.shop.domain.CartCommand;
import kr.spring.shop.domain.OrderCommand;
import kr.spring.shop.domain.ProductCommand;

public interface ProductService {
	
	//shopMain
	public List<ProductCommand> selectCateList();
	public List<ProductCommand> selectSubCateList();
	
	//shopProduct
	public String selectGetCateName(Integer category_num);
	public List<ProductCommand> selectGetSubCate(Integer category_num);
	public int selectProductCnt(Map<String,Object> map);
	public List<ProductCommand> selectShopProduct(Map<String,Object> map);
	public List<ProductCommand> selectBrand();
	
	//shopProductView
	public ProductCommand selectProduct(Integer p_num);
	public List<ProductCommand> selectBrandProduct(Integer brand_num);

	//orderProduct
	public List<ProductCommand> productInfo(Integer p_num);
	public MemberCommand memberInfo(String user_id);
	public int getSeqNumber();
	public void orderProduct(OrderCommand ordercommand);
	public void orderProductDetail(Map<String,Object> map);
	
	//orderComplete
	public OrderCommand selectOrderInfo(Integer order_num);
	public List<OrderCommand> orderProductInfo(Integer order_num);
	
	//장바구니
	public int getSeqCartNumber();
	public void addCart(CartCommand cartcommand);

}

package kr.spring.shop.service;

import java.util.List;
import java.util.Map;

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
	
	//shopProductView
	public ProductCommand selectProduct(Integer p_num);
	public List<ProductCommand> selectBrandProduct(Integer brand_num);

	//orderProduct
	//orderComplete
}

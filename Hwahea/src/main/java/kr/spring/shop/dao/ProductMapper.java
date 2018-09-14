package kr.spring.shop.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import kr.spring.shop.domain.ProductCommand;

public interface ProductMapper {
	//shopMain
	@Select("SELECT category_num, category_name FROM category WHERE category_kind=0 AND category_num NOT IN(10)")
	public List<ProductCommand> selectCateList();
	public List<ProductCommand> selectSubCateList();

	//shopProduct
	@Select("SELECT category_name FROM category WHERE category_num=#{category_num}")
	public String selectGetCateName(Integer category_num);
	public List<ProductCommand> selectGetSubCate(Integer category_num);
	public int selectProductCnt(Map<String,Object> map);
	public List<ProductCommand> selectShopProduct(Map<String,Object> map);
	
	//shopProductView
	@Select("SELECT p.*,b.* FROM product p, brand b WHERE p_num=#{p_num} AND b.brand_num=p.p_brand")
	public ProductCommand selectProduct(Integer p_num);
	@Select("SELECT b.brand_num, b.brand_name, p.* FROM brand b, product p WHERE ROWNUM<=3 AND p.p_brand=b.brand_num AND b.brand_num=#{brand_num}")
	public List<ProductCommand> selectBrandProduct(Integer brand_num);
}

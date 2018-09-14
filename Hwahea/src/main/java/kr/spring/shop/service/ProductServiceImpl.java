package kr.spring.shop.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.shop.dao.ProductMapper;
import kr.spring.shop.domain.ProductCommand;

@Service("productService")
public class ProductServiceImpl implements ProductService{
	
	@Resource
	private ProductMapper productMapper;

	@Override
	public List<ProductCommand> selectCateList() {
		return productMapper.selectCateList();
	}
	@Override
	public List<ProductCommand> selectSubCateList() {
		return productMapper.selectSubCateList();
	}
	
	@Override
	public String selectGetCateName(Integer category_num) {
		return productMapper.selectGetCateName(category_num);
	}
	
	@Override
	public List<ProductCommand> selectGetSubCate(Integer category_num) {
		return productMapper.selectGetSubCate(category_num);
	}
	
	@Override
	public int selectProductCnt(Map<String,Object> map) {
		return productMapper.selectProductCnt(map);
	}

	@Override
	public List<ProductCommand> selectShopProduct(Map<String,Object> map) {
		return productMapper.selectShopProduct(map);
	}
	
	@Override
	public ProductCommand selectProduct(Integer p_num) {
		return productMapper.selectProduct(p_num);
	}
	@Override
	public List<ProductCommand> selectBrandProduct(Integer brand_num) {
		return productMapper.selectBrandProduct(brand_num);
	}

}

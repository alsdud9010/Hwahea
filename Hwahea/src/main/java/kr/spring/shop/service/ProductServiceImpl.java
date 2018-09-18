package kr.spring.shop.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.admin.domain.AdminBrandCommand;
import kr.spring.member.domain.MemberCommand;
import kr.spring.shop.dao.ProductMapper;
import kr.spring.shop.domain.CartCommand;
import kr.spring.shop.domain.OrderCommand;
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
	public List<ProductCommand> selectBrand() {
		return productMapper.selectBrand();
	}
	
	@Override
	public ProductCommand selectProduct(Integer p_num) {
		return productMapper.selectProduct(p_num);
	}
	@Override
	public List<ProductCommand> selectBrandProduct(Integer brand_num) {
		return productMapper.selectBrandProduct(brand_num);
	}
	@Override
	public List<ProductCommand> productInfo(Integer p_num) {
		return productMapper.productInfo(p_num);
	}
	
	@Override
	public MemberCommand memberInfo(String user_id) {
		return productMapper.memberInfo(user_id);
	}
	@Override
	public void orderProduct(OrderCommand ordercommand) {
		productMapper.orderProduct(ordercommand);
	}
	@Override
	public void orderProductDetail(Map<String, Object> map) {
		productMapper.orderProductDetail(map);
	}
	@Override
	public int getSeqNumber() {
		return productMapper.getSeqNumber();
	}
	@Override
	public OrderCommand selectOrderInfo(Integer order_num) {
		return productMapper.selectOrderInfo(order_num);
	}
	@Override
	public List<OrderCommand> orderProductInfo(Integer order_num) {
		return productMapper.orderProductInfo(order_num);
	}
	
	@Override
	public int getSeqCartNumber() {
		return productMapper.getSeqCartNumber();
	}
	
	@Override
	public void addCart(CartCommand cartcommand) {
		productMapper.addCart(cartcommand);
		productMapper.addCartDetail(cartcommand);
	}
	
	@Override
	public AdminBrandCommand selectBrandImage(Integer brand_num) {
		return productMapper.selectBrandImage(brand_num);
	}
}

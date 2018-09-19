package kr.spring.admin.service;

import java.util.List;
import java.util.Map;

import kr.spring.admin.domain.AdminProductCommand;

public interface AdminProductService {
	//ºÓ«Œ ªÛ«∞
	public List<AdminProductCommand> selectProductList(Map<String, Object> map);
	public int selectProductRowCount(Map<String, Object> map);
	public void insertProduct(AdminProductCommand product);
	public AdminProductCommand selectProduct(Integer p_num);
	public void deleteProduct(Integer p_num);
}

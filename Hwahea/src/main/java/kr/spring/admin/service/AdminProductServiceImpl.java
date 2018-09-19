package kr.spring.admin.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.admin.dao.AdminProductMapper;
import kr.spring.admin.domain.AdminProductCommand;

@Service("adminProductService")
public class AdminProductServiceImpl implements AdminProductService {
	//ºÓ«Œ ªÛ«∞
		@Resource
		private AdminProductMapper adminProductMapper;
		
		@Override
		public void insertProduct(AdminProductCommand product) {
			adminProductMapper.insertProduct(product);
			
		}

		@Override
		public AdminProductCommand selectProduct(Integer p_num) {
			
			return adminProductMapper.selectProduct(p_num);
		}

		@Override
		public void deleteProduct(Integer p_num) {
			adminProductMapper.deleteProduct(p_num);
			
		}

		@Override
		public List<AdminProductCommand> selectProductList(Map<String, Object> map) {
			
			return adminProductMapper.selectProductList(map);
		}

		@Override
		public int selectProductRowCount(Map<String, Object> map) {
			
			return adminProductMapper.selectProductRowCount(map);
		}
}

package kr.spring.admin.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.admin.dao.AdminBrandMapper;
import kr.spring.admin.domain.AdminBrandCommand;

@Service("adminBrandService")
public class AdminBrandServiceImple implements AdminBrandService{
	//ºê·£µå
	
		@Resource
		private AdminBrandMapper adminBrandMapper;
		
		@Override
		public void insertBrand(AdminBrandCommand brand) {
			adminBrandMapper.insertBrand(brand);
			
		}

		@Override
		public void deleteBrand(Integer brand_num) {
			adminBrandMapper.deleteBrand(brand_num);
			
		}

		@Override
		public AdminBrandCommand selectBrand(Integer brand_num) {
			
			return adminBrandMapper.selectBrand(brand_num);
		}

		@Override
		public List<AdminBrandCommand> selectBrandList() {
			
			return adminBrandMapper.selectBrandList();
		}
}

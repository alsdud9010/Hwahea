package kr.spring.admin.service;

import java.util.List;

import kr.spring.admin.domain.AdminBrandCommand;

public interface AdminBrandService {

	//ºê·£µå
		public List<AdminBrandCommand> selectBrandList();
		public void insertBrand(AdminBrandCommand brand);
		public AdminBrandCommand selectBrand(Integer brand_num);
		public void deleteBrand(Integer brand_num);
	
}

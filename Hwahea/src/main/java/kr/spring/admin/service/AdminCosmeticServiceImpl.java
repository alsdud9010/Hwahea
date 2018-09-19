package kr.spring.admin.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.admin.dao.AdminCosmeticMapper;
import kr.spring.admin.domain.AdminCosmeticCommand;

@Service("adminCosmeticService")
public class AdminCosmeticServiceImpl implements AdminCosmeticService{
	//»≠¿Â«∞
		@Resource
		private AdminCosmeticMapper adminCosmeticMapper;
			
		@Override
		public List<AdminCosmeticCommand> selectCosmeticList() {
			
			return adminCosmeticMapper.selectCosmeticList();
		}

		@Override
		public void insertCosmetic(AdminCosmeticCommand cosmetic) {
			adminCosmeticMapper.insertCosmetic(cosmetic);
		}
		
		@Override
		public AdminCosmeticCommand selectCosmetic(String c_code) {
			
			return adminCosmeticMapper.selectCosmetic(c_code);
		}

		@Override
		public void deleteCosmetic(String c_code) {
			adminCosmeticMapper.deleteCosmetic(c_code);
			
		}

		@Override
		public int selectCosmeticSeq() {
			return adminCosmeticMapper.selectCosmeticSeq();
		}
}

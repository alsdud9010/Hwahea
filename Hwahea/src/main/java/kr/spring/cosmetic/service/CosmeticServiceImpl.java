package kr.spring.cosmetic.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.cosmetic.dao.CosmeticMapper;
import kr.spring.cosmetic.domain.BrandCommand;

@Service("cosmeticService")
public class CosmeticServiceImpl implements CosmeticService{

	@Resource
	private CosmeticMapper cosmeticMapper;

	@Override
	public List<BrandCommand> getBrandList() {
		return cosmeticMapper.getBrandList();
	}

	@Override
	public int getRowCount() {
		return cosmeticMapper.getRowCount();
	}

}
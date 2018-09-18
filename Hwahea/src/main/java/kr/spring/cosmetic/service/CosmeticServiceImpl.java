package kr.spring.cosmetic.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.cosmetic.dao.CosmeticMapper;
import kr.spring.cosmetic.domain.BrandCommand;
import kr.spring.cosmetic.domain.CosmeticCommand;

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

	@Override
	public List<CosmeticCommand> getCosmeticRank(Map<String, Object> map) {
		return cosmeticMapper.getCosmeticRank(map);
	}

	@Override
	public List<CosmeticCommand> cosmeticDetail(Map<String, Object> map) {
		return cosmeticMapper.cosmeticDetail(map);
	}
}
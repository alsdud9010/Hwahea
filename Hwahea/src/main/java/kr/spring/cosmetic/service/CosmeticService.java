package kr.spring.cosmetic.service;

import java.util.List;
import java.util.Map;

import kr.spring.cosmetic.domain.BrandCommand;
import kr.spring.cosmetic.domain.CosmeticCommand;

public interface CosmeticService {
	//브랜드 갯수 검색
	public int getRowCount();
	//브랜드 이름 목록
	public List<BrandCommand> getBrandList();
	//브랜드별 랭킹
	public List<CosmeticCommand> getCosmeticRank(Map<String, Object> map);
}

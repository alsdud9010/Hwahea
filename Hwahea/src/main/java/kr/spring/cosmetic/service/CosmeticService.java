package kr.spring.cosmetic.service;

import java.util.List;

import kr.spring.cosmetic.domain.BrandCommand;

public interface CosmeticService {
	//브랜드 갯수 검색
	public int getRowCount();
	//브랜드 이름 목록
	public List<BrandCommand> getBrandList();
}

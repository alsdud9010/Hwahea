package kr.spring.cosmetic.service;

import java.util.List;

import kr.spring.cosmetic.domain.BrandCommand;

public interface CosmeticService {
	//�귣�� ���� �˻�
	public int getRowCount();
	//�귣�� �̸� ���
	public List<BrandCommand> getBrandList();
}

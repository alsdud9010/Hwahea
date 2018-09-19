package kr.spring.cosmetic.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import kr.spring.cosmetic.domain.BrandCommand;
import kr.spring.cosmetic.domain.CosmeticCommand;

public interface CosmeticService {
	//�귣�� ���� �˻�
	public int getRowCount();
	//�귣�� �̸� ���
	public List<BrandCommand> getBrandList();
	//�귣�庰 ��ŷ
	public List<CosmeticCommand> getCosmeticRank(Map<String, Object> map);
	
	//ȭ��ǰ ������ �ҷ����� 
	public CosmeticCommand cosmeticDetail(String c_code);
	//ȭ��ǰ ��ü��� �ҷ�����
	public List<CosmeticCommand> getAllCosmetic();
	
	public List<CosmeticCommand> getCategoryList(String c_code);
}

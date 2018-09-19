package kr.spring.cosmetic.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import kr.spring.cosmetic.domain.BrandCommand;
import kr.spring.cosmetic.domain.CosmeticCommand;

public interface CosmeticMapper {
	//�귣��
	@Select("SELECT brand_num,brand_name FROM brand ORDER BY brand_num")
	public List<BrandCommand> getBrandList();
	@Select("SELECT count(*) FROM brand")
	public int getRowCount();
	//�귣�庰 ��ŷ
	@Select("SELECT b.brand_name brand,c.* FROM cosmetic c,brand b WHERE b.brand_num=#{brand_num} AND c.c_code LIKE #{c_code} ORDER BY c_rate DESC")
	public List<CosmeticCommand> getCosmeticRank(Map<String, Object> map);
	
	
	//ȭ��ǰ ������ �ҷ����� 
	@Select("SELECT * FROM cosmetic WHERE c_code=#{c_code}")
	public CosmeticCommand cosmeticDetail(String c_code);
	//ȭ��ǰ ��ü ���
	@Select("SELECT b.brand_name brand, c.* FROM cosmetic c INNER JOIN brand b ON b.brand_num=c.c_brand_num ORDER BY c_rate DESC")
	public List<CosmeticCommand> getAllCosmetic();
	
	@Select("SELECT b.brand_name brand,c.* FROM cosmetic c, brand b WHERE b.brand_num=c.c_brand_num AND c.c_code LIKE #{c_code} ORDER BY c_rate DESC")
	public List<CosmeticCommand> getCategoryList(String c_code);
	
}
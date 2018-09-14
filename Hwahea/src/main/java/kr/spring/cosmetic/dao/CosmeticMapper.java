package kr.spring.cosmetic.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.spring.cosmetic.domain.BrandCommand;

public interface CosmeticMapper {
	@Select("SELECT brand_num,brand_name FROM brand ORDER BY brand_name")
	public List<BrandCommand> getBrandList();
	@Select("SELECT count(*) FROM brand")
	public int getRowCount();
}

package kr.spring.admin.service;

import java.util.List;

import kr.spring.admin.domain.AdminCosmeticCommand;

public interface AdminCosmeticService {
	//»≠¿Â«∞
	public List<AdminCosmeticCommand> selectCosmeticList();
	public void insertCosmetic(AdminCosmeticCommand cosmetic);
	public AdminCosmeticCommand selectCosmetic(String c_code);
	public void deleteCosmetic(String c_code);
	public int selectCosmeticSeq();
}

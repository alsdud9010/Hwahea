package kr.spring.admin.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.admin.dao.AdminMapper;
import kr.spring.admin.domain.AdminBrandCommand;
import kr.spring.admin.domain.AdminCategoryCommand;
import kr.spring.admin.domain.AdminCosmeticCommand;
import kr.spring.admin.domain.AdminEventCommand;
import kr.spring.admin.domain.AdminIngredientCommand;
import kr.spring.admin.domain.AdminFAQCommand;
import kr.spring.admin.domain.AdminProductCommand;

@Service("adminService")
public class AdminSerivceImpl implements AdminService {

	//브랜드
	
	@Resource
	private AdminMapper adminBrandMapper;
	
	@Override
	public void insertBrand(AdminBrandCommand brand) {
		adminBrandMapper.insertBrand(brand);
		
	}

	@Override
	public void deleteBrand(Integer brand_num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public AdminBrandCommand selectBrand(Integer brand_num) {
		
		return adminBrandMapper.selectBrand(brand_num);
	}

	@Override
	public List<AdminBrandCommand> selectBrandList(Map<String, Object> map) {
		
		return adminBrandMapper.selectBrandList(map);
	}

	@Override
	public int selectBrandRowCount(Map<String, Object> map) {
		
		return adminBrandMapper.selectBrandRowCount(map);
	}


	//세부카테고리
	@Resource
	private AdminMapper adminCategoryDetailMapper;
	
	@Override
	public void insertCateDetail(AdminCategoryCommand categoryDetail) {
		adminCategoryDetailMapper.insertCateDetail(categoryDetail);
		
	}

	@Override
	public List<AdminCategoryCommand> selectCateDetailList(Map<String, Object> map) {
		
		return adminCategoryDetailMapper.selectCateDetailList(map);
	}

	@Override
	public int selectCateDetailRowCount(Map<String, Object> map) {
		
		return adminCategoryDetailMapper.selectCateDetailRowCount(map);
	}
	
	//카테고리
	@Resource
	private AdminMapper adminCategoryMapper;
	
	@Override
	public List<AdminCategoryCommand> selectCateList(Map<String, Object> map) {
	
		return adminCategoryMapper.selectCateList(map);
	}

	@Override
	public int selectCateRowCount(Map<String, Object> map) {
		
		return adminCategoryMapper.selectCateRowCount(map);
	}

	@Override
	public void insertCategory(AdminCategoryCommand category) {

		adminCategoryMapper.insertCategory(category);
		
	}

	@Override
	public AdminCategoryCommand selectCategory(int category_num) {
		
		return null;
	}

	@Override
	public void deleteCategory(int category_num) {
		// TODO Auto-generated method stub
		
	}
	
	//화장품
	@Resource
	private AdminMapper adminCosmeticMapper;
		
	@Override
	public List<AdminCosmeticCommand> selectCosmeticList(Map<String, Object> map) {
		
		return adminCosmeticMapper.selectCosmeticList(map);
	}

	@Override
	public int selectCosmeticRowCount(Map<String, Object> map) {
		
		return adminCosmeticMapper.selectCosmeticRowCount(map);
	}

	@Override
	public void insertCosmetic(AdminCosmeticCommand cosmetic) {
		adminCosmeticMapper.insert(cosmetic);
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
	
	//이벤트
	@Resource
	private AdminMapper adminEventMapper;
	
	@Override
	public void insertEvent(AdminEventCommand event) {
		adminEventMapper.insertEvent(event);
		
	}

	@Override
	public AdminEventCommand selectEvent(int event_num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteEvent(int event_num) {
		// TODO Auto-generated method stub
		
	}
	
	//FAQ
	@Resource
	private AdminMapper adminFAQMapper;
	
	@Override
	public void insertFAQ(AdminFAQCommand faq) {
		adminFAQMapper.insertFAQ(faq);
		
	}

	@Override
	public AdminFAQCommand selectFAQ(int faq_num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteFAQ(int faq_num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<AdminFAQCommand> selectFAQList(Map<String, Object> map) {
		
		return adminFAQMapper.selectFAQList(map);
	}

	@Override
	public int selectFAQRowCount(Map<String, Object> map) {
		
		return adminFAQMapper.selectFAQRowCount(map);
	}
	
	//성분
	@Resource
	private AdminMapper adminIngredientMapper;

	@Override
	public void insertIngredient(AdminIngredientCommand ingredient) {
		adminIngredientMapper.insertIngredient(ingredient);
		
	}

	@Override
	public AdminIngredientCommand selectIngredient(int i_num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteIngredient(int i_num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<AdminIngredientCommand> selectIngreList(Map<String, Object> map) {
		
		return adminIngredientMapper.selectIngreList(map);
	}

	@Override
	public int selectIngreRowCount(Map<String, Object> map) {
		
		return adminIngredientMapper.selectIngreRowCount(map);
	}
	
	//쇼핑 상품
	@Resource
	private AdminMapper adminProductMapper;
	
	@Override
	public void insertProduct(AdminProductCommand product) {
		adminProductMapper.insertProduct(product);
		
	}

	@Override
	public AdminProductCommand selectProduct(Integer p_num) {
		
		return adminProductMapper.selectProduct(p_num);
	}

	@Override
	public void deleteProduct(Integer p_num) {
		adminProductMapper.deleteProduct(p_num);
		
	}

	@Override
	public List<AdminProductCommand> selectProductList(Map<String, Object> map) {
		
		return adminProductMapper.selectProductList(map);
	}

	@Override
	public int selectProductRowCount(Map<String, Object> map) {
		
		return adminProductMapper.selectProductRowCount(map);
	}
}

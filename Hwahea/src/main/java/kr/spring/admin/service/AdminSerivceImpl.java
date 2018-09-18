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
		adminBrandMapper.deleteBrand(brand_num);
		
	}

	@Override
	public AdminBrandCommand selectBrand(Integer brand_num) {
		
		return adminBrandMapper.selectBrand(brand_num);
	}

	@Override
	public List<AdminBrandCommand> selectBrandList() {
		
		return adminBrandMapper.selectBrandList();
	}

	//세부카테고리
	@Resource
	private AdminMapper adminCategoryDetailMapper;
	
	@Override
	public void insertCateDetail(AdminCategoryCommand categoryDetail) {
		adminCategoryDetailMapper.insertCateDetail(categoryDetail);
		
	}

	@Override
	public List<AdminCategoryCommand> selectCateDetailList() {
		
		return adminCategoryDetailMapper.selectCateDetailList();
	}

	@Override
	public int selectCateDetailRowCount(Map<String, Object> map) {
		
		return adminCategoryDetailMapper.selectCateDetailRowCount(map);
	}
	
	@Override
	public List<AdminCategoryCommand> selectC_DetailList() {
		return adminCategoryDetailMapper.selectC_DetailList();
	}
	
	//카테고리
	@Resource
	private AdminMapper adminCategoryMapper;
	
	@Override
	public List<AdminCategoryCommand> selectCategoryList() {
		return adminCategoryMapper.selectCategoryList();
	}
	
	@Override
	public List<AdminCategoryCommand> selectCateList() {
	
		return adminCategoryMapper.selectCateList();
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
	public List<AdminCosmeticCommand> selectCosmeticList() {
		
		return adminCosmeticMapper.selectCosmeticList();
	}

	@Override
	public void insertCosmetic(AdminCosmeticCommand cosmetic) {
		adminCosmeticMapper.insertCosmetic(cosmetic);
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
	public List<AdminEventCommand> selectEventList() {
		
		return adminEventMapper.selectEventList();
	}
	
	@Override
	public void insertEvent(AdminEventCommand event) {
		adminEventMapper.insertEvent(event);
		
	}

	@Override
	public AdminEventCommand selectEvent(int event_num) {
		
		return adminEventMapper.selectEvent(event_num);
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

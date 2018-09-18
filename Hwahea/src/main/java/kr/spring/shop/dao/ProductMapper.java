package kr.spring.shop.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.spring.member.domain.MemberCommand;
import kr.spring.shop.domain.CartCommand;
import kr.spring.shop.domain.OrderCommand;
import kr.spring.shop.domain.ProductCommand;

public interface ProductMapper {
	//shopMain
	@Select("SELECT category_num, category_name FROM category WHERE category_kind=0 AND category_num NOT IN(10)")
	public List<ProductCommand> selectCateList();
	public List<ProductCommand> selectSubCateList();

	//shopProduct
	@Select("SELECT category_name FROM category WHERE category_num=#{category_num}")
	public String selectGetCateName(Integer category_num);
	public List<ProductCommand> selectGetSubCate(Integer category_num);
	public int selectProductCnt(Map<String,Object> map);
	public List<ProductCommand> selectShopProduct(Map<String,Object> map);
	@Select("SELECT brand_num,brand_name FROM brand ORDER BY brand_name")
	public List<ProductCommand> selectBrand();
	
	//shopProductView
	@Select("SELECT p.*,b.* FROM product p, brand b WHERE p_num=#{p_num} AND b.brand_num=p.p_brand")
	public ProductCommand selectProduct(Integer p_num);
	@Select("SELECT b.brand_num, b.brand_name, p.* FROM brand b, product p WHERE ROWNUM<=3 AND p.p_brand=b.brand_num AND b.brand_num=#{brand_num}")
	public List<ProductCommand> selectBrandProduct(Integer brand_num);
	
	//orderProduct
	@Select("SELECT p.*, ((100-p.p_discount)/100)*p.p_price discount_price FROM product p WHERE p.p_num=#{p_num}")
	public List<ProductCommand> productInfo(Integer p_num);
	@Select("SELECT * FROM member_detail WHERE m_id=#{user_id}")
	public MemberCommand memberInfo(String user_id);
	@Select("SELECT PRODUCT_ORDER_SEQ.NEXTVAL FROM DUAL")
	public int getSeqNumber();
	@Insert("INSERT INTO product_order (order_num, order_id, order_date, total_price, buyer_name, buyer_phone1, buyer_phone2, buyer_phone3, buyer_email, buyer_zipcode, buyer_address1,buyer_address2, how, order_msg) " 
			+"VALUES(#{seqNum},#{order_id},sysdate,#{total_price},#{buyer_name},#{buyer_phone1},#{buyer_phone2},#{buyer_phone3},"
			+ "#{buyer_email},#{buyer_zipcode},#{buyer_address1},#{buyer_address2},#{how},#{order_msg})")
	public void orderProduct(OrderCommand ordercommand);
	public void orderProductDetail(Map<String,Object> map);
	
	//orderComplete
	@Select("SELECT * FROM product_order WHERE order_num = #{order_num}")
	public OrderCommand selectOrderInfo(Integer order_num);
	@Select("SELECT od.*,p.p_name,((100-p.p_discount)/100)*p.p_price discount_price FROM order_detail od, product p WHERE od.order_product=p.p_num AND order_num = #{order_num}")
	public List<OrderCommand> orderProductInfo(Integer order_num);
	
	//장바구니
	@Select("SELECT CART_SEQ.NEXTVAL FROM DUAL")
	public int getSeqCartNumber();
	@Insert("INSERT INTO cart (cart_num,cart_id,cart_price) "
			+ "VALUES (#{seqCartNum},#{cart_id},#{cart_price})")
	public void addCart(CartCommand cartcommand);
	@Insert("INSERT INTO cart_detail (cart_num,cart_product,quantity) "
			+ "VALUES (#{seqCartNum},#{cart_product},#{quantity})")
	public void addCartDetail(CartCommand cartcommand);
}

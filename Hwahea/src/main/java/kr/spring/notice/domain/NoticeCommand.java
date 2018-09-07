package kr.spring.notice.domain;

import java.sql.Date;

import org.hibernate.validator.constraints.NotEmpty;

public class NoticeCommand {
	/*
	 *  p_num number not null,
  p_name varchar2(150) not null,
  p_price number(15) not null,
  p_capacity number(10) not null,
  p_brand number not null,
  p_photo1 varchar2(50) not null,
  p_photo2 varchar2(50),
  p_photo3 varchar2(50) not null,
  constraint product_pk primary key(p_num),
  constraint product_fk foreign key(p_brand) references brand(brand_num)
	 */
	private int p_num; //상품번호
	@NotEmpty
	private String p_name; //상품명
	@NotEmpty
	private int p_price; //상품가격
	@NotEmpty
	private int p_capacity; //상품용량
	@NotEmpty
	private String p_brand; //브랜드명, DB에는 int로 brand_num 저장, 출력 시 조인해서 String형으로 브랜드명 저장
	private String p_photo1;
	private String p_photo2;
	private String p_photo3;
	private Date p_reg_date;
	
	
}

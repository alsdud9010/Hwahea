<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/mypage.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shop.css">
<script type="text/javascript">
$(document).ready(function(){
    $("#cartDetail").click(function(event){
        $("#cartModal").modal();
        event.preventDefault();
    });
});
</script>
<div class="container content">
	<div class="row magazine-page">
		<div class="col-md-12" style="margin-left: 5%;">
			<div class="mypage_form">
				<div class="menu_bar">
					<ul class="list-inline top-v1-contacts">
						<li class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_cart.do?bc=4">장바구니</a></li>
						<li>|</li>
						<li class="now_menu"><a href="${pageContext.request.contextPath}/mypage/my_cartorder.do?bc=4">주문/배송</a></li>
						<li>|</li>
						<li class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_cartzzim.do?bc=4">찜한 상품</a></li>
					</ul>
				</div>
				<form action="">
					<div class="table-responsive text-nowrap">
					<div class="orderProduct-subTitle">주문상품 정보</div>
						  <table class="table" id="example">
						    <thead>
						      <tr>
						        <th scope="col"></th>
						        <th scope="col">주문일</th>
						        <th scope="col">상품명</th>
						        <th scope="col">수량</th>
						        <th scope="col">가격</th>
						        <th scope="col">총 가격</th>
						        <th scope="col">배송지 정보 보기</th>
						      </tr>
						    </thead>
						    <tbody>
						      <tr>
						        <th scope="row">1</th>
						        <td>{product_order.order_date}</td>
						        <td>{product_order.product_name}</td>
						        <td>{product_order.quantity}</td>
						        <td>{product_order.how}</td>
						        <td>{product_order.total_price}</td>
						        <td><button class="btn btn-default" id="cartDetail" data-toggle="modal">자세히 보기</button><br/></td>
						      </tr>
						    </tbody>
						  </table>
						</div>
					</form>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="cartModal" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h2 class="modal-title" id="exampleModalLabel">배송지 정보</h2>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <ul>
        	<li>주문 번호 : {product_order.order_num}</li>
        </ul>
        <ul>
        	<li>주문자 : {product_order.buyer_name}</li>
        </ul>
        <ul>
        	<li>휴대폰 번호 : {product_order.buyer_phone1}-{product_order.buyer_phone2}-{product_order.buyer_phone3}</li>
        </ul>
        <ul>
        	<li>배송지 우편번호 : {product_order.buyer_zipcode}</li>
        </ul>
        <ul>
        	<li>배송지 주소 : {product_order.buyer_address1}</li>
        </ul>
        <ul>
        	<li>나머지 주소 : {product_order.buyer_address2}</li>
        </ul>
        <ul>
        	<li>주문 메시지 : {product_order.order_msg}</li>
        </ul>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
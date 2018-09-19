<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/mypage.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shop.css">
<script type="text/javascript">
$(document).ready(function(){ 
    $(".cartDetail").click(function(event){
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
						<li class="now_menu">주문/배송</li>
						
					</ul>
				</div>
				<div class="table-responsive text-nowrap">
				<div class="orderProduct-subTitle">주문상품 정보</div>
				  <table class="table" id="example">
				    <thead>
				      <tr>
				        <th scope="col">주문번호</th>
				        <th scope="col">주문일</th>
				        <th scope="col">상품명</th>
				        <th scope="col">수량</th>
				        <th scope="col">총 가격</th>
				        <th scope="col">배송지 정보 보기</th>
				      </tr>
				    </thead>
				    <tbody>
				     <c:if test="${empty order.order_num}">
					    <tr>
					    	<th colspan="6">
					    	주문한 거래가 없습니다.
					    	</th>
					    </tr>
				    </c:if>
				    <c:forEach var="order" items="${list}">
				      <tr>
				        <th scope="row">${order.order_num}</th>
				        <td>${order.order_date}</td>
				        <td>${order.order_product}</td>
				        <td>${order.quantity}</td>
				        <td>${order.total_price}</td>
				        <td><button class="btn btn-default cartDetail" data-toggle="modal">자세히 보기</button><br/></td>
				      </tr>
				    </c:forEach>
				    </tbody>
				  </table>
				</div>
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
        	<li>주문 번호 : <c:forEach var="order" items="${list}">${order.order_num}</c:forEach></li>
        </ul>
        <ul>
        	<li>주문자 : <c:forEach var="order" items="${list}" end="0">${order.buyer_name}</c:forEach></li>
        </ul>
        <ul>
        	<li>휴대폰 번호 : <c:forEach var="order" items="${list}" end="0">0${order.buyer_phone1}-${order.buyer_phone2}-${order.buyer_phone3}</c:forEach></li>
        </ul>
        <ul>
        	<li>배송지 우편번호 : <c:forEach var="order" items="${list}" end="0">${order.buyer_zipcode}</c:forEach></li>
        </ul>
        <ul>
        	<li>배송지 주소 : <c:forEach var="order" items="${list}" end="0">${order.buyer_address1}</c:forEach></li>
        </ul>
        <ul>
        	<li>나머지 주소 : <c:forEach var="order" items="${list}" end="0">${order.buyer_address2}</c:forEach></li>
        </ul>
        <ul>
        	<li>주문 메시지 : <c:forEach var="order" items="${list}" end="0">${order.order_msg}</c:forEach></li>
        </ul>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
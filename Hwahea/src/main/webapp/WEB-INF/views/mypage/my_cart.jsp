<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/mypage.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shop.css">
<div class="container content">
	<div class="row magazine-page"> 
		<div class="col-md-12" style="margin-left: 5%;">
			<div class="mypage_form">
				<div class="menu_bar">
					<ul class="list-inline top-v1-contacts">
						<li class="now_menu">장바구니</li>
						<li>|</li>
						<li class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_cartorder.do?bc=4">주문/배송</a></li>
						
					</ul>
				</div>
				<div class="container">
					<div class="orderProduct-item-info" style="width:93%; margin-left: -2em;">
						<div class="orderProduct-subTitle">장바구니</div>
						<c:if test="${empty cart.cart_num}">
							장바구니가 비었습니다.
						</c:if>
						<c:forEach items="${list}" var="cart">
						<div class="item-info-head">
							<ul>
								<li class="info-head-name">상품명</li>
								<li class="info-head-quantity">수량</li>
								<li class="info-head-price">상품가격</li>
							</ul>
						</div>
						<div class="item-info-content">
							<ul>
								<li class="info-content-img"><img
									src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"></li>
								<li class="info-content-name">${cart.cart_product }</li>
								<li class="info-content-quantity">${cart.quantity}</li>
								<li class="info-content-price">${cart.cart_price}</li>
							</ul>
							
						</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
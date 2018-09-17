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
						<li class="now_menu"><a href="${pageContext.request.contextPath}/mypage/my_cart.do?bc=4">장바구니</a></li>
						<li>|</li>
						<li class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_cartorder.do?bc=4">주문/배송</a></li>
						<li>|</li>
						<li class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_cartzzim.do?bc=4">찜한 상품</a></li>
					</ul>
				</div>
				<div class="container">
				<form action="">
					<div class="orderProduct-item-info" style="width:93%; margin-left: -2em;">
						<div class="orderProduct-subTitle">장바구니</div>
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
								<li class="info-content-name">메이케이티드 위치하젤 아스트린젠트 355ml</li>
								<li class="info-content-quantity">{product_order.quantity}</li>
								<li class="info-content-price">{product_order.total_price}</li>
							</ul>
							<ul>
								<li class="info-content-img"><img
									src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"></li>
								<li class="info-content-name">메이케이티드 위치하젤 아스트린젠트 355ml</li>
								<li class="info-content-quantity">{CART.quantity}</li>
								<li class="info-content-price">{cart.total_price}</li>
							</ul>
						</div>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
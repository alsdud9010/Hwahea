<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shop.css">
<script src="${pageContext.request.contextPath}/assets/js/shop/orderComplete.js"></script>
<div class="container content">
<c:set var="orderInfo" value="${orderInfo}"/>
	<div class="col-md-12 orderComplete">
		<div class="orderComplete-title">
			♥&nbsp;주문이 완료되었습니다 감사합니다&nbsp;♥
		</div>
		<div class="col-md-12 orderComplete-receipt">
			<div class="receipt-content">
				<div class="receipt-content-hwahea">
					<ul>
						<li class="orderComplete-bold">화해㈜</li>
						<li>서울특별시 중구 남대문로 120 대일빌딩 2층, 3층 </li>
						<li>E-mail:hwahea@hwahea.com</li>
						<li>${orderInfo.order_date}</li>
						<li>고객센터:1577-1577 www.hwahea.co.kr</li>
					</ul>
				</div>
				<div class="receipt-content-policy">
					<ul>
						<li class="orderComplete-bold">
							교환은 구매한 상품을 반품/환불 요청 후 새상품을 재구매하셔야 하며
							환불은 상품 수령일로부터 7일 이내에 가능합니다.
						</li>
						<li>* 단 재판매가 가능한 상품 및 포장상태로 반품</li>
						<li>* 단순 변심에 의한 환불은 고객이 부담</li>
						<li>교환/환불 및 기타문의는 상품문의 게시판으로 문의해주세요.</li>
					</ul>
				</div>
				<div class="receipt-content-product">
					<ul class="content-product-title">
						<li class="receipt-product-name">상품명</li>
						<li class="receipt-product-quantity">수량</li>
						<li class="receipt-product-price">금액</li>
					</ul>
					<ul>
						<c:forEach var="orderProductInfo" items="${orderProductInfo}">
							<li class="receipt-product-name receipt-product-name2">${orderProductInfo.p_name}</li>
							<li class="receipt-product-quantity">${orderProductInfo.quantity}</li>
							<li class="receipt-product-price"><fmt:formatNumber value="${orderProductInfo.discount_price}" type="number"/></li>
							<input type="hidden" class="discount_price" value="${orderProductInfo.discount_price}" id="discount_price"/>
						</c:forEach>
					</ul>
					<ul class="receipt-product-sub">
						<li class="receipt-product-subTitle">판 매 계</li>
						<li class="receipt-product-subPrice" id="priceArea">
						<fmt:formatNumber value="${orderInfo.total_price}" type="number"/></li>
					</ul>
					<input type="hidden" value="${orderInfo.total_price}" id="total_price"/>
					<ul class="receipt-product-sub">
						<li class="receipt-product-subTitle">${orderInfo.how}</li>
						<li class="receipt-product-subPrice" id="priceArea2"></li>
					</ul>
					<ul class="receipt-product-sub">
						<li class="receipt-product-subTitle">배송비</li>
						<li class="receipt-product-subPrice" id="ship_price">2,500</li>
					</ul>
					<ul class="receipt-product-total">
						<li class="receipt-product-subTitle">결제금액</li>
						<li class="receipt-product-subPrice" id="priceArea3"></li>
					</ul>
				</div>
				<div class="receipt-content-userInfo">
					<ul>
						<li>홍길동님 화해 포인트 내역</li>
						<li>[회 원 아 이 디] ${orderInfo.order_id}</li>
						<li>[적 립 포 인 트] <span id="plusPoint"></span></li>
						<li>[보 유 포 인 트] ${orderInfo.m_point}</li>
						<li>* 적립포인트는 익일 가용포인트로 전환</li>
						<li>* (자세한) 포인트 내역은 마이페이지 참조</li>
						<li style="margin-bottom:50px;">* 최대 상품 가격의 20% 까지 사용 가능</li>
					</ul>
				</div>
				<div class="receipt-content-barcode">
					<img src="${pageContext.request.contextPath}/assets/img/shop/receipt_barcode.png">
					<p>1 2 0 1 8 1 5 1 3 1 3 5 1 5 1 3 2 3 5 1 5 1 3 2</p>
				</div>
			</div>
		</div>
		<div class="orderProduct-button orderComplete-button">
			<input type="button" value="쇼핑 계속하기"
			onclick="location.href='${pageContext.request.contextPath}/shop/shopMain.do'">
			<input type="button" value="주문내역 보기"
			onclick="location.href='${pageContext.request.contextPath}/mypage/my_cartorder.do?bc=4'">
		</div>
	</div>
</div>
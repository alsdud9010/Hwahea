<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shop.css">
<script src="${pageContext.request.contextPath}/assets/js/shop/orderProduct.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/daumAPI.js"></script>
<div class="container content">
<c:set var="member" value="${memberInfo}"/>
	<div class="row magazine-page">
		<!-- Begin Content -->
		<div class="col-md-12 orderProduct">
			<div class="orderProduct-title">주문 / 결제</div>
			<div class="col-md-12 orderProduct-contents">
				<form id="orderProduct_form">
					<div class="orderProduct-item-info">
						<div class="orderProduct-subTitle">주문상품 정보</div>
						<div class="item-info-head">
							<ul>
								<li class="info-head-name">상품명</li>
								<li class="info-head-quantity">수량</li>
								<li class="info-head-price">상품가격</li>
							</ul>
						</div>
						<div class="item-info-content">
							<input type="hidden" name="order_id" value="${user_id}">
							<c:forEach var="product" items="${productInfo}">
							<ul>
								<li class="info-content-img"><img
									src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"></li>
								<li class="info-content-name">${product.p_name} ${product.p_capacity}ml</li>
								<li class="info-content-quantity" id="productQuantity-${product.p_num}">${quantity}</li>
								<li id="productPrice-${product.p_num}" style="padding-left:70px;">
								<fmt:formatNumber value="${product.discount_price}" type="number"/>원</li>
							</ul>
							<input type="hidden" class="info-content-price" id="productPrice-${product.p_num}" value="${product.discount_price}">
							<input type="hidden" class="info-content-quantity2" id="productQuantity-${product.p_num}" value="${quantity}">
							<input type="hidden" class="info-content-num" id="productNum-${product.p_num}" value="${product.p_num}">
							</c:forEach>
						</div>
					</div>
					<div class="orderProduct-buyer-info">
						<div class="orderProduct-subTitle">
							주문자 정보<span>* 필수입력항목</span>
						</div>
						<div class="buyer-info-head">
							<ul>
								<li class="buyer-head-name">이름 *<input
									class="order-info-input" type="text" id="order_name" placeholder="주문자명" value="${member.m_name}"></li>
								<li class="buyer-head-phone">휴대폰 *<input id="order_phone1"
									class="order-info-input buyer-phone-start" type="text"
									placeholder="010" value="${member.m_phone1}"> - <input
									class="order-info-input buyer-phone" id="order_phone2" type="text" value="${member.m_phone2}"> - <input
									class="order-info-input buyer-phone" id="order_phone3" type="text" value="${member.m_phone3}">
								</li>
								<li class="buyer-head-email">이메일 *<input
									class="order-info-input" type="email" name="buyer_email" id="buyer_email"
									placeholder="@hwahea.com" value="${member.m_email}"></li>
							</ul>
						</div>
					</div>
					<div class="orderProduct-destination-info">
						<div class="orderProduct-subTitle">
							배송지 정보<span>* 필수입력항목</span>
						</div>
						<div class="destination-info-content">
							<ul>
								<li class="destination-content-name">받는 분 *<input
									class="order-info-input" type="text" placeholder="주문자명" id="buyer_name" name="buyer_name" value="${member.m_takename}"/></li>
								<li class="destination-content-phone">휴대폰 *<input
									class="order-info-input destination-phone-start" name="buyer_phone1" type="text" id="buyer_phone1"
									placeholder="010" value="${member.m_phone1}"/> - <input  
									class="order-info-input destination-phone" name="buyer_phone2" type="text" id="buyer_phone2"
									placeholder="1234" value="${member.m_phone2}"/> - <input 
									class="order-info-input destination-phone" name="buyer_phone3" type="text" id="buyer_phone3"
									placeholder="1234" value="${member.m_phone3}"/>
								</li>
								<li class="destination-content-zipcode">배송지* <input
									class="order-info-input" type="button" class="zipcood-bt" value="우편번호 찾기" onclick="sample6_execDaumPostcode()"> 
									<input class="order-info-input" id="sample6_postcode" type="text" placeholder="우편번호" id="buyer_zipcode"
									name="buyer_zipcode" value="${member.m_zipcode}"/></li>
								<li class="destination-content-address content-address1"><input 
									class="order-info-input" type="text" id="sample6_address buyer_address1" name="buyer_address1" placeholder="주소" value="${member.m_address1}"/></li>
								<li class="destination-content-address"><input 
									class="order-info-input" type="text" id="sample6_address2 buyer_address2" name="buyer_address2" placeholder="상세주소" value="${member.m_address2}"/></li>
								<li class="destination-content-call">배송요청사항<input 
									class="order-info-input" type="text" name="order_msg" id="order_msg" value="배송 요청 메시지 없음" placeholder="배송시 요청 메시지 입력"/></li>
							</ul>
						</div>
					</div>
					<div class="orderProduct-point">
						<div class="orderProduct-subTitle">
							화해 포인트
						</div>
						<div class="point-content">
							<div class="point-content-use">
								<input type="text" id="pointArea" placeholder="0" > P
								<input type="checkbox" id="totalPoint"> 전액 사용 [총 <span id="myPoint">${member.m_point}</span> P 보유]
							</div>
							<div class="point-content-explain">
								<ul>
									<li>* 100P 이상부터 사용가능</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="orderProduct-payment">
						<div class="orderProduct-subTitle">
							결제 금액
						</div>
						<div class="col-md-8 payment-content">
							<div class="payment-content-explain">
								<ul class="payment-content-title">
									<li>총 상품 금액</li>
									<li>총 배송비</li>
									<li style="border-bottom:1px solid #c9c9c9;">포인트 사용</li>
									<li class="orderProduct-total">총 결제금액</li>
								</ul>
								<ul class="payment-content-price">
									<li id="products_price"></li>
									<li id="ship_price">0 원<li>
									<li style="border-bottom:1px solid #c9c9c9;" id="pointArea2"></li>
									<li id="total_price" style="font-weight:bold;"></li>
								</ul>
							<input type="hidden" name="total_price" id="totalPriceArea" value="">
							</div>
						</div>
					</div>
					<div class="orderProduct-paymentOption">
						<div class="orderProduct-subTitle">
							결제 수단
						</div>
						<div class="paymentOption-content">
							<%-- <form:radiobutton path="how" value="카드결제" label="카드 결제" checked="checked"/>
							<form:radiobutton path="how" value="휴대폰결제" label="휴대폰 결제" />
							<form:radiobutton path="how" value="실시간계좌이체" label="실시간 계좌이체" /> --%>
							<input type="radio" name="how" value="카드 결제"><span>카드 결제</span>
							<input type="radio" name="how" value="휴대폰 결제"><span>휴대폰 결제</span>
							<input type="radio" name="how" value="실시간 계좌이체"><span>실시간 계좌이체</span>
						</div>
					</div>
					<div class="orderProduct-button">
						<input type="button" value="취소하기" onclick="loction.href='${pageContext.request.contextPath}/main/main.do'">
						<input type="submit" value="구매하기" id="go_order">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
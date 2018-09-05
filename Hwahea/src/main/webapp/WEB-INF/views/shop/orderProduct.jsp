<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shop.css">
<div class="container content">
	<div class="row magazine-page">
		<!-- Begin Content -->
		<div class="col-md-12 orderProduct">
			<div class="orderProduct-title">주문 / 결제</div>
			<div class="col-md-12 orderProduct-contents">
				<form:form commandName="command" 
				action="${pageContext.request.contextPath}/shop/orderComplete.do" class="col-md-12"
	    		id="orderProduct"
	    		enctype="multipart/form-data">
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
							<ul>
								<li class="info-content-img"><img
									src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"></li>
								<li class="info-content-name">메이케이티드 위치하젤 아스트린젠트 355ml</li>
								<li class="info-content-quantity">1</li>
								<li class="info-content-price">12,000원</li>
							</ul>
							<ul>
								<li class="info-content-img"><img
									src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"></li>
								<li class="info-content-name">메이케이티드 위치하젤 아스트린젠트 355ml</li>
								<li class="info-content-quantity">1</li>
								<li class="info-content-price">12,000원</li>
							</ul>
						</div>
					</div>
					<div class="orderProduct-buyer-info">
						<div class="orderProduct-subTitle">
							주문자 정보<span>* 필수입력항목</span>
						</div>
						<div class="buyer-info-head">
							<ul>
								<li class="buyer-head-name">이름 *<input
									class="order-info-input" type="text" placeholder="주문자명"></li>
								<li class="buyer-head-phone">휴대폰 *<input
									class="order-info-input buyer-phone-start" type="text"
									placeholder="010"> - <input
									class="order-info-input buyer-phone" type="text"
									placeholder="1234"> - <input
									class="order-info-input buyer-phone" type="text"
									placeholder="1234">
								</li>
								<li class="buyer-head-email">이메일 *<input
									class="order-info-input" type="email"
									placeholder="text@text.com"></li>
							</ul>
						</div>
					</div>
					<div class="orderProduct-destination-info">
						<div class="orderProduct-subTitle">
							배송지 정보<span>* 필수입력항목</span>
						</div>
						<div class="destination-info-content">
							<ul>
								<li class="destination-checkbox"><input
									class="order-info-input" type="checkbox"
									value="buyer-info-equals" checked="checked"> 주문자 정보와 동일</li>
								<li class="destination-content-name">받는 분 *<input
									class="order-info-input" type="text" placeholder="주문자명"></li>
								<li class="destination-content-phone">휴대폰 *<input
									class="order-info-input destination-phone-start" type="text"
									placeholder="010"> - <input
									class="order-info-input destination-phone" type="text"
									placeholder="1234"> - <input
									class="order-info-input destination-phone" type="text"
									placeholder="1234">
								</li>
								<li class="destination-content-zipcode">배송지* <input
									class="order-info-input" type="button" value="주소검색"> <input
									class="order-info-input" type="text" placeholder="12345"></li>
								<li class="destination-content-address content-address1"><input
									class="order-info-input" type="text" placeholder="서울시"></li>
								<li class="destination-content-address"><input
									class="order-info-input" type="text" placeholder="중구"></li>
								<li class="destination-content-call">배송요청사항<input
									class="order-info-input" type="text" placeholder="배송요청사항"></li>
							</ul>
						</div>
					</div>
					<div class="orderProduct-point">
						<div class="orderProduct-subTitle">
							화해 포인트
						</div>
						<div class="point-content">
							<div class="point-content-use">
								<input type="text" value="0"> P
								<input type="checkbox"> 전액 사용 [총 0 P 보유]
							</div>
							<div class="point-content-explain">
								<ul>
									<li style="font-weight:bold;">* 총 상품 금액의 20% 까지만 사용가능</li>
									<li>최대 사용 가능 포인트 : <span>0</span> P</li>
									<li>예상 적립 포인트 : <span>240</span> P</li>
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
									<li style="border-bottom:1px solid #c9c9c9;">포인트 사용(-)</li>
									<li class="orderProduct-total">총 결제금액</li>
								</ul>
								<ul class="payment-content-price">
									<li>12,000 원</li>
									<li>2,500 원</li>
									<li style="border-bottom:1px solid #c9c9c9;">0 P</li>
									<li class="orderProduct-total">14,500 원</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="orderProduct-paymentOption">
						<div class="orderProduct-subTitle">
							결제 수단
						</div>
						<div class="paymentOption-content">
							<input type="radio" name="paymentOption" value="카드 결제" checked="checked"><span>카드 결제</span>
							<input type="radio" name="paymentOption" value="휴대폰 결제"><span>휴대폰 결제</span>
							<input type="radio" name="paymentOption" value="실시간 계좌이체"><span>실시간 계좌이체</span>
						</div>
					</div>
					<div class="orderProduct-button">
						<input type="button" value="취소하기" onclick="loction.href='${pageContext.request.contextPath}/main/main.do'">
						<input type="submit" value="구매하기">
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>
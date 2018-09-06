<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/mypage.css">
<div class="container content">
	<div class="row magazine-page">
		<div class="col-md-12" style="margin-left: 5%;">
			<div class="mypage_form">
				<div class="menu_bar">
					<ul class="list-inline top-v1-contacts">
						<li class="now_menu"><a href="${pageContext.request.contextPath}/mypage/my_cartorder.do">주문/배송</a></li>
						<li>|</li>
						<li class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_cartzzim.do">찜한 상품</a></li>
					</ul>
				</div>
				<div class="container" style="margin-left: 8%;">
					<h2>주문 현황 보기</h2><br><br>
				<table class="table table-condensed" style="margin-left: -7em;width: 90%;">
					<thead class="table-head">
						<tr>
							<th style="font-size: 25px !important;">상품명</th>
							<th style="font-size: 25px !important;">가격</th>
							<th style="font-size: 25px !important;">수량</th>
							<th style="font-size: 25px !important;">합계</th>
							<th style="font-size: 25px !important;">구매금액</th>
						</tr>
					</thead>
					<tbody class="table-body">
						<tr>
							<th><img alt="brand_img" src="${pageContext.request.contextPath}/assets/img/mypage/like_img.png" style="width:50px;">말보루</th>
							<th>10,000원</th>
							<th>5</th>
							<th>50,000원</th>
							<th>50,000원</th>
						</tr>
						<tr>
							<th><img alt="brand_img" src="${pageContext.request.contextPath}/assets/img/mypage/like_img.png" style="width:50px;">말보루</th>
							<th>10,000원</th>
							<th>5</th>
							<th>50,000원</th>
							<th>50,000원</th>
						</tr>
					</tbody>
				</table>
				</div>
			</div>
		</div>
	</div>
</div>
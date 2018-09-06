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
						<li class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_favoritebrand.do">브랜드</a></li>
						<li>|</li>
						<li class="now_menu"><a href="${pageContext.request.contextPath}/mypage/my_favoriteproduct.do">제품</a></li>
						<li>|</li>
						<li class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_favoriteuser.do">사용자</a></li>
						<li>|</li>
						<li class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_favoriteingredient.do">성분</a></li>
					</ul>
				</div>
				<div class="favorite" style="margin-left: -1em;">
					<div class="col-md-4">
						<ul class="favorite_list">
							<li id="f_list" onclick="#">
							<button type="button" class="close" data-dismiss="alert" style="margin-top: -1em; margin-right: -1em;">&times;</button>
								<div id="center">
									<div class="favorite_img" style="margin-left: 5px;">
										<img alt="brand_img" src="${pageContext.request.contextPath}/assets/img/mypage/like_img.png">
									</div>
									<hr>
									<div class="favorite_brand">
										로고나 이름 추후 선택
									</div>
									<div class="favorite_name">
										말보루라이트
									</div>
									<div class="favorite_price">
										4,500원
									</div>
									<div class="favorite_grade">
										★★★★
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="col-md-4">
						<ul class="favorite_list">
							<li id="f_list" onclick="#">
							<button type="button" class="close" data-dismiss="alert" style="margin-top: -1em; margin-right: -1em;">&times;</button>
								<div id="center">
									<div class="favorite_img" style="margin-left: 5px;">
										<img alt="brand_img" src="${pageContext.request.contextPath}/assets/img/mypage/like_img.png">
									</div>
									<hr>
									<div class="favorite_brand">
										로고나 이름 추후 선택
									</div>
									<div class="favorite_name">
										말보루라이트
									</div>
									<div class="favorite_price">
										4,500원
									</div>
									<div class="favorite_grade">
										★★★★
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="col-md-4">
						<ul class="favorite_list">
							<li id="f_list" onclick="#">
							<button type="button" class="close" data-dismiss="alert" style="margin-top: -1em; margin-right: -1em;">&times;</button>
								<div id="center">
									<div class="favorite_img" style="margin-left: 5px;">
										<img alt="brand_img" src="${pageContext.request.contextPath}/assets/img/mypage/like_img.png">
									</div>
									<hr>
									<div class="favorite_brand">
										로고나 이름 추후 선택
									</div>
									<div class="favorite_name">
										말보루라이트
									</div>
									<div class="favorite_price">
										4,500원
									</div>
									<div class="favorite_grade">
										★★★★
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<nav aria-label="Page navigation example" style="margin-left: 34%;">
				  <ul class="pagination justify-content-center">
				    <li class="page-item disabled">
				      <a class="page-link" href="#" tabindex="-1">Previous</a>
				    </li>
				    <li class="page-item"><a class="page-link" href="#">1</a></li>
				    <li class="page-item"><a class="page-link" href="#">2</a></li>
				    <li class="page-item"><a class="page-link" href="#">3</a></li>
				    <li class="page-item">
				      <a class="page-link" href="#">Next</a>
				    </li>
				  </ul>
				</nav>
			</div>
		</div>
	</div>
</div>
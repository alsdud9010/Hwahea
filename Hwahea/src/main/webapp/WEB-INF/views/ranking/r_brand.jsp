<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ranking.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ranking_menu.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/ranking.js"></script>
<!--=== Title ===-->
<div class="container-background">
	<div class="container content r_title">
		<ul>
			<li>
				<p class="r_title1">RANKING</p>
			</li>
			<li><span class="r_title2">화해 랭킹</span> <span class="r_title3">화해유저들이
					뽑은 테마별 랭킹을 확인해보세요! :)</span></li>
		</ul>
	</div>
</div>
<!--=== Content Part ===-->
<div class="container content">
	<div class="row magazine-page white">
		<!-- Begin Content -->
		<div class="col-md-12">
		
		<!-- 메뉴 리스트 -->
			<div class="ranking-menus">
				<div class="navbar nav-default mega-menu" role="navigation">
					<div class="collapse navbar-collapse navbar-responsive-collapse">
						<ul class="nav navbar-nav col-md-12">
							<!-- 카테고리별 -->
							<li class="dropdown"><a href="#"
								onclick="location.href='${pageContext.request.contextPath}/ranking/r_category.do'"
								class="dropdown-toggle" data-toggle="dropdown">카테고리별</a>
								<ul class="dropdown-menu">
									<li class="dropdown-submenu"><a href="#">스킨케어</a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">스킨/토너</a></li>
											<li><a href="index.hmtl">로션/에멀젼</a></li>
											<li><a href="index.hmtl">에센스/앰플/세럼</a></li>
											<li><a href="index.hmtl">페이스 오일</a></li>
											<li><a href="index.hmtl">크림/젤</a></li>
											<li><a href="index.hmtl">아이케어</a></li>
											<li><a href="index.hmtl">미스트</a></li>
										</ul></li>
									<li class="dropdown-submenu"><a href="javascript:void(0);">클렌징/필링</a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">클렌징 폼</a></li>
											<li><a href="index.hmtl">클렌징 워터</a></li>
											<li><a href="index.hmtl">클렌징 젤</a></li>
											<li><a href="index.hmtl">클렌징 오일</a></li>
											<li><a href="index.hmtl">클렌징 로션/크림</a></li>
											<li><a href="index.hmtl">클렌징 비누</a></li>
											<li><a href="index.hmtl">립/아이 리무버</a></li>
											<li><a href="index.hmtl">스크럽/필링</a></li>
										</ul></li>
									<li class="dropdown-submenu"><a href="javascript:void(0);">마스크/팩</a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">시트마스크</a></li>
											<li><a href="index.hmtl">부분마스크/팩</a></li>
											<li><a href="index.hmtl">워시오프 팩</a></li>
											<li><a href="index.hmtl">슬리핑팩</a></li>
										</ul></li>
									<li class="dropdown-submenu"><a href="javascript:void(0);">선케어</a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">선크림/로션</a></li>
											<li><a href="index.hmtl">선케어 기타</a></li>
										</ul></li>
									<li class="dropdown-submenu"><a href="javascript:void(0);">베이스메이크업</a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">메이크업베이스</a></li>
											<li><a href="index.hmtl">프라이머</a></li>
											<li><a href="index.hmtl">BB/CC크림</a></li>
											<li><a href="index.hmtl">파운데이션</a></li>
											<li><a href="index.hmtl">쿠션</a></li>
											<li><a href="index.hmtl">파우더/팩트</a></li>
											<li><a href="index.hmtl">컨실러</a></li>
											<li><a href="index.hmtl">블러셔</a></li>
											<li><a href="index.hmtl">하이타이터/셰이딩</a></li>
											<li><a href="index.hmtl">메이크업픽서</a></li>
										</ul></li>
									<li class="dropdown-submenu"><a href="javascript:void(0);">아이메이크업</a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">아이섀도</a></li>
											<li><a href="index.hmtl">아이라이너</a></li>
											<li><a href="index.hmtl">아이브로우</a></li>
											<li><a href="index.hmtl">마스카라/픽서</a></li>
											<li><a href="index.hmtl">속눈썹영양제</a></li>
										</ul></li>
									<li class="dropdown-submenu"><a href="javascript:void(0);">립메이크업</a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">립스틱</a></li>
											<li><a href="index.hmtl">립틴트</a></li>
											<li><a href="index.hmtl">립케어/립밤</a></li>
										</ul></li>
									<li class="dropdown-submenu"><a href="javascript:void(0);">바디</a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">바디워시</a></li>
											<li><a href="index.hmtl">바디로션</a></li>
											<li><a href="index.hmtl">바디크림/젤</a></li>
											<li><a href="index.hmtl">바디오일/에센스</a></li>
											<li><a href="index.hmtl">바디미스트/샤워코롱</a></li>
											<li><a href="index.hmtl">핸드케어</a></li>
											<li><a href="index.hmtl">여성청결제</a></li>
											<li><a href="index.hmtl">데오드란트</a></li>
											<li><a href="index.hmtl">바디 기타</a></li>
										</ul></li>
									<li class="dropdown-submenu"><a href="javascript:void(0);">헤어</a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">샴푸</a></li>
											<li><a href="index.hmtl">린스/트리트먼트/팩</a></li>
											<li><a href="index.hmtl">헤어에센스/오일</a></li>
											<li><a href="index.hmtl">헤어미스트</a></li>
										</ul></li>
									<li class="dropdown-submenu"><a href="javascript:void(0);">향수</a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">여성향수</a></li>
										</ul></li>
									<li class="dropdown-submenu"><a href="javascript:void(0);">기타</a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">기타</a></li>
										</ul></li>
								</ul></li>
							<!-- 카테고리별 끝 -->
							<!-- 피부타입&고민별 -->
							<li class="dropdown"><a href="#"
								onclick="location.href='${pageContext.request.contextPath}/ranking/r_skinType.do'"
								class="dropdown-toggle" data-toggle="dropdown">피부타입&고민별</a>
								<ul class="dropdown-menu">
									<li class="dropdown-submenu"><a
										href="${pageContext.request.contextPath}/shop/shopProduct.do">스킨케어</a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">스킨/토너</a></li>
											<li><a href="index.hmtl">로션/에멀젼</a></li>
											<li><a href="index.hmtl">에센스/앰플/세럼</a></li>
											<li><a href="index.hmtl">페이스 오일</a></li>
											<li><a href="index.hmtl">크림/젤</a></li>
											<li><a href="index.hmtl">아이케어</a></li>
											<li><a href="index.hmtl">미스트</a></li>
										</ul></li>
								</ul></li>
							<!-- 피부타입&고민별 -->
							<!-- 브랜드별 -->
							<li class="dropdown"><a href="#"
								onclick="location.href='${pageContext.request.contextPath}/ranking/r_brand.do'"
								class="dropdown-toggle" data-toggle="dropdown"> 브랜드별 </a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">스킨/토너</a></li>
											<li><a href="index.hmtl">로션/에멀젼</a></li>
											<li><a href="index.hmtl">에센스/앰플/세럼</a></li>
											<li><a href="index.hmtl">페이스 오일</a></li>
											<li><a href="index.hmtl">크림/젤</a></li>
											<li><a href="index.hmtl">아이케어</a></li>
											<li><a href="index.hmtl">미스트</a></li>
								</ul></li>
							<!-- 브랜드별 끝 -->
							<!-- 연령별 -->
							<li class="dropdown"><a href="javascript:void(0);"
								class="dropdown-toggle" data-toggle="dropdown"> 연령별</a>
								<ul class="dropdown-menu">
											<li><a href="index.hmtl">스킨/토너</a></li>
											<li><a href="index.hmtl">로션/에멀젼</a></li>
											<li><a href="index.hmtl">에센스/앰플/세럼</a></li>
											<li><a href="index.hmtl">페이스 오일</a></li>
											<li><a href="index.hmtl">크림/젤</a></li>
											<li><a href="index.hmtl">아이케어</a></li>
											<li><a href="index.hmtl">미스트</a></li>
								</ul></li>
							<!-- 연령별 끝 -->
							<!-- 베이비&임산부별 -->
							<li class="dropdown"><a href="javascript:void(0);"
								class="dropdown-toggle" data-toggle="dropdown"> 베이비&임산부별</a>
								<ul class="dropdown-menu">
											<li><a href="index.hmtl">스킨/토너</a></li>
											<li><a href="index.hmtl">로션/에멀젼</a></li>
											<li><a href="index.hmtl">에센스/앰플/세럼</a></li>
											<li><a href="index.hmtl">페이스 오일</a></li>
											<li><a href="index.hmtl">크림/젤</a></li>
											<li><a href="index.hmtl">아이케어</a></li>
											<li><a href="index.hmtl">미스트</a></li>
								</ul></li>
							<!-- 베이비&임산부별 끝 -->
							<!-- 남성 시작 -->
							<li class="dropdown"><a href="javascript:void(0);"
									class="dropdown-toggle" data-toggle="dropdown">남성</a>
									<ul class="dropdown-menu">
											<li><a href="index.hmtl">스킨/토너</a></li>
											<li><a href="index.hmtl">로션/에멀젼</a></li>
											<li><a href="index.hmtl">에센스/앰플/세럼</a></li>
											<li><a href="index.hmtl">페이스 오일</a></li>
											<li><a href="index.hmtl">크림/젤</a></li>
											<li><a href="index.hmtl">아이케어</a></li>
											<li><a href="index.hmtl">미스트</a></li>
								</ul></li>
							<!-- 남성 끝 -->
						</ul>
					</div>
				</div>
			</div>
			<!-- 메뉴 리스트 -->
		
			<div class="margin-bottom-15">
				<hr class="hr-md">
			</div>
			
			<div class="col-md-12 brand-search">
				<div class="brand-search-title">
					<strong>BRAND</strong>
					<span>브랜드 별 검색 :)</span>
				</div>
				<ul class="brand-search-content">
					<c:forEach var="brand" items="${brand}">
					<li class="ask-lock-area">
						<input type="radio" name="brand-search-brand" value="${brand.brand_num}"/>
						<label for="brand-${brand.brand_num}">${brand.brand_name}</label>
					</li>
					</c:forEach>
				</ul>
				<input type="button" class="brand-more" value="더보기">
			</div>
			
			<div class="margin-bottom-25"></div>

			<!-- 랭킹 리스트 시작 -->
			<div class="col-md-12 ranking-list">
				<div class="col-md-12">
					<div class="r_second_title">
						<h2>
							<b> 브랜드별 전체 랭킹 </b>
						</h2>
					</div>
				</div>

				<div class="margin-bottom-15"> 
					<hr class="hr-md">
				</div>
				
				<div class="ranking col-md-12">
					<div class="row">
						<ul>
							<li class="ranking_num"><h1>1</h1></li>
							<li class="col-md-2 ranking-img">
								<a href="#"> <img class="img-responsive"
										src="${pageContext.request.contextPath}/assets/img/ranking/ausome.jpg"
										alt="">
								</a>
							</li>
							<li class="ranking_names">
								<div class="ranking_brandName">오우썸 </div>
								<div class="ranking_productName">
									<strong>오가닉 딥모이스처라이징 더블미스트 기획세트</strong>
								</div>
								<div class="r_list_by-author">
									<strong> 18,500원</strong> <span>/ 2.6g</span>
								</div>
							</li>
							<li class="ranking_stars">5.0 ★★★★★ (4,000)</li>
							<li class="ranking_shopping"> 
								<ul>
									<li class="buy">
										<img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/buy.png" alt="">
									</li>
									<li class="cart">
										<img class="img-responsive"
										src="${pageContext.request.contextPath}/assets/img/ranking/cart.png"
										alt="">
									</li>
								</ul>  
							</li>
						</ul>
					</div>
				</div>
				<!-- 랭킹 리스트 끝 -->
			</div>
			<!-- End Content -->
		</div>
	</div>
	</div>
<!--/container-->
<!-- End Content Part -->
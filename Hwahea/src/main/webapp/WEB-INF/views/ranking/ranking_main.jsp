<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/ranking.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/ranking_menu.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/ranking.js"></script>
<!--=== Title ===-->
<div class="container-background">
	<div class="container content r_title">
		<ul>
			<li>
				<p class="r_title1">RANKING</p>
			</li>
			<li><span class="r_title2">화해 랭킹</span>
			<span class="r_title3">화해유저들이 뽑은 테마별 랭킹을 확인해보세요! :)</span></li>
		</ul>
	</div>
</div>
<!--=== Content Part ===-->
<div class="container content">
	<div class="row magazine-page white">
		<!-- Begin Content -->
		<div class="col-md-12">
			<!-- 랭킹 메뉴 시작 -->
			<!-- <div class="col-md-12">
				<ul id="r_main_menu" class="r_main_menu margin-bottom-35 col-md-12">
					<li><div id="category">카테고리별</div></li>
					<li><div id="skinType">피부타입&amp;고민별</div></li>
					<li><div id="brand">브랜드별</div></li>
					<li><div id="age">연령별</div></li>
					<li><div id="baby">베이비&amp;임산부별</div></li>
					<li><div id="man">남성</div></li>
				</ul>
			</div> -->
			
			<div class="ranking-menus">
				<div class="navbar nav-default mega-menu" role="navigation">
					<div class="collapse navbar-collapse navbar-responsive-collapse">
						<ul class="nav navbar-nav col-md-12">
							<!-- 카테고리별 -->
							<li class="dropdown"><a href="#" id="category" class="dropdown-toggle"
								data-toggle="dropdown">카테고리별</a>
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
								onclick="location.href='${pageContext.request.contextPath}/shop/shopMain.do'"
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
								onclick="location.href='${pageContext.request.contextPath}/plus/plusMain.do'"
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
			
			<!-- 랭킹 메뉴 끝 -->

			<!-- 랭킹 메뉴 -->

			<div class="margin-bottom-35">
				<hr class="hr-md">
			</div>

			<!-- 카테고리별 top5 시작 -->
			<div class="ranking-top5">
				<div class="row">
					<div class="col-md-12 margin-bottom-15">
						<h2>
							<b> 카테고리별 </b>
						</h2>
					</div>
					<div class="col-md-2" onclick="location.href='${pageContext.request.contextPath}/review/productInfo.do'">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/first.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
					
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/second.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/third.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div> 
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div> 
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="non_thorphy"
									src="${pageContext.request.contextPath}/assets/img/ranking/four.jpg"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="non_thorphy"
									src="${pageContext.request.contextPath}/assets/img/ranking/five.png"
									alt="">
							</span>
						</div> 
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
				</div>
			</div>
			<!-- 카테고리별 top5 끝 -->

			<div class="margin-bottom-35">
				<hr class="hr-md">
			</div>

			<!-- 피부타입&고민별 top5 시작 -->
			<div class="ranking-top5">
				<div class="row">
					<div class="col-md-12 margin-bottom-15">
						<h2>
							<b> 카테고리별 </b>
						</h2>
					</div>
					<div class="col-md-2" onclick="location.href='${pageContext.request.contextPath}/review/productInfo.do'">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/first.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
					
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/second.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/third.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div> 
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div> 
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="non_thorphy"
									src="${pageContext.request.contextPath}/assets/img/ranking/four.jpg"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="non_thorphy"
									src="${pageContext.request.contextPath}/assets/img/ranking/five.png"
									alt="">
							</span>
						</div> 
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
				</div>
			</div>
			<!-- 피부타입&고민별 top5 끝 -->

			<div class="margin-bottom-35">
				<hr class="hr-md">
			</div>

			<!-- 브랜드별 top5 시작 -->
			<div class="ranking-top5">
				<div class="row">
					<div class="col-md-12 margin-bottom-15">
						<h2>
							<b> 카테고리별 </b>
						</h2>
					</div>
					<div class="col-md-2" onclick="location.href='${pageContext.request.contextPath}/review/productInfo.do'">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/first.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
					
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/second.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/third.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div> 
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div> 
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="non_thorphy"
									src="${pageContext.request.contextPath}/assets/img/ranking/four.jpg"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="non_thorphy"
									src="${pageContext.request.contextPath}/assets/img/ranking/five.png"
									alt="">
							</span>
						</div> 
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
				</div>
			</div>
			<!-- 브랜드별 top5 끝 -->

			<div class="margin-bottom-35">
				<hr class="hr-md">
			</div>

			<!-- 연령별 top5 시작 -->
			<div class="ranking-top5">
				<div class="row">
					<div class="col-md-12 margin-bottom-15">
						<h2>
							<b> 카테고리별 </b>
						</h2>
					</div>
					<div class="col-md-2" onclick="location.href='${pageContext.request.contextPath}/review/productInfo.do'">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/first.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
					
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/second.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/third.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div> 
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div> 
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="non_thorphy"
									src="${pageContext.request.contextPath}/assets/img/ranking/four.jpg"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="non_thorphy"
									src="${pageContext.request.contextPath}/assets/img/ranking/five.png"
									alt="">
							</span>
						</div> 
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
				</div>
			</div>
			<!-- 연령별 top5 끝 -->

			<div class="margin-bottom-35">
				<hr class="hr-md">
			</div>

			<!-- 베이비&임산부별 top5 시작 -->
			<div class="ranking-top5">
				<div class="row">
					<div class="col-md-12 margin-bottom-15">
						<h2>
							<b> 카테고리별 </b>
						</h2>
					</div>
					<div class="col-md-2" onclick="location.href='${pageContext.request.contextPath}/review/productInfo.do'">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/first.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
					
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/second.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/third.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div> 
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div> 
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="non_thorphy"
									src="${pageContext.request.contextPath}/assets/img/ranking/four.jpg"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="non_thorphy"
									src="${pageContext.request.contextPath}/assets/img/ranking/five.png"
									alt="">
							</span>
						</div> 
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
				</div>
			</div>
			<!-- 베이비&임산부별 top5 끝 -->

			<div class="margin-bottom-35">
				<hr class="hr-md">
			</div>

			<!-- 남성 top5 시작 -->
			<div class="ranking-top5">
				<div class="row">
					<div class="col-md-12 margin-bottom-15">
						<h2>
							<b> 카테고리별 </b>
						</h2>
					</div>
					<div class="col-md-2" onclick="location.href='${pageContext.request.contextPath}/review/productInfo.do'">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/first.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
					
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/second.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/third.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div> 
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div> 
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="non_thorphy"
									src="${pageContext.request.contextPath}/assets/img/ranking/four.jpg"
									alt="">
							</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt="">
							</div>
							<span>
						 		<img class="non_thorphy"
									src="${pageContext.request.contextPath}/assets/img/ranking/five.png"
									alt="">
							</span>
						</div> 
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
		                	<strong>5.0 ★★★★★</strong><span>(4,000)</span>
						</div>
					</div>
				</div>
			</div>
			<!-- 남성 top5 끝 -->
			<!-- End Magazine News -->
		</div>
		<!-- End Content -->
	</div>
</div>
<!--/container-->
<!-- End Content Part -->
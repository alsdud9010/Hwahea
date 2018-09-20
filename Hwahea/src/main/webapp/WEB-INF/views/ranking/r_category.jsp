<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
			<!-- 카테고리별 top5 시작 -->
			<div class="ranking-top5">
				<div class="row">
					<div class="col-md-12 margin-bottom-15">
						<h2>
							<b> 카테고리별 </b>
						</h2>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking_images/c_top1.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/first.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">라운드랩</div>
						<div class="r_productName">
							<strong>1025 독도 토너</strong>
						</div>
						<div class="r_by-author">
		                	<strong>4.8 ★★★★★</strong>
						</div>
					</div>
					
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking_images/c_top2.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/second.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">피지오겔</div>
						<div class="r_productName">
							<strong>AI 리페어 로션</strong>
						</div>
						<div class="r_by-author">
		                	<strong>4.77 ★★★★★</strong>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking_images/c_top3.jpg"
									alt="">
							</div>
							<span>
						 		<img class="thropy"
									src="${pageContext.request.contextPath}/assets/img/ranking/third.png"
									alt="">
							</span>
						</div>
						<div class="r_brandName">이니스프리</div> 
						<div class="r_productName">
							<strong>그린티 씨드 세럼</strong>
						</div>
						<div class="r_by-author">
		                	<strong>4.77 ★★★★★</strong>
						</div>
					</div> 
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking_images/c_top4.jpg"
									alt="">
							</div>
							<span>
						 		<img class="non_thorphy"
									src="${pageContext.request.contextPath}/assets/img/ranking/four.jpg"
									alt="">
							</span>
						</div>
						<div class="r_brandName">아벤느</div>
						<div class="r_productName">
							<strong>젠틀토닝로션(로씨옹토니끄두쎄르)</strong>
						</div>
						<div class="r_by-author">
		                	<strong>4.74 ★★★★★</strong>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<div>
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking_images/c_top5.jpg"
									alt="">
							</div>
							<span>
						 		<img class="non_thorphy"
									src="${pageContext.request.contextPath}/assets/img/ranking/five.png"
									alt="">
							</span>
						</div> 
						<div class="r_brandName">마몽드</div>
						<div class="r_productName">
							<strong>플로랄 하이드로 에멀젼</strong>
						</div>
						<div class="r_by-author">
		                	<strong>4.36 ★★★★★</strong>
						</div>
					</div>
				</div>
			</div>
			<!-- 카테고리별별 top5 끝 -->



			<div class="margin-bottom-15">
				<hr class="hr-md">
			</div>

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
											<li><a href="#" class="cate" data-value="1" data-name="스킨/토너">스킨/토너</a></li>
											<li><a href="#" class="cate" data-value="2" data-name="로션/에멀젼">로션/에멀젼</a></li>
											<li><a href="#" class="cate" data-value="3" data-name="에센스/앰플/세럼">에센스/앰플/세럼</a></li>
											<li><a href="#" class="cate" data-value="4" data-name="페이스 오일">페이스 오일</a></li>
											<li><a href="#" class="cate" data-value="5" data-name="크림/젤">크림/젤</a></li>
											<li><a href="#" class="cate" data-value="6" data-name="아이케어">아이케어</a></li>
											<li><a href="#" class="cate" data-value="7" data-name="미스트">미스트</a></li>
										</ul></li>
									<li class="dropdown-submenu"><a href="javascript:void(0);">클렌징/필링</a>
										<ul class="dropdown-menu">
											<li><a href="#" class="cate" data-value="8" data-name="클렌징 폼">클렌징 폼</a></li>
											<li><a href="#" class="cate" data-value="9" data-name="클렌징 워터">클렌징 워터</a></li>
											<li><a href="#" class="cate" data-value="10" data-name="클렌징 젤">클렌징 젤</a></li>
											<li><a href="#" class="cate" data-value="11" data-name="클렌징 오일">클렌징 오일</a></li>
											<li><a href="#" class="cate" data-value="12" data-name="클렌징 로션/크림">클렌징 로션/크림</a></li>
											<li><a href="#" class="cate" data-value="13" data-name="클렌징 비누">클렌징 비누</a></li>
											<li><a href="#" class="cate" data-value="14" data-name="클렌징 티슈">클렌징 티슈</a></li>
											<li><a href="#" class="cate" data-value="15" data-name="립/아이 리무버">립/아이 리무버</a></li>
											<li><a href="#" class="cate" data-value="16ㅋ" data-name="스크럽/필링">스크럽/필링</a></li>
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
									<li class="dropdown-submenu"><a href="javascript:void(0);">복합성</a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">스킨케어</a></li>
											<li><a href="index.hmtl">클렌징/필링</a></li>
											<li><a href="index.hmtl">마스크/팩</a></li>
											<li><a href="index.hmtl">선케어</a></li>
											<li><a href="index.hmtl">베이스</a></li>
											<li><a href="index.hmtl">아이</a></li>
											<li><a href="index.hmtl">립</a></li>
											<li><a href="index.hmtl">바디</a></li>
											<li><a href="index.hmtl">헤어</a></li>
											<li><a href="index.hmtl">네일</a></li>
											<li><a href="index.hmtl">향수</a></li>
											<li><a href="index.hmtl">기타</a></li>
										</ul></li>
									<li class="dropdown-submenu"><a href="javascript:void(0);">건성</a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">스킨케어</a></li>
											<li><a href="index.hmtl">클렌징/필링</a></li>
											<li><a href="index.hmtl">마스크/팩</a></li>
											<li><a href="index.hmtl">선케어</a></li>
											<li><a href="index.hmtl">베이스</a></li>
											<li><a href="index.hmtl">아이</a></li>
											<li><a href="index.hmtl">립</a></li>
											<li><a href="index.hmtl">바디</a></li>
											<li><a href="index.hmtl">헤어</a></li>
											<li><a href="index.hmtl">네일</a></li>
											<li><a href="index.hmtl">향수</a></li>
											<li><a href="index.hmtl">기타</a></li>
										</ul></li>
									<li class="dropdown-submenu"><a href="javascript:void(0);">지성</a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">스킨케어</a></li>
											<li><a href="index.hmtl">클렌징/필링</a></li>
											<li><a href="index.hmtl">마스크/팩</a></li>
											<li><a href="index.hmtl">선케어</a></li>
											<li><a href="index.hmtl">베이스</a></li>
											<li><a href="index.hmtl">아이</a></li>
											<li><a href="index.hmtl">립</a></li>
											<li><a href="index.hmtl">바디</a></li>
											<li><a href="index.hmtl">헤어</a></li>
											<li><a href="index.hmtl">네일</a></li>
											<li><a href="index.hmtl">향수</a></li>
											<li><a href="index.hmtl">기타</a></li>
										</ul></li>
									<li class="dropdown-submenu"><a href="javascript:void(0);">중성</a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">스킨케어</a></li>
											<li><a href="index.hmtl">클렌징/필링</a></li>
											<li><a href="index.hmtl">마스크/팩</a></li>
											<li><a href="index.hmtl">선케어</a></li>
											<li><a href="index.hmtl">베이스</a></li>
											<li><a href="index.hmtl">아이</a></li>
											<li><a href="index.hmtl">립</a></li>
											<li><a href="index.hmtl">바디</a></li>
											<li><a href="index.hmtl">헤어</a></li>
											<li><a href="index.hmtl">네일</a></li>
											<li><a href="index.hmtl">향수</a></li>
											<li><a href="index.hmtl">기타</a></li>
										</ul></li>
									<li class="dropdown-submenu"><a href="javascript:void(0);">민감성</a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">스킨케어</a></li>
											<li><a href="index.hmtl">클렌징/필링</a></li>
											<li><a href="index.hmtl">마스크/팩</a></li>
											<li><a href="index.hmtl">선케어</a></li>
											<li><a href="index.hmtl">베이스</a></li>
											<li><a href="index.hmtl">아이</a></li>
											<li><a href="index.hmtl">립</a></li>
											<li><a href="index.hmtl">바디</a></li>
											<li><a href="index.hmtl">헤어</a></li>
											<li><a href="index.hmtl">네일</a></li>
											<li><a href="index.hmtl">향수</a></li>
											<li><a href="index.hmtl">기타</a></li>
										</ul></li>
									<li class="dropdown-submenu"><a href="javascript:void(0);">여드름</a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">스킨케어</a></li>
											<li><a href="index.hmtl">클렌징/필링</a></li>
											<li><a href="index.hmtl">마스크/팩</a></li>
											<li><a href="index.hmtl">선케어</a></li>
											<li><a href="index.hmtl">베이스</a></li>
											<li><a href="index.hmtl">아이</a></li>
											<li><a href="index.hmtl">립</a></li>
											<li><a href="index.hmtl">바디</a></li>
											<li><a href="index.hmtl">헤어</a></li>
											<li><a href="index.hmtl">네일</a></li>
											<li><a href="index.hmtl">향수</a></li>
											<li><a href="index.hmtl">기타</a></li>
										</ul></li>
									<li class="dropdown-submenu"><a href="javascript:void(0);">아토피</a>
										<ul class="dropdown-menu">
											<li><a href="index.hmtl">스킨케어</a></li>
											<li><a href="index.hmtl">클렌징/필링</a></li>
											<li><a href="index.hmtl">마스크/팩</a></li>
											<li><a href="index.hmtl">선케어</a></li>
											<li><a href="index.hmtl">베이스</a></li>
											<li><a href="index.hmtl">아이</a></li>
											<li><a href="index.hmtl">립</a></li>
											<li><a href="index.hmtl">바디</a></li>
											<li><a href="index.hmtl">헤어</a></li>
											<li><a href="index.hmtl">네일</a></li>
											<li><a href="index.hmtl">향수</a></li>
											<li><a href="index.hmtl">기타</a></li>
										</ul></li>
								</ul></li>
							<!-- 피부타입&고민별 -->
							<!-- 브랜드별 -->
							<li><a href="#"
								onclick="location.href='${pageContext.request.contextPath}/ranking/r_brand.do'"
								class="dropdown-toggle" data-toggle="dropdown"> 브랜드별 </a>
							</li>
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
			
			<div class="margin-bottom-15">
					<hr class="hr-md">
				</div>

			<!-- 랭킹 리스트 시작 -->
			<div class="col-md-12 ranking-list">
				<div class="col-md-12">
					<div class="r_second_title">
						<h2><b> 카테고리별 전체 랭킹 </b></h2>
					</div>
				</div>

				<div class="margin-bottom-15"> 
					<hr class="hr-md">
				</div>
				
				<div class="ranking col-md-12">
				<c:forEach var="c" items="${category}" varStatus="status">
					<div class="row">
						<ul>
							<li class="ranking_num"><h1>${status.count}</h1></li>
							<li class="col-md-2 ranking-img">
								<a href="#"><img src="${pageContext.request.contextPath}/cosmetic/cosmeticImageView.do?c_code=${c.c_code}" width="100px"></a>
	 						</li>
							<li class="ranking_names">
								<div class="ranking_brandName">${c.brand}</div>
								<div class="ranking_productName">
									<strong>${c.c_name}</strong>
								</div>
								<div class="r_list_by-author">
									<strong>${c.c_price}</strong> <span>/ ${c.c_capacity}</span>
								</div>
							</li>
							<li class="ranking_stars">${c.c_rate}
									<c:if test="${c.c_rate>=0 && c.c_rate<1}">   
									★☆☆☆☆
									</c:if>
									<c:if test="${c.c_rate>=1 && c.c_rate<2}">    
									★★☆☆☆
									</c:if>
									<c:if test="${c.c_rate>=2 && c.c_rate<3}">    
									★★★☆☆
									</c:if>
									<c:if test="${c.c_rate>=3 && c.c_rate<4}">    
									★★★★☆
									</c:if>
									<c:if test="${c.c_rate>=4}"> 
									★★★★★
									</c:if>
							<li class="ranking_shopping"> 
								<ul>
									<li class="buy">
										<img class="img-responsive"
										src="${pageContext.request.contextPath}/assets/img/ranking/buy.png"
										alt="">
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
					</c:forEach>
					</div>
				</div>
				<!-- 랭킹 리스트 끝 -->
			</div>
			<!-- End Content -->
		</div>
	</div>
<!--/container-->
<!-- End Content Part -->
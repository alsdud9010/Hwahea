<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/shop.css">
<script src="${pageContext.request.contextPath}/assets/js/shop.js"></script>
<div class="container-background">
	<div class="container content r_title">
		<ul>
			<li>
				<p class="r_title1">SHOPPING</p>
			</li>
			<li><span class="r_title2">쇼핑</span> <span class="r_title3">꼭
					갖고 싶은 그 상품들♥ 화해쇼핑에서 다양한 혜택받고 득템하자!</span></li>
		</ul>
	</div>
</div>
<div class="container content">
	<div class="row magazine-page white">
		<!-- Begin Content -->
		<div class="col-md-12">
			<!-- Slider -->
			<div class="carousel slide carousel-v1 margin-bottom-40"
				id="myCarousel-1">
				<div class="carousel-inner">
					<div class="item active">
						<img alt=""
							src="${pageContext.request.contextPath}/assets/img/shop/beauty_trap.jpg">
					</div>
					<div class="item">
						<img alt=""
							src="${pageContext.request.contextPath}/assets/img/shop/lala.jpg">
					</div>
					<div class="item">
						<img alt=""
							src="${pageContext.request.contextPath}/assets/img/shop/mask.jpg">
					</div>
					<div class="item">
						<img alt=""
							src="${pageContext.request.contextPath}/assets/img/shop/clio_event.jpg">
					</div>
					<div class="item">
						<img alt=""
							src="${pageContext.request.contextPath}/assets/img/shop/shop_sasim.jpg">
					</div>
				</div>
				<div class="carousel-arrow">
					<a data-slide="prev" href="#myCarousel-1"
						class="left carousel-control"> <i class="fa fa-angle-left"></i>
					</a> <a data-slide="next" href="#myCarousel-1"
						class="right carousel-control"> <i class="fa fa-angle-right"></i>
					</a>
				</div>
			</div>
			<!-- End Slider -->
			<!-- 화해유저 추천템 시작 -->
			<div class="main_cate_wrap">
			<ul class="main_cate_list">
				<li class="first">
					<a href="javascript:;" class="main_menu" data-id="skinCare">스킨케어</a>
					<ul class="sub_cate_list sub_skinCare">
						<li><a href="javascript:;" class="sub_menu">로션/에멀젼</a>	</li>
						<li><a href="javascript:;" class="sub_menu">에센스/앰플/세럼</a></li>
						<li><a href="javascript:;" class="sub_menu">페이스오일</a></li>
						<li><a href="javascript:;" class="sub_menu">크림/젤</a></li>
						<li><a href="javascript:;" class="sub_menu">아이케어</a></li>
						<li><a href="javascript:;" class="sub_menu">미스트</a></li>
					</ul>
				</li>
				<li>
					<a href="javascript:;" class="main_menu" data-id="cleansing">클렌징/필링</a>
					<ul class="sub_cate_list sub_cleansing">
						<li><a href="javascript:;" class="sub_menu">클렌징 폼</a></li>
						<li><a href="javascript:;" class="sub_menu">클렌징 워터</a></li>
						<li><a href="javascript:;" class="sub_menu">클렌징 젤</a></li>
						<li><a href="javascript:;" class="sub_menu">클렌징 오일</a></li>
						<li><a href="javascript:;" class="sub_menu">클렌징 로션/크림</a></li>
						<li><a href="javascript:;" class="sub_menu">클렌징 비누</a></li>
						<li><a href="javascript:;" class="sub_menu">립/아이 리무버</a></li>
						<li><a href="javascript:;" class="sub_menu">스크럽/필링</a></li>
					</ul>
				</li>
				<li>
					<a href="javascript:;" class="main_menu" data-id="shopMask">마스크팩</a>
					<ul class="sub_cate_list sub_shopMask">
						<li><a href="javascript:;" class="sub_menu">시트마스크</a></li>
						<li><a href="javascript:;" class="sub_menu">부분마스크/팩</a></li>
						<li><a href="javascript:;" class="sub_menu">워시오프 팩</a></li>
						<li><a href="javascript:;" class="sub_menu">슬리핑 팩</a></li>
					</ul>
				</li>
				<li>
					<a href="javascript:;" class="main_menu" data-id="shopSunCare">선케어</a>
					<ul class="sub_cate_list sub_shopSunCare">
						<li><a href="javascript:;" class="sub_menu">선크림/로션</a></li>
						<li><a href="javascript:;" class="sub_menu">선케어 기타</a></li>
					</ul>
				</li>
				<li>
					<a href="javascript:;" class="main_menu" data-id="baseMakeUp">베이스메이크업</a>
					<ul class="sub_cate_list sub_baseMakeUp">
						<li><a href="javascript:;" class="sub_menu">메이크업베이스</a></li>
						<li><a href="javascript:;" class="sub_menu">프라이머</a></li>
						<li><a href="javascript:;" class="sub_menu">BB/CC크림</a></li>
						<li><a href="javascript:;" class="sub_menu">파운데이션</a></li>
						<li><a href="javascript:;" class="sub_menu">쿠션</a></li>
						<li><a href="javascript:;" class="sub_menu">파우더/팩트</a></li>
						<li><a href="javascript:;" class="sub_menu">컨실러</a></li>
						<li><a href="javascript:;" class="sub_menu">블러셔</a></li>
						<li><a href="javascript:;" class="sub_menu">하이라이터/셰이딩</a></li>
						<li><a href="javascript:;" class="sub_menu">메이크업픽서</a></li>
					</ul>
				</li>
				<li>
					<a href="javascript:;" class="main_menu" data-id="eyeMakeUp">아이메이크업</a>
					<ul class="sub_cate_list sub_eyeMakeUp">
						<li><a href="javascript:;" class="sub_menu">아이섀도</a></li>
						<li><a href="javascript:;" class="sub_menu">아이라이너</a></li>
						<li><a href="javascript:;" class="sub_menu">아이브로우</a></li>
						<li><a href="javascript:;" class="sub_menu">마스카라/픽서</a></li>
						<li><a href="javascript:;" class="sub_menu">속눈썹영양제</a></li>
					</ul>
				</li>
				<li>
					<a href="javascript:;" class="main_menu" data-id="lipMakeUp">립메이크업</a>
					<ul class="sub_cate_list sub_lipMakeUp">
						<li><a href="javascript:;" class="sub_menu">립스틱</a></li>
						<li><a href="javascript:;" class="sub_menu">립틴트</a></li>
						<li><a href="javascript:;" class="sub_menu">립케어/립밤</a></li>
					</ul>
				</li>
				<li>
					<a href="javascript:;" class="main_menu" data-id="shopBody">바디</a>
					<ul class="sub_cate_list sub_shopBody">
						<li><a href="javascript:;" class="sub_menu">바디워시</a></li>
						<li><a href="javascript:;" class="sub_menu">바디로션</a></li>
						<li><a href="javascript:;" class="sub_menu">바디크림/젤</a></li>
						<li><a href="javascript:;" class="sub_menu">바디오일/에센스</a></li>
						<li><a href="javascript:;" class="sub_menu">바디미스트/샤워코롱</a></li>
						<li><a href="javascript:;" class="sub_menu">핸드케어</a></li>
						<li><a href="javascript:;" class="sub_menu">여성청결제</a></li>
						<li><a href="javascript:;" class="sub_menu">데오드란트</a></li>
						<li><a href="javascript:;" class="sub_menu">바디기타</a></li>
					</ul>
				</li>
				<li>
					<a href="javascript:;" class="main_menu" data-id="shopHair">헤어</a>
					<ul class="sub_cate_list sub_shopHair">
						<li><a href="javascript:;" class="sub_menu">샴푸</a></li>
						<li><a href="javascript:;" class="sub_menu">린스/트리트먼트/팩</a></li>
						<li><a href="javascript:;" class="sub_menu">헤어에센스/오일</a></li>
						<li><a href="javascript:;" class="sub_menu">헤어미스트</a></li>
					</ul>
				</li>
				<li>
					<a href="javascript:;" class="main_menu" data-id="shopPerfume">향수</a>
					<ul class="sub_cate_list sub_shopPerfume">
						<li><a href="javascript:;" class="sub_menu">여성향수</a></li>
					</ul>
				</li>
				<li>
					<a href="javascript:;" class="main_menu" data-id="shopEtc">기타</a>
				</li>
				<li>
					<a href="javascript:;" class="main_menu" data-id="shopBaM">베이비&임산부</a>
					<ul class="sub_cate_list sub_shopBaM">
						<li><a href="javascript:;" class="sub_menu">클렌저/워시</a></li>
						<li><a href="javascript:;" class="sub_menu">로션</a></li>
						<li><a href="javascript:;" class="sub_menu">크림/젤</a></li>
						<li><a href="javascript:;" class="sub_menu">오일</a></li>
						<li><a href="javascript:;" class="sub_menu">파우더</a></li>
						<li><a href="javascript:;" class="sub_menu">선크림/로션</a></li>
						<li><a href="javascript:;" class="sub_menu">선케어 기타</a></li>
						<li><a href="javascript:;" class="sub_menu">샴푸</a></li>
						<li><a href="javascript:;" class="sub_menu">임산부화장품</a></li>
					</ul>
				</li>
				<li>
					<a href="javascript:;" class="main_menu" data-id="shopForMan">남성</a>
					<ul class="sub_cate_list sub_shopForMan">
						<li><a href="javascript:;" class="sub_menu">클렌징/필링</a></li>
						<li><a href="javascript:;" class="sub_menu">스킨/토너/미스트</a></li>
						<li><a href="javascript:;" class="sub_menu">로션/에멀젼</a></li>
						<li><a href="javascript:;" class="sub_menu">에센스/앰플/세럼</a></li>
						<li><a href="javascript:;" class="sub_menu">크림/젤</a></li>
						<li><a href="javascript:;" class="sub_menu">올인원</a></li>
						<li><a href="javascript:;" class="sub_menu">선케어</a></li>
						<li><a href="javascript:;" class="sub_menu">남성메이크업</a></li>
						<li><a href="javascript:;" class="sub_menu">헤어스타일링</a></li>
					</ul>
				</li>
			</ul>
	</div>
	<div class="row magazine-page">
			<div class="shopping-label">
				<h3>
					<span>#</span> 화해유저 추천템
					<hr>
				</h3>
			</div>
			<div class="shopping-recommend">
				<div class="shopping-recommend-detail">
					<div>
						<a href="#"><img class="shopping-recommend-img"
							src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"
							alt=""> </a>
					</div>
					<a href="#" class="recommend-title"># 발색</a>
					<div class="recommend-content">
						<a href="#"><strong>발색력 좋은 립틴트</strong></a>
					</div>
				</div>
				<div class="shopping-recommend-detail">
					<div>
						<a href="#"><img class="shopping-recommend-img"
							src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"
							alt=""> </a>
					</div>
					<a href="#" class="recommend-title"># 트러블</a>
					<div class="recommend-content">
						<a href="#"><strong>여드름 진정 슬리핑팩</strong></a>
					</div>
				</div>
				<div class="shopping-recommend-detail">
					<div>
						<a href="#"><img class="shopping-recommend-img"
							src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"
							alt=""> </a>
					</div>
					<a href="#" class="recommend-title"># 머릿결</a>
					<div class="recommend-content">
						<a href="#"><strong>머릿결 부드러워지는 샴푸</strong></a>
					</div>
				</div>
				<div class="shopping-products-detail">
					<a href="#"><img class="shopping-products-img"
						src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"
						alt=""> </a>
					<div class="shopping-products-content">
						<div class="shopping-products-title">
							<a href="#">아하+바하로 각질과 모공속 까지 케어~</a>
						</div>
						<div class="shopping-products-explain">
							<div class="shop-content">
								<a href="#">데일리로 순하게 사용할 수 있는 토너래!</a>
							</div>
							<div class="shop-keyword">
								<a href="#">#트러블 #좁쌀 #피지</a>
							</div>
						</div>
					</div>
				</div>
				<div class="shopping-products-detail">
					<a href="#"><img class="shopping-products-img"
						src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"
						alt=""> </a>
					<div class="shopping-products-content">
						<div class="shopping-products-title">
							<a href="#">랭킹 1위 선크림 30% 특가 + 증정까지!</a>
						</div>
						<div class="shopping-products-explain">
							<div class="shop-content">
								<a href="#">발림성 + 촉촉함 + 예쁜 톤업 다 갖췄어♥</a>
							</div>
							<div class="shop-keyword">
								<a href="#">#발림성 #백탁 #트러블</a>
							</div>
						</div>
					</div>
				</div>
				<div class="shopping-products-detail">
					<a href="#"><img class="shopping-products-img"
						src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"
						alt=""> </a>
					<div class="shopping-products-content">
						<div class="shopping-products-title">
							<a href="#">평점 4.2 믿고사는 아이소이 수딩 젤♥</a>
						</div>
						<div class="shopping-products-explain">
							<div class="shop-content">
								<a href="#">과민감 피부가 추천한대! 지금 할인 중!</a>
							</div>
							<div class="shop-keyword">
								<a href="#">#민감/예민 #트러블 #촉촉/수분</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 화해유저 추천템 끝 -->
			<!-- 화해유저 인기템 시작 -->
			<div class="shopping-label">
				<h3>
					<span>#</span> 입소문난 화해 인기템 모았어<span>♥</span>
					<hr>
				</h3>
			</div>
			<div class="shopping-hot">
				<div class="shopping-hot-detail">
					<span class="shopping-hot-explain"> <span>1</span> <a
						href="#" class="shopping-hot-content">평점 4.2 믿고사는 아이소이 수딩 젤♥</a>
					</span> <a href="#"><img class="shopping-hot-img"
						src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"
						alt=""> </a>
				</div>
				<div class="shopping-hot-detail">
					<span class="shopping-hot-explain"> <span>2</span> <a
						href="#" class="shopping-hot-content">칙칙 잡티에 딱!민감성도 만족하는
							비타민C에센스 60%!</a>
					</span> <a href="#"><img class="shopping-hot-img"
						src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"
						alt=""> </a>
				</div>
				<div class="shopping-hot-detail">
					<span class="shopping-hot-explain"> <span>3</span> <a
						href="#" class="shopping-hot-content">끈적임 없는 에센스 가-득! 진정효과 팩
							10매 6000원♥</a>
					</span> <a href="#"><img class="shopping-hot-img"
						src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"
						alt=""> </a>
				</div>
				<div class="shopping-hot-detail">
					<span class="shopping-hot-explain"> <span>4</span> <a
						href="#" class="shopping-hot-content">3400명이 리뷰한 평점 4.1 리얼 진정
							수딩 젤 단독특가!</a>
					</span> <a href="#"><img class="shopping-hot-img"
						src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"
						alt=""> </a>
				</div>
				<div class="shopping-hot-detail">
					<span class="shopping-hot-explain"> <span>5</span> <a
						href="#" class="shopping-hot-content">평점 4.1 스테디셀러 에센스! 1+1
							한정기간 추가 할인♥</a>
					</span> <a href="#"><img class="shopping-hot-img"
						src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"
						alt=""> </a>
				</div>
			</div>
			<!-- 화해유저 인기템 끝 -->
		</div>
	</div>
</div>
</div>
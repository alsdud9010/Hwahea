<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/shop.css">
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
						<div class="carousel-caption">
							<p>화해 앱들고 전국 뷰티매장으로 떠나요! ♥</p>
						</div>
					</div>
					<div class="item">
						<img alt=""
							src="${pageContext.request.contextPath}/assets/img/shop/lala.jpg">
						<div class="carousel-caption">
							<p>화해와 랄라블라가 함께하는 FRIST BIG SALE!!</p>
						</div>
					</div>
					<div class="item">
						<img alt=""
							src="${pageContext.request.contextPath}/assets/img/shop/mask.jpg">
						<div class="carousel-caption">
							<p>실키 마스크 구매 시 로즈 골드 마스크팩 증정!</p>
						</div>
					</div>
					<div class="item">
						<img alt=""
							src="${pageContext.request.contextPath}/assets/img/shop/clio_event.jpg">
						<div class="carousel-caption">
							<p>클럽 클리오 최대 40%!</p>
						</div>
					</div>
					<div class="item">
						<img alt=""
							src="${pageContext.request.contextPath}/assets/img/shop/shop_sasim.jpg">
						<div class="carousel-caption">
							<p>사심 쏙~ 뺀! 똑똑한 추천 화해 쇼핑템</p>
						</div>
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
					<a href="#" class="recommend-title"># 촉촉/수분</a>
					<div class="recommend-content">
						<a href="#"><strong>수분가득 워시오프팩</strong></a>
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
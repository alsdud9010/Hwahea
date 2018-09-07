<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/shop.css">
<!-- 쇼핑 리스트 내용 시작 -->
<div class="container content">
	<div class="productListArea">
		<div class="shop-productView-category">
			<a href="${pageContext.request.contextPath}/shop/shopMain.do">쇼핑
				홈 </a>> <a href="${pageContext.request.contextPath}/shop/shopProduct.do">
				스킨케어 </a>
		</div>
		<div class="shopProduct-title">
			<h1>스킨케어</h1>
		</div>
			<ul class="col-md-12 shopList-category" id="shoppingMore">
				<li class="category-first cate-on"><a href="#">전체</a></li>
				<li><a href="#"> 스킨/토너</a></li>
				<li><a href="#"> 로션/에멀젼</a></li>
				<li><a href="#"> 에센스/앰플/세럼</a></li>
				<li><a href="#"> 페이스오일</a></li>
				<li><a href="#"> 크림/젤</a></li>
				<li><a href="#"> 아이케어</a></li>
				<li><a href="#"> 미스트</a></li>
				<li><a href="#"> </a></li>
				<li><a href="#"> </a></li>
				<li><a href="#"> </a></li>
				<li><a href="#"> </a></li>
			</ul>
			<div class="col-md-12 shopList-search">
				<div class="shopList-search-title">
					<strong>BRAND</strong>
					<span>브랜드 별 검색 :)</span>
				</div>
				<ul class="shopList-search-content">
					<li class="ask-lock-area">
						<input type="checkbox" id="aaa" name="shop-search-brand" value="건성"/>
						<label for="aaa">건성</label>
					</li>
				</ul>
				<button class="shop-brand-more">더보기</button>
				<div class="shopList-reset"><button id="onBrandReSet">선택 초기화</button></div>
		</div>
		<p class="col-md-12 shopList-cateCnt"> 스킨케어 카테고리에<span> 1,090 </span>개의 상품이 등록되어 있습니다.</p>
		<div class="col-md-12 shopList-cate-align">
			<div class="align-sort">
				<ul>
					<li><a class="align-on" href="javascript:;" data-prdSoting="02">최근등록순</a></li>
					<li><a href="javascript:;" data-prdSoting="03">리뷰많은순</a></li>
					<li><a href="javascript:;" data-prdSoting="05">낮은 가격순</a></li>
					<li><a href="javascript:;" data-prdSoting="06">높은 가격순</a></li>
				</ul>
			</div>
		</div>
		<ul class="col-md-12 shopList-product-list">
			<li class="pl-flag">
				<div class="pl-info">
					<a href="${pageContext.request.contextPath}/shop/shopProductView.do" class="pl-thumb productsList">
						<img src="${pageContext.request.contextPath}/assets/img/shop/witch_hazel_astringent.jpg" 
						alt="메이케이티드 위치하젤 아스트린젠트 355ml" onerror="common.errorImg(this);">
					</a>
					<div class="pl-name">
						<a href="${pageContext.request.contextPath}/shop/shopProductView.do" class="goodsList">
							<span class="pl-brand">세이어스</span>
							<p class="pl-product-name">메이케이티드 위치하젤 아스트린젠트 355ml</p>
						</a>
					</div>
					<button class="shop-wish">찜하기</button>
					<p class="pl-price">
						<span class="pl-product-tx">
							<span class="pl-product-price">15,000</span>원 
						</span>
						<span class="pl-product-sale">
							<span class="pl-product-price">12,000</span>원 
						</span>
					</p>
				</div>
			</li>
		</ul>
		<!-- 페이징 처리 -->
		<div class="col-md-12 pageing">
			
		</div>
		<!-- 페이징 처리 끝 -->
	</div>
</div>
<!-- 쇼핑 리스트 내용 끝 -->
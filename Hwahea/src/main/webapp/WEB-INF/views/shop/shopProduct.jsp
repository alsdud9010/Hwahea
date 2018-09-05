<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shop.css">
<!-- 쇼핑 리스트 타이틀 시작 -->
<div class="product-category-title">
	<div class="category-title">
		<span class="category-title-kr">스킨케어</span> <span
			class="category-title-en">SKINCARE</span>
	</div>
</div>
<!-- 쇼핑 리스트 타이틀 끝 -->
<!-- 쇼핑 리스트 내용 시작 -->
<div class="container content">
	<div class="productListArea">
		<!-- left menu start -->
		<div class="col-md-4 product-lmArea">
			<form>
				<!-- 히든값? -->
				<div class="shopping-select-category">
					<p class="productList-title">스킨케어</p>
					<ul class="list-category-detail" id="shoppingMore">
						<li class="on"><a href="#">전체(제품수)</a></li>
						<li><a href="#"> 스킨/토너(30)</a></li>
						<li><a href="#"> 로션/에멀젼(21)</a></li>
						<li><a href="#"> 에센스/앰플/세럼(32)</a></li>
						<li><a href="#"> 페이스오일(37)</a></li>
						<li><a href="#"> 크림/젤(7)</a></li>
						<li><a href="#"> 아이케어(7)</a></li>
						<li><a href="#"> 미스트(11)</a></li>
					</ul>
				</div>
				<div class="product-search" id="product-search">
					<p class="productList-title-search">상세검색</p>
					<div class="skin-trouble-sort">
						<p class="pdtSortSTit">피부 고민별</p>
						<ul class="list-search-detail">
							<li><div class="inputCheck">
									<input type="checkbox" /> <label for="skin1">아토피</label>
								</div></li>
							<li><div class="inputCheck">
									<input type="checkbox" /> <label for="skin1">여드름</label>
								</div></li>
							<li><div class="inputCheck">
									<input type="checkbox" /> <label for="skin1">민감성</label>
								</div></li>
						</ul>
					</div>
					<div class="ingredient-sort">
						<p class="pdtSortSTit">성분별 검색</p>
						<ul class="materialSearchList">
							<li><div class="inputCheck">
									<input type="checkbox" /> <label for="material1">글리세린</label>
								</div></li>
							<li><div class="inputCheck">
									<input type="checkbox" /> <label for="material1">글리세린</label>
								</div></li>
							<li><div class="inputCheck">
									<input type="checkbox" /> <label for="material1">글리세린</label>
								</div></li>
							<li><div class="inputCheck">
									<input type="checkbox" /> <label for="material1">글리세린</label>
								</div></li>
						</ul>
					</div>
				</div>
			</form>
		</div>
		<!-- left menu end -->
		<!-- product list start -->
		<div class="col-md-8 product-contents">
			<div class="sortCon">
				<div class="listCount">
					총 <span>164</span>개
				</div>
				<div class="shopping-sort">
					<select id="shopping-sort-keyfield">
						<option value="least" selected>신상품 순</option>
						<option value="lowPrice">낮은 가격 순</option>
						<option value="highPrice">높은 가격 순</option>
						<option value="manyReview">리뷰 많은 순</option>
					</select>
				</div>
			</div>
			<div class="productListArea2">
				<div class="shopItem">
					<div>
						<a href="${pageContext.request.contextPath}/shop/shopProductView.do">
						<img class="shopItem-img" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"
							alt=""> </a>
					</div>
					<div class="shopItemExplain">
						<p class="shopItemName">
							<a href="${pageContext.request.contextPath}/shop/shopProductView.do">클레이 마스크 70ml</a>
						</p>
						<p class="shopItemPrice">
							<a href="${pageContext.request.contextPath}/shop/shopProductView.do">8,000&nbsp;원</a>
						</p>
						<p class="shopItemBuying">
							<a href="${pageContext.request.contextPath}/shop/shopProductView.do">♥</a>
						</p>
					</div>
				</div>
				<div class="shopItem">
					<div>
						<a href="#"><img class="shopItem-img"
							src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"
							alt=""> </a>
					</div>
					<div class="shopItemExplain">
						<p class="shopItemName">
							<a href="#">클레이 마스크 70ml</a>
						</p>
						<p class="shopItemPrice">
							<a href="#">8,000원</a>
						</p>
						<p class="shopItemBuying">
							<a href="#">♥</a>
						</p>
					</div>
				</div>
				<div class="shopItem">
					<div>
						<a href="#"><img class="shopItem-img"
							src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"
							alt=""> </a>
					</div>
					<div class="shopItemExplain">
						<p class="shopItemName">
							<a href="#">클레이 마스크 70ml</a>
						</p>
						<p class="shopItemPrice">
							<a href="#">8,000원</a>
						</p>
						<p class="shopItemBuying">
							<a href="#">♥</a>
						</p>
					</div>
				</div>
				
			</div>
		</div>
		<!-- product list end -->
		<!-- 페이징 처리 -->
		
		<!-- 페이징 처리 끝 -->
	</div>
</div>
<!-- 쇼핑 리스트 내용 끝 -->
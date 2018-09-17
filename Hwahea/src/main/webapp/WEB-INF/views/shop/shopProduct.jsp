<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/shop.css">
<script src="${pageContext.request.contextPath}/assets/js/shop/shopProduct.js"></script>
<!-- 쇼핑 리스트 내용 시작 -->
<div class="container content">
	<div class="productListArea">
		<div class="shop-productView-category">
			<a href="${pageContext.request.contextPath}/shop/shopMain.do">쇼핑
				홈 </a> > <a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=${cateNum}">
				${cateName} </a>
		</div>
		<div class="shopProduct-title">
			<h1>${cateName}</h1>
		</div>
			<ul class="col-md-12 shopList-category" id="shoppingMore">
				<li class="category-first select-cate cate-on" id="id-${cateNum}And0">
				<a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=${cateNum}">전체</a></li>
				<c:forEach var="cate" items="${cate}">
					<li id="id-${cate.category_num}And${cate.category_detail_num}" class="select-cate">
						<a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=${cate.category_num}&category_detail_num=${cate.category_detail_num}">
						${cate.category_detail_name}</a>
					</li>
				</c:forEach>
			</ul>
			<div class="col-md-12 shopList-search">
				<div class="shopList-search-title">
					<strong>BRAND</strong>
					<span>브랜드 별 검색 :)</span>
				</div>
				<ul class="shopList-search-content">
					<c:forEach var="brand" items="${brand}">
					<li class="ask-lock-area">
						<input type="checkbox" id="brand-${brand.brand_num}" class="brand-search" name="shop-search-brand" value="${brand.brand_num}"/>
						<label for="brand-${brand.brand_num}">${brand.brand_name}</label>
					</li>
					</c:forEach>
				</ul>
				<input type="button" class="shop-brand-more" value="더보기">
				<div class="shopList-reset"><button id="onBrandReset">선택 초기화</button></div>
		</div>
		<p class="col-md-12 shopList-cateCnt"> <span>♥</span> 화해쇼핑에 <span id="productCnt"> ${productCnt} </span>개의 상품이 등록되어 있습니다. <span>♥</span> </p>
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
			<c:if test="${productCnt == 0}">
				<p class="none-product">등록된 상품이 없습니다.</p>
			</c:if>
			<c:if test="${productCnt > 0}">
			<c:forEach var="productList" items="${productList}">
			<li class="pl-flag">
				<div class="pl-info">
					<a href="${pageContext.request.contextPath}/shop/shopProductView.do?p_num=${productList.p_num}&brand_num=${productList.brand_num}" 
						class="pl-thumb productsList">
						<img src="${pageContext.request.contextPath}/assets/img/shop/witch_hazel_astringent.jpg" 
						onerror="common.errorImg(this);">
					</a>
					<div class="pl-name">
						<a href="${pageContext.request.contextPath}/shop/shopProductView.do?p_num=${productList.p_num}&brand_num=${productList.brand_num}" 
						class="goodsList">
							<span class="pl-brand">${productList.brand_name}</span>
							<p class="pl-product-name">${productList.p_name} ${productList.p_capacity}ml</p>
						</a>
					</div>
					<p class="pl-price">
						<span class="pl-product-tx">
							<span class="pl-product-price">
							<fmt:formatNumber value="${productList.p_price}" type="number"/></span>원 
						</span>
						<span id="pl-product-price" style="display:none;">${productList.p_price}</span>
						<span id="pl-product-discount" style="display:none;">${productList.p_discount}</span>
						<span class="pl-product-sale">
							<span class="pl-product-price" id="shop-discount">
							<c:set var="discount" value="${((100-productList.p_discount)/100)*productList.p_price}"/>
							<fmt:formatNumber value="${discount}" type="number"/></span>원 
						</span>
					</p>
				</div>
			</li>
			</c:forEach>
			</c:if>
		</ul>
		<!-- 페이징 처리 -->
		<div class="col-md-12 ask-content-end">
			${pagingHtml}
		</div>
		<!-- 페이징 처리 끝 -->
	</div>
</div>
<!-- 쇼핑 리스트 내용 끝 -->
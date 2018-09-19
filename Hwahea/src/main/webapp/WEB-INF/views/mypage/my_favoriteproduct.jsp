<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/mypage.css">
<div class="container content">
	<div class="row magazine-page">
		<div class="col-md-12" style="margin-left: 5%;">
			<div class="mypage_form">
				<div class="menu_bar">
					<ul class="list-inline top-v1-contacts">
						<li class="now_menu"><a href="${pageContext.request.contextPath}/mypage/my_favoriteproduct.do?bc=3">제품</a></li>
						<li>|</li>
						<li class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_favoriteuser.do?bc=3">사용자</a></li>
						<li>|</li>
						<li class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_favoriteingredient.do?bc=3">성분</a></li>
					</ul>
				</div>
				<div class="favorite" style="margin-left: -1em;">
				    <c:if test="${count == 0}">
							<div class="align-center">등록된 게시물이 없습니다.</div>
						</c:if>
					<c:if test="${count > 0}">
					<div class="row">
				    <c:forEach var="product" items="${list}">
					<div class="col-md-4">
						<ul class="favorite_list">
							<li id="f_list" onclick="location.href='${pageContext.request.contextPath}/rewiew/productInfo.do'">
							<!-- location.href='${pageContext.request.contextPath}/rewiew/productInfo.do' -->
							<button type="submit" class="close" data-dismiss="alert"  style="margin-top: -1em; margin-right: -1em;" >&times;</button>
								<div id="center">
									<div class="favorite_img" style="margin-left: 5px;">
										<img alt="product_img" src="${pageContext.request.contextPath}shopProductImageView.do?p_num=${productList.p_num}">
									</div>
									<hr>
									<div class="favorite_brand">
										로고나 이름 추후 선택
									</div>
									<div class="favorite_name">
										${product.p_name}
									</div>
									<div class="favorite_price">
										${product.p_price}
									</div>
									<div class="favorite_grade">
										${product.p_made_in}
									</div>
								</div>
							</li>
							
						</ul>
					</div>
					</c:forEach>
					</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</div>
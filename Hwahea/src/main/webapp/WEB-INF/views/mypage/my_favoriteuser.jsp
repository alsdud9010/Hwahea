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
						<li class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_favoriteproduct.do?bc=3">제품</a></li>
						<li>|</li>
						<li class="now_menu"><a href="${pageContext.request.contextPath}/mypage/my_favoriteuser.do?bc=3">사용자</a></li>
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
				    <c:forEach var="user" items="${list}">
					<div class="col-md-4">
						<ul class="favorite_list">
							<li id="f_list" onclick="location.href='${pageContext.request.contextPath}/rewiew/productInfo.do'">
							<!-- location.href='${pageContext.request.contextPath}/rewiew/productInfo.do' -->
							<button type="submit" class="close" data-dismiss="alert"  style="margin-top: -1em; margin-right: -1em;" >&times;</button>
								<div id="center">
									<div class="favorite_img" style="margin-left: 5px;">
										<img alt="product_img" src="${pageContext.request.contextPath}/shopProductImageView.do?p_num=${product.p_num}">
									</div>
									<hr>
									<div class="favorite_brand">
										로고나 이름 추후 선택
									</div>
									<div class="favorite_name">
										${user.m_name}
									</div>
									<div class="favorite_price">
									<c:if test="${user.m_gender == 0} }">
										여자 / 
									</c:if>
									<c:if test="${user.m_gender == 1} }">
										남자 / 
									</c:if>
									<c:if test="${user.m_skintype == 0}">
										건성 / 
									</c:if>
									<c:if test="${user.m_skintype == 1}">
										중성 / 
									</c:if>
									<c:if test="${user.m_skintype == 2}">
										지성 / 
									</c:if>
									<c:if test="${user.m_skintype == 3}">
										복합성 / 
									</c:if>
									<c:if test="${user.m_atopy == 0 && user.m_pimple == 0 && user.m_susceptilbility == 0}">
										해당없음
									</c:if>
									<c:if test="${user.m_atopy == 1}">
										아토피 /
									</c:if>
									<c:if test="${user.m_pimple == 1}">
										여드름 /
									</c:if>
									<c:if test="${user.m_susceptilbility == 1}">
										민감성
									</c:if>
									
									</div>
									<div class="favorite_grade">
										${user.m_age}
									</div>
								</div>
							</li>
							
						</ul>
					</div>
					</c:forEach>
					
					</div>
					</c:if>
				</div>
				<div class="row" align="center">
				    ${pagingHtml}
					<!-- <nav aria-label="Page navigation example" style="margin-left: 34%;">
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
					</nav> -->
				</div>
			</div>
		</div>
	</div>
</div>
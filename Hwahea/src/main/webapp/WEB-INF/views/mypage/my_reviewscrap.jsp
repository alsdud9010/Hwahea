<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/mypage.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/productInfo.css">
<div class="container content">
	<div class="row magazine-page">
		<div class="col-md-12" style="margin-left: 5%;">
			<div class="mypage_form">
				<div class="menu_bar">
					<ul class="list-inline top-v1-contacts">
						<li class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_reviewmyreview.do?bc=2">내 리뷰</a></li>
						<li>|</li>
						<li class="now_menu">화해플러스</li>
						<li>|</li>
						<li class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_reviewreview.do?bc=2">리뷰</a></li>
					</ul>
				</div>
				<div class="card mb-3" style="margin-left: 8%;"> 
				<c:if test="${empty scrap.hp_num}">
					<div class="review">등록된 게시물이 없습니다.</div>
				</c:if>
					<c:forEach items="${list}" var="scrap">
					  <h2 class="card-header"style="font-weight: 400;">화해플러스 제목 : ${scrap.hp_title }</h2>
					  <div class="card-body">
					    <h6 class="card-subtitle text-muted">${scrap.hp_reg_date }</h6>
					  </div>
					  <img style="height: 200px; width: 80%; display: block;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3EImage%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="Card image">
					  <div class="card-body" style="width: 80%; font-size: 15px;font-weight: 900;">
					    <p class="card-text">
					    ${scrap.hp_content }
					    </p>
					  </div>
					<div id="like" style="margin-left: 20%;">    
						<ul>
							<li class="like_like" data-num="1"><img src="${pageContext.request.contextPath}/assets/img/plus/heart.png" class="ll"> 좋아요 (${scrap.hp_like })</li>
							<li class="like_re" data-num=${review.re_num } data-target="#modal01" data-toggle="modal"><img src="${pageContext.request.contextPath}/assets/img/plus/comments.png">댓글</li>
						</ul>
					</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>
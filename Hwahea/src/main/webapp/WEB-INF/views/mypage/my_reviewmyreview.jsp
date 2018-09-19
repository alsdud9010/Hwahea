<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/mypage.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/productInfo.css">
<div class="container content">
	<div class="row magazine-page">
		<div class="col-md-12" style="margin-left: 5%;">
			<div class="mypage_form">
				<div class="menu_bar">
					<ul class="list-inline top-v1-contacts">
						<li class="now_menu">내 리뷰</li> 
						<li>|</li>
						<li class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_reviewscrap.do?bc=2">스크랩</a></li>
						<li>|</li>
						<li class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_reviewreview.do?bc=2">리뷰</a></li>
					</ul>
				</div>
				<h2 class="card-header"style="font-weight: 400;">내 리뷰 보기</h2>
		<c:if test="${empty review.re_num}">
			<div class="review">등록된 게시물이 없습니다.</div>
		</c:if>
		<c:if test="${review.re_num > 0 }">
		<div class="review"  style="margin-left: -4em;">
			<div id="writer"style="text-align: center; width: 90%;">
				<c:if test="${empty review.re_filename1 && empty review.re_filename2 && empty review.re_filename3}">
			</c:if>
			<c:if test="${!empty review.re_filename1}">
				<span id="photos">
					<img src="re_imageView.do?re_id=${review.re_id }&cnt=1" style="max-width: 500px">
				</span>
			</c:if>
			<c:if test="${!empty review.re_filename2}">
				<span id="photos">
					<img src="re_imageView.do?re_id=${review.re_id }&cnt=2" style="max-width: 500px">
				</span>
			</c:if>
			<c:if test="${!empty review.re_filename3}">
				<span id="photos">
					<img src="re_imageView.do?re_id=${review.re_id }&cnt=3" style="max-width: 500px">
				</span>
			</c:if>
			</div>
			<!-- 별점, 작성일 시작 -->
			<div id="re_rate" style="margin-left: 13%;">
				<c:if test="${review.re_rate ==1 }">
					<img src="${pageContext.request.contextPath}/assets/img/star.png">
				</c:if>
				<c:if test="${review.re_rate ==2 }">
					<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png">
				</c:if>
				<c:if test="${review.re_rate ==3 }">
					<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png"> 
					<img src="${pageContext.request.contextPath}/assets/img/star.png">
				</c:if>
				<c:if test="${review.re_rate ==4 }">
					<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png"> 
					<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png"> 
				</c:if>
				<c:if test="${review.re_rate ==5 }">
					<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png">
					<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png"> 
					<img src="${pageContext.request.contextPath}/assets/img/star.png">
				</c:if>
				<span id="reg_date"> ${review.re_regdate }</span>
			</div>
			<!-- 별점, 작성일 끝 -->
			<div id="review">
				<div id="good" style="margin-left: 7%;">
					<table>
						<tr>
							<td id="g_icon"><img src="${pageContext.request.contextPath}/assets/img/like.png" alt="좋았던 점"></td>
							<td id="content">${review.re_good }</td>
						</tr>
					</table>
				</div>
			<hr id="mid_hr">
				<div id="bad" style="margin-left: 7%;">
					<table>
						<tr>
							<td id="b_icon"><img src="${pageContext.request.contextPath}/assets/img/bad.png"></td>
							<td id="content">${review.re_bad }</td>
						</tr>
					</table>
				</div>
			<hr id="mid_hr"> 
			<c:if test="${empty review.re_tip}">
			</c:if>
			<c:if test="${!empty review.re_tip}">
				<div id="tip" style="margin-left: 7%;">
					<table>
						<tr>
							<td id="t_icon"><img src="${pageContext.request.contextPath}/assets/img/tip.png"></td>
							<td id="content">${review.re_tip }</td>
						</tr>
					</table>
				</div>
				<hr id="mid_hr"> 
			</c:if>
			<div id="like" style="margin-left: 30%;">    
				<ul>
					<li class="like_like" data-num="1"><img src="${pageContext.request.contextPath}/assets/img/plus/heart.png" class="ll"> 좋아요 (${review.re_like })</li>
					<li class="like_re" data-num=${review.re_num } data-target="#modal01" data-toggle="modal"><img src="${pageContext.request.contextPath}/assets/img/plus/comments.png">댓글달기</li>
				</ul>
			</div>
		</div>
		<hr>
		</div><!-- /review -->
		</c:if>
				</div>
			</div>
		</div>
	</div>
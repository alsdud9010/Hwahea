<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/mypage.css">
<div class="container content">
	<div class="row magazine-page">
		<div class="col-md-12" style="margin-left: 5%;">
			<div class="mypage_form">
				<div class="menu_bar">
					<ul class="list-inline top-v1-contacts">
						<li class="now_menu"><a href="${pageContext.request.contextPath}/mypage/my_eventdoing.do">내가 참여한 이벤트</a></li>
						<li>|</li>
						<li class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_eventnotyet.do">찜한 이벤트</a></li>
					</ul>
				</div>
					<div class="col-md-12"  style="margin-left: 3%;">
						<div class="event_doing col-md-6">
					         <div class="card flex-md-row mb-4 shadow-sm h-md-250">
					            <div class="card-body d-flex flex-column align-items-start">
					               <strong class="eventtitle d-inline-block mb-2 text-success">재구매 이벤트</strong>
					               <h6 class="mb-0">
					                  <a class="text-dark" href="#">매일 저녁 6시 화육대! 선착순 5000포인트</a>
					               </h6>
					               <div class="mb-1 text-muted small">남은 시간22시간41분</div>
					               <a class="btn btn-outline-success btn-sm" href="#">자세히 보기</a>
					            </div>
					            <img class="card-img-right flex-auto d-none d-lg-block" alt="Thumbnail [200x250]" src="//placeimg.com/250/250/nature" style="width: 100%; height: 250px; margin-bottom: 4%;">
					         </div>
					     </div>
					     <div class="event_doing col-md-6">
					         <div class="card flex-md-row mb-4 shadow-sm h-md-250">
					            <div class="card-body d-flex flex-column align-items-start">
					               <strong class="eventtitle d-inline-block mb-2 text-success">화해 전액기부 마스크팩</strong>
					               <h6 class="mb-0">
					                  <a class="text-dark" href="#">위탁아동을 응원하는 특별한 마스크 팩</a>
					               </h6>
					               <div class="mb-1 text-muted small">남은 시간22시간41분</div>
					               <a class="btn btn-outline-success btn-sm" href="#">자세히 보기</a>
					            </div>
					            <img class="card-img-right flex-auto d-none d-lg-block" alt="Thumbnail [200x250]" src="//placeimg.com/250/250/nature" style="width: 100%; height: 250px; margin-bottom: 4%;">
					         </div>
					     </div>
			     	</div>
			     </div>
					<nav aria-label="Page navigation example" style="margin-left: 35%;">
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
					</nav>
			</div>
		</div>
	</div>
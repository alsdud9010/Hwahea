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
						<li class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_eventdoing.do?bc=5">내가 참여한 이벤트</a></li>
						<li>|</li>
						<li class="now_menu"><a href="${pageContext.request.contextPath}/mypage/my_eventnotyet.do?bc=5">찜한 이벤트</a></li>
					</ul>
				</div>
				
				<div class="col-md-12"  style="margin-left: 3%;">
					<c:forEach items="${list}" var="event">
					<c:if test="${empty event.event_num}">
							<h2>참여한 이벤트가 없습니다.</h2>
						</c:if>
						<div class="event_doing col-md-6">
					         <div class="card flex-md-row mb-4 shadow-sm h-md-250">
					            <div class="card-body d-flex flex-column align-items-start">
					               <strong class="eventtitle d-inline-block mb-2 text-success">${event.event_name}</strong>
					               <div class="col-md-3" style="margin-left: 80%;margin-top: -3em;">
						      			<button type="button" class="close" data-dismiss="alert">&times;</button>
						      		</div>
					               <h6 class="mb-0">
					                  <a class="text-dark" href="#">
					                  <c:choose>
			                  				<c:when test="${event.event_kind == 0}">
			                  				 첫구매지원
			                  				</c:when>
			                  				<c:when test="${event.event_kind == 1}">
			                  				 꼼꼼한 뷰티평가단
			                  				</c:when>
			                  				<c:when test="${event.event_kind == 2}">
			                  				 화장품 설문회
			                  				</c:when>
			                  				<c:when test="${event.event_kind == 3}">
			                  				 화장품 유목민
			                  				</c:when>
			                  			</c:choose>
			                  			</a>
					               </h6>
					               <div class="mb-1 text-muted small">이벤트 시작일 : ${event.event_start}</div>
					               <div class="mb-1 text-muted small">이벤트 종료일 : ${event.event_end}</div>
					               <a class="btn btn-outline-success btn-sm" href="${pageContext.request.contextPath}/event/eventView.do?num=${event.event_num}" class="event_hover"><span>상세 보기</span></a>
					            </div>
					            <img class="card-img-right flex-auto d-none d-lg-block" alt="Thumbnail [200x250]" src="//placeimg.com/250/250/nature" style="width: 100%; height: 250px; margin-bottom: 4%;">
					         	<button>참여하기</button>
					         </div>
					     </div>
					     </c:forEach>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/event.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/event.js"></script>
<!--=== Title Part ===-->
<div class="container-background">
	<div class="container content r_title">
       	<ul>
			<li>
				<p class="r_title1">EVENT</p>
			</li>
			<li><span class="r_title2">이벤트</span>
			<span class="r_title3">차원이 다른 꿀혜택! 화해 이벤트</span></li>
		</ul>
	</div>
</div>
<!--=== Content Part ===-->
<div class="container content">
	<div class="row magazine-page white">
		<div class="col-md-12">
			<!-- 이벤트 시작-->
			<div class="col-md-12">
          		<div class="navbar-header2">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar custom-icon-bar"></span>
						<span class="icon-bar custom-icon-bar"></span>
						<span class="icon-bar custom-icon-bar"></span>
					</button>
				</div>
	            <ul class="nav nav-tabs event_nav">
	                <li class="nav-item active">
	                  <a href="nav-link" class="active nav-link" data-toggle="tab" data-target="#tabone">진행중인 이벤트</a>
	                </li>
	                <li class="nav-item">
	                  <a class="nav-link" href="" data-toggle="tab" data-target="#tabtwo">종료된 이벤트</a>
	                </li>
	              </ul>
	              
	              <div class="tab-content mt-2">
	              <!-- 진행중인 이벤트 시작 -->
	              <!--  0 : 첫구매지원, 1 : 꼼평단, 2 : 화장품설문회, 3 : 화장품유목민 -->
	                <div class="tab-pane active" id="tabone" role="tabpanel">
	                  	<ul class="event_list" id="eList">
	                  	<c:forEach var="event" items="${list}">
	                  		<c:if test="${event.event_status <= 3 && event.event_over >= 0}" >
			                  	<li>
			                  		<div class="event_img">
			                  			<c:if test="${event.event_num==1}">
				                  		<img src="${pageContext.request.contextPath}/assets/img/event/event_thumb1.PNG">
				                  		</c:if>
				                  		<c:if test="${event.event_num==2}">
				                  		<img src="${pageContext.request.contextPath}/assets/img/event/event_thumb3.PNG">
				                  		</c:if>
				                  		<c:if test="${event.event_num==3}">
				                  		<img src="${pageContext.request.contextPath}/assets/img/event/event_thumb.PNG">
				                  		</c:if>
				                  		<c:if test="${event.event_num==4}">
				                  		<img src="${pageContext.request.contextPath}/assets/img/event/event_thumb5.png">
				                  		</c:if>
				                  		<a href="${pageContext.request.contextPath}/event/eventView.do?num=${event.event_num}" class="event_hover"><span>상세 보기</span></a>
			                  		</div>
			                  		<span class="event_wish">
			                  			 <a href="#">
			                  			 <img class="ewish_img" data-num="1" src="${pageContext.request.contextPath}/assets/img/shop/not_wish.png"></a>
			                  		</span>
			                  		<div class="event_info">
			                  			<div class="event_deadline">${event.event_start} ~ ${event.event_end}</div>
			                  			<span class="event_kind">
			                  			[
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
			                  			]</span> 
			                  			<span class="event_left">
			                  				<c:if test="${!empty event.event_end}">
			                  					남은 시간 ${event.event_due}
			                  				</c:if></span>
			                  		</div>
			                  	</li>
		                  	</c:if>
		                 </c:forEach>
	                  	</ul>
	                </div>
	                <!-- 진행중인 이벤트 끝 -->
	                <!-- 종료된 이벤트 시작 -->
	                <div class="tab-pane fade" id="tabtwo" role="tabpanel">
	                	<ul class="event_list">
	                		<c:forEach var="event" items="${list}">
	                		<c:if test="${event.event_over < 0}">
	                   		<li>
		                  		<div class="event_img">
		                  		<img src="${pageContext.request.contextPath}/assets/img/event/event_thumb4.PNG">
		                  		</div>
		                  		<div class="event_info">
		                  			<div class="event_deadline">${event.event_start} ~ ${event.event_end}</div>
		                  			<span class="event_kind">
		                  			[
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
		                  			]</span>
		                  			<span class="event_left">이벤트가 종료되었습니다.</span>
		                  		</div>
		                  	</li>
		                  	</c:if>
		                  	</c:forEach>
		                 </ul>
	                  </div>
	                </div>
	                <!-- 종료된 이벤트 끝 -->
	              </div>
			</div>
			<!-- 이벤트 끝 -->
		</div>
	</div>
	<!--/container-->
<!-- End Content Part -->
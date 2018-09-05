<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/event.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/event.js"></script>
<!--=== Content Part ===-->
<div class="container content">
	<div class="row magazine-page">
		<div class="col-md-12">
			<!-- 이벤트 타이틀 시작-->
			<div class="magazine-news">
				<div class="r_title">
					<div class="r_title1">EVENT</div>
					<dl>
						<dt class="r_title2">화해 이벤트</dt>
						<dt class="r_title3">차원이 다른 꿀혜택! 화해 이벤트</dt>
					</dl>
				</div>
				<div class="margin-bottom-20">
					<hr class="hr-md">
				</div>
			</div>
			<!-- 이벤트 타이틀 끝 -->

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
	                <div class="tab-pane active" id="tabone" role="tabpanel">
	                  	<ul class="event_list">
		                  	<li>
		                  		<div class="event_img">
		                  		<img src="${pageContext.request.contextPath}/assets/img/event/event_thumb.PNG">
		                  		<a href="${pageContext.request.contextPath}/event/eventView.do" class="event_hover"><span>상세 보기</span></a>
		                  		</div>
		                  		<div class="event_info">
		                  			<div class="event_deadline">2018.08.27 ~</div>
		                  			<span class="event_kind">[첫 구매 지원]</span> 
		                  			<span class="event_left">남은 시간 119일 6시간 56분</span>
		                  		</div>
		                  	</li>
		                  	<li>
		                  		<div class="event_img">
		                  		<img src="${pageContext.request.contextPath}/assets/img/event/event_thumb2.PNG">
		                  		<a href="#" class="event_hover"><span>상세 보기</span></a>
		                  		</div>
		                  		<div class="event_info">
		                  			<div class="event_deadline">2018.08.27 ~ 2018.09.03</div>
		                  			<span class="event_kind">[화해 화장품설문회]</span> 
		                  			<span class="event_left">남은 시간 6시간 56분</span>
		                  		</div>
		                  	</li>
		                  	<li>
		                  		<div class="event_img">
		                  		<img src="${pageContext.request.contextPath}/assets/img/event/event_thumb3.PNG">
		                  		<a href="#" class="event_hover"><span>상세 보기</span></a>
		                  		</div>
		                  		<div class="event_info">
		                  			<div class="event_deadline">2018.08.27 ~ 2018.09.03</div>
		                  			<span class="event_kind">[화장품 유목민]</span> 
		                  			<span class="event_left">남은 시간 6시간 56분</span>
		                  		</div>
		                  	</li>
		                  	<li class="active">
		                  		<div class="event_img">
		                  		<img src="${pageContext.request.contextPath}/assets/img/event/event_thumb4.PNG">
		                  		<a href="${pageContext.request.contextPath}/event/eventDetail.do" class="event_hover"><span>상세 보기</span></a>
		                  		</div>
		                  		<div class="event_info" >
		                  			<div class="event_deadline">2018.08.27 ~ 2018.09.03</div>
		                  			<span class="event_kind">[꼼꼼한 뷰티평가단]</span>
		                  			<span class="event_left">남은 시간 6시간 56분</span>
		                  		</div>
		                  	</li>
	                  	</ul>
	                </div>
	                <!-- 진행중인 이벤트 끝 -->
	                <!-- 종료된 이벤트 시작 -->
	                <div class="tab-pane fade" id="tabtwo" role="tabpanel">
	                	<ul class="event_list">
	                   		<li>
		                  		<div class="event_img">
		                  		<img src="${pageContext.request.contextPath}/assets/img/event/event_thumb4.PNG">
		                  		</div>
		                  		<div class="event_info">
		                  			<div class="event_deadline">2018.08.27 ~ 2018.09.03</div>
		                  			<span class="event_kind">[꼼꼼한 뷰티평가단]</span>
		                  			<span class="event_left">이벤트가 종료되었습니다.</span>
		                  		</div>
		                  	</li>
		                 </ul>
	                  </div>
	                </div>
	                <!-- 종료된 이벤트 끝 -->
	              </div>
			</div>
			<!-- 이벤트 끝 -->
			
			
			<%-- <div id="hide_event">
				<ul class="event_list">
                 	<li>
                 		<div class="event_img">
                 		<img src="${pageContext.request.contextPath}/assets/img/event/event_thumb.PNG">
                 		<a href="${pageContext.request.contextPath}/event/eventDetail.do" class="event_hover"><span>상세 보기</span></a>
                 		</div>
                 		<div class="event_info">
                 			<div class="event_deadline">2018.08.27 ~</div>
                 			<span class="event_kind">[첫 구매 지원]</span> 
                 			<span class="event_left">남은 시간 119일 6시간 56분</span>
                 		</div>
                 	</li>
                 	<li>
                 		<div class="event_img">
                 		<img src="${pageContext.request.contextPath}/assets/img/event/event_thumb2.PNG">
                 		<a href="#" class="event_hover"><span>상세 보기</span></a>
                 		</div>
                 		<div class="event_info">
                 			<div class="event_deadline">2018.08.27 ~ 2018.09.03</div>
                 			<span class="event_kind">[화해 화장품설문회]</span> 
                 			<span class="event_left">남은 시간 6시간 56분</span>
                 		</div>
                 	</li>
                 	<li>
                 		<div class="event_img">
                 		<img src="${pageContext.request.contextPath}/assets/img/event/event_thumb3.PNG">
                 		<a href="#" class="event_hover"><span>상세 보기</span></a>
                 		</div>
                 		<div class="event_info">
                 			<div class="event_deadline">2018.08.27 ~ 2018.09.03</div>
                 			<span class="event_kind">[화장품 유목민]</span> 
                 			<span class="event_left">남은 시간 6시간 56분</span>
                 		</div>
                 	</li>
                 	<li>
                 		<div class="event_img">
                 		<img src="${pageContext.request.contextPath}/assets/img/event/event_thumb4.PNG">
                 		<a href="#" class="event_hover"><span>상세 보기</span></a>
                 		</div>
                 		<div class="event_info" >
                 			<div class="event_deadline">2018.08.27 ~ 2018.09.03</div>
                 			<span class="event_kind">[꼼꼼한 뷰티평가단]</span>
                 			<span class="event_left">남은 시간 6시간 56분</span>
                 		</div>
                 	</li>
               	</ul>
			</div> --%>
		</div>
	</div>
	<!--/container-->
<!-- End Content Part -->
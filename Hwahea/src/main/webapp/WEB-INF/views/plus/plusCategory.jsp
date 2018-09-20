<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plus.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/plus.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/plus.reply.js"></script>
<!--=== Title Part ===-->
<div class="container-background">
	<div class="container content r_title">
       	<ul>
			<li>
				<p class="r_title1">PLUS+</p>
			</li>
			<li><span class="r_title2">화해플러스</span>
			<span class="r_title3">화해유저들과 함께 뷰티팁을 공유해주세요 :)</span></li>
		</ul>
	</div>
</div>
<!--=== Content Part ===-->
<div class="container content">
	<div class="row magazine-page white">
		<!-- Begin Content -->
		<div class="col-md-12">
			<!-- 화해플러스 배너2 시작 -->
			<div class="magazine-news">
				<table class="plusBest">
					<tr>
					<td style="width:740px;">
						<img src="${pageContext.request.contextPath}/assets/img/plus/plusTrend3.PNG"></td>
					<td>
						<div class="plusBanner2">
							<div class="lineforPlus"></div>
							<div class="spaceforPlus"></div>
							<button disabled>#신상&amp;트렌드</button>
							<h2>
								<a href="#"><strong>이니스프리 비비드 코튼 잉크<br> 가을 신상
										컬렉션 출시
								</strong></a>
							</h2>
							<span class="subTextforPlus">이번 신상도 깔별로 소장 각</span>
							<div class="margin-bottom-35">
								<hr class="hr-md">
							</div>
						</div>
						</td>
					</tr>
				</table>
			</div>
			<!-- 화해플러스 배너2 끝 -->
			<div class="margin-bottom-10">
				<hr class="hr-md">
			</div>
			
			<!-- 화해플러스 상단 메뉴바 시작-->
			<div class="magazine-news">
				<div class="col-md-12">
					<ul class="r_menu_2 col-md-12 margin-bottom-20">
						<li onclick="location.href='${pageContext.request.contextPath}/plus/plusMain.do'">화해플러스</li>
						<li <c:if test="${hp_kind}==0">
							class="r_thistap"
							</c:if>
							onclick="location.href='${pageContext.request.contextPath}/plus/plusCategory.do?hp_kind=0'">
							신상&amp;트렌드</li>
						<li <c:if test="${hp_kind}==1">
							class="r_thistap"
							</c:if>
							onclick="location.href='${pageContext.request.contextPath}/plus/plusCategory.do?hp_kind=1'">
							인기템리뷰</li>
						<li <c:if test="${hp_kind}==2">
							class="r_thistap"
							</c:if>	onclick="location.href='${pageContext.request.contextPath}/plus/plusCategory.do?hp_kind=2'">
							화장품 팩트체크</li>
						<li<c:if test="${hp_kind}==3">
							class="r_thistap"
							</c:if>
							onclick="location.href='${pageContext.request.contextPath}/plus/plusCategory.do?hp_kind=3'">
							뷰티팁</li>
						<li <c:if test="${hp_kind}==4">
							class="r_thistap"
							</c:if>
							onclick="location.href='${pageContext.request.contextPath}/plus/plusCategory.do?hp_kind=4'">
							쇼핑팁</li>
					</ul>
				</div>
			</div>
			<div class="margin-bottom-10">
				<hr class="hr-md">
			</div>
			<!-- 화해플러스 상단 메뉴바 끝 -->
			
			<!-- 화해플러스 본문 리스트 시작-->
			<div class="magazine-news" id="plusC_list">
				<div class="magazine-news">
				<div class="row">
				<div class="plusCategory">
						<h2>
							<strong>
							<c:choose>
								<c:when test="${hp_kind==0}">
									신상&amp;트렌드
								</c:when>
								<c:when test="${hp_kind==1}">
									인기템리뷰
								</c:when>
								<c:when test="${hp_kind==2}">
									화장품 팩트체크
								</c:when>
								<c:when test="${hp_kind==3}">
									뷰티팁
								</c:when>
								<c:otherwise>
									쇼핑팁
								</c:otherwise>
							</c:choose>
							</strong>
						</h2>
					</div>
				<c:forEach var="plus" items="${list}" varStatus="status">
					<c:if test="${count==0}">
					<div class="align-center">등록된 게시물이 없습니다.</div>
					</c:if>
					<c:if test="${count > 0}">
						<div class="col-md-4">
							<div class="plusThumbnail">
								<a href="#" class="click_pmodal" data-num="${plus.hp_num}" data-auth="${plus.m_auth}" data-toggle="modal" data-target="#plus_modal">
								<img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/plus/trendThumb_${plus.hp_num}.png"></a>
							</div>
							<div class="plusTitle">
								<a href="#" class="click_pmodal" data-num="${plus.hp_num}" data-auth="${plus.m_auth}" data-toggle="modal" data-target="#plus_modal">
								${plus.hp_title}</a>
							</div>
							<table class="plusTable">
								<tr>
									<th><img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">${plus.hp_like}</th>
									<th><img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/scrap.png" alt="scrap">${plus.hp_scrap}</th>
									<th><img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">${plus.hpre_cnt}</th>
									<th><img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="hit">${plus.hp_hit}</th>
								</tr>
							</table>
							<div class="plusDetail">
								<hr class="hrinPlus">
								<span>
									<c:choose>
										<c:when test="${plus.hp_kind==0}">
											신상&amp;트렌드
										</c:when>
										<c:when test="${plus.hp_kind==1}">
											인기템리뷰
										</c:when>
										<c:when test="${plus.hp_kind==2}">
											화장품 팩트체크
										</c:when>
										<c:when test="${plus.hp_kind==3}">
											뷰티팁
										</c:when>
										<c:otherwise>
											쇼핑팁
										</c:otherwise>
									</c:choose>
								</span> 
								<span class="plusUser">화해플러스
									${plus.hp_reg_date}</span>
							</div>
						</div>
						<c:if test="${status.index == 2 || status.index == 5 || status.index == 8 }">
						<div class="margin-bottom-20" style="padding-top:2px;"><hr class="hr-md" ></div>
						</c:if>
					</c:if>
					</c:forEach>
				<!-- 첫번재줄 끝 -->
				
			</div>
			<!-- End Content -->
			<!-- Begin Sidebar -->
			<!-- End Sidebar -->
		</div>
	</div>
	<!--/container-->
	</div>
</div>
</div>
<!-- End Content Part -->
<!--====================== 화해플러스 모달 시작 =======================-->
<div class="modal fade" id="plus_modal" tabindex="-1" role="dialog">
   <input type="hidden" name="id" value="${user_id}" id="user_id">
   <div id="pmodal_append">
   
   </div>
</div>
<!-- ==================== 화해플러스 모달 끝 ======================== -->
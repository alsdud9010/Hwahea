<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plus.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/plus.reply.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/plus.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//모달 헤더 고정
		$('#plus_modal').scroll(function(){
			var a = $('#plus_modal').scrollTop();
			console.log(a);
			if(a>32){
				$('#fixed-header').removeClass('fixed-header-noscroll');
				$('#fixed-header').addClass('fixed-header-scroll');
			}else{
				$('#fixed-header').removeClass('fixed-header-scroll');
				$('#fixed-header').addClass('fixed-header-noscroll');
			}
			
		});
	});
</script>
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
          <!-- 화해플러스 슬라이드배너 시작 -->
          <div class="carousel slide carousel-v1 margin-bottom-40" id="myCarousel-1">
            <div class="carousel-inner">
              <div class="item active">
              	<div class="plusBanner">
                	<a href="#" data-toggle="modal" data-target="#plus_modal">
                	<img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/plus/pmodal1.PNG"></a>
                </div>
                <div class="pBanner_con">
	                	<div class="plusMember">
	                	<img class="plusProfile" src="${pageContext.request.contextPath}/assets/img/plus/profile.png"><br>
	                	<span class="grade_welcome"><input type="button" value="Welcome"></span>
	                	</div>
	                	<div class="plusBannerTitle text-right"><h3><a href="#" data-toggle="modal" data-target="#plus_modal"><strong>곰손도 이것만 있으면 트렌디함 UP #주간신상템</strong></a></h3></div>
	                	<div class="plusBannerDate text-right">2018-09-01 <strong>red</strong></div>
                	<hr size="4" noshade style="margin-bottom:10px;margin-top: 15px;">
	                	<div class="plusBannerText">
	                	곰손도 이것만 있으면 트렌디함 UP #주간신상템<br>
	                	#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템
	                	</div>
	                	<div class="pBanner_more">
	                		<a href="#" data-toggle="modal" data-target="#plus_modal">더보기</a>
	                	</div>
                	<hr size="4" noshade style="margin-bottom: 10px;margin-top: 5px;">
                	<div>
	                	<span class="bannerIcon"><img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
			            	  <strong>285</strong></span>
			            <span class="bannerIcon"><img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/scrap.png" alt="scrap">
			            	  <strong>57</strong></span>
			         	<span class="bannerIcon"><img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
			           		  <strong>1850</strong></span>
			            <span class="bannerIcon"><img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="hit">
			            	  <strong>65781</strong></span>
                	</div>
                </div>
              </div>
              <c:forEach var="banner" items="${list}">
              	<c:if test="${banner.ranking == 1}">
	              <div class="item">
	              	<div class="plusBanner">
                	<a href="#" class="click_pmodal" data-num="${banner.hp_num}" data-toggle="modal" data-target="#plus_modal">
                		<img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/plus/plusTrend.PNG"></a>
                	</div>
               	  <div class="pBanner_con" >
                	<div class="plusMember">
                		<img class="plusProfile" src="${pageContext.request.contextPath}/assets/img/plus/profile.png"><br>
                		<c:choose>
	                		<c:when test="${banner.m_auth==0}">
	                			<span class="grade_welcome"><input type="button" value="Welcome"></span>
	                		</c:when>
	                		<c:when test="${banner.m_auth==1}">
	                			<span class="grade_family"><input type="button" value="Family"></span>
	                		</c:when>
	                		<c:when test="${banner.m_auth==2}">
	                			<span class="grade_vip"><input type="button" value="VIP"></span>
	                		</c:when>
	                		<c:otherwise>
	                			<span class="grade_vvip"><input type="button" value="VVIP"></span>
	                		</c:otherwise>
                		</c:choose>
                	</div>
                	<div class="plusBannerTitle text-right">
                		<h3>
                		<a href="#" class="click_pmodal" data-num="${banner.hp_num}" data-toggle="modal" data-target="#plus_modal">
                		<strong>${banner.hp_title}</strong></a></h3></div>
                	<div class="plusBannerDate text-right">${banner.hp_reg_date}<strong>${banner.m_id}</strong></div>
                	<hr size="4" noshade style="margin-bottom:10px;margin-top: 15px;">
	                	<div class="plusBannerText">
	                	${banner.hp_content}
	                	</div>
	                	<div class="pBanner_more">
	                		<a href="#" class="click_pmodal" data-num="${banner.hp_num}" data-toggle="modal" data-target="#plus_modal">더보기</a>
	                	</div>
                	<hr size="4" noshade style="margin-bottom: 10px;margin-top: 5px;">
                	<div>
	                	<span class="bannerIcon"><img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
			            	  <strong>${banner.hp_like}</strong></span>
			            <span class="bannerIcon"><img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/scrap.png" alt="scrap">
			            	  <strong>${banner.hp_scrap}</strong></span>
			         	<span class="bannerIcon"><img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
			           		  <strong>${banner.hpre_cnt}</strong></span>
			            <span class="bannerIcon"><img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="hit">
			            	  <strong>${banner.hp_hit}</strong></span>
                	</div>
                </div>
	              </div>
	            </c:if>
              </c:forEach>
           </div>
              <div class="carousel-arrow">
	              <a data-slide="prev" href="#myCarousel-1" class="left carousel-control">
	                <i class="fa fa-angle-left"></i>
	              </a>
	              <a data-slide="next" href="#myCarousel-1" class="right carousel-control">
	                <i class="fa fa-angle-right"></i>
	              </a>
              </div>
            </div>

          </div>
          <!-- 화해플러스 슬라이드배너 끝 -->
          
          <!-- 화해플러스 상단 메뉴바 시작-->
          <div class="magazine-news">
            <div class="margin-bottom-20"><hr class="hr-md"></div>
            <div class="col-md-12">
          <ul class="r_menu_2 col-md-12 margin-bottom-20">
             <li class="r_thistap" onclick="location.href='${pageContext.request.contextPath}/plus/plusMain.do'">화해플러스</li>
             <li class="plusCategory" id="kind_0" 
	             	 onclick="location.href='${pageContext.request.contextPath}/plus/plusCategory.do?hp_kind=0'">신상&amp;트렌드</li>
	         <li class="plusCategory" id="kind_1" 
	             	 onclick="location.href='${pageContext.request.contextPath}/plus/plusCategory.do?hp_kind=1'">인기템리뷰</li>
	         <li class="plusCategory" id="kind_2" 
	             	 onclick="location.href='${pageContext.request.contextPath}/plus/plusCategory.do?hp_kind=2'">화장품 팩트체크</li>
	         <li class="plusCategory" id="kind_3" 
	             	 onclick="location.href='${pageContext.request.contextPath}/plus/plusCategory.do?hp_kind=3'">뷰티팁</li>
	         <li class="plusCategory" id="kind_4" 
	             	 onclick="location.href='${pageContext.request.contextPath}/plus/plusCategory.do?hp_kind=4'">쇼핑팁</li>
          </ul>
          </div>
          </div>
          <div class="margin-bottom-35">
            <hr class="hr-md"> </div>
          <!-- 화해플러스 상단 메뉴바 끝 -->
          
          <!-- 화해플러스  신상&트렌드 시작-->
          <div class="magazine-news">
            <div class="row">
            <div class="plusCategory"><h3><strong>신상&amp;트렌드</strong></h3></div>
              <c:if test="${count == 0}">
              <!-- UI 수정할 것***************************************** -->
              	<div class="col-md-2">등록된 게시물이 없습니다.</div>
              </c:if>
              <c:if test="${count > 0}">
              <c:forEach var="plus" items="${list}">
              <c:if test="${plus.hp_kind==0}">
	              <div class="col-md-2">
	                <div class="pm_thumb">
	                  <a href="#" class="click_pmodal" data-num="${plus.hp_num}" data-auth="${plus.m_auth}" data-toggle="modal" data-target="#plus_modal">
	                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
	                  <span class="magazine-badge 
	                  		<c:if test="${plus.ranking==1}">label-yellow</c:if>
	                  		<c:if test="${plus.ranking!=1}">label-red</c:if>
	                  		">${plus.ranking}</span>
	                </div>
	                <div class="pmain_tit best"><a href="#">${plus.hp_title}</a></div>
	                <span class="pm_lrs">
	                  <span>
	                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
	                  <strong>${plus.hp_like}</strong></span>
	                  <span>
	                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
	                  <strong>${plus.hpre_cnt}</strong></span>
	                  <span>
	                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="hit">
	                  <strong>${plus.hp_hit}</strong></span>
	                </span>
	              </div>
              </c:if>
              </c:forEach>
              </c:if>
            </div>
          </div>
          <!-- 화해플러스 신상&트렌드 끝 -->
          <div class="margin-bottom-35">
            <hr class="hr-md"> </div>
          <!-- 화해플러스 인기템리뷰 시작-->
          <div class="magazine-news">
            <div class="row">
            <div class="plusCategory"><h3><strong>인기템리뷰</strong></h3></div>
              <c:if test="${count == 0}">
              <!-- UI 수정할 것***************************************** -->
              	<div class="col-md-2">등록된 게시물이 없습니다.</div>
              </c:if>
              <c:if test="${count > 0}">
              <c:forEach var="plus" items="${list}">
               <c:if test="${plus.hp_kind==1}">
	              <div class="col-md-2">
	                <div class="pm_thumb">
	                  <a href="#" class="click_pmodal" data-num="${plus.hp_num}" data-auth="${grade}" data-toggle="modal" data-target="#plus_modal">
	                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
	                  <span class="magazine-badge 
	                  		<c:if test="${plus.ranking==1}">label-yellow</c:if>
	                  		<c:if test="${plus.ranking!=1}">label-red</c:if>
	                  		">${plus.ranking}</span>
	                </div>
	                <div class="pmain_tit best"><a href="#">${plus.hp_title}</a></div>
	                <span class="pm_lrs">
	                  <span>
	                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
	                  <strong>${plus.hp_like}</strong></span>
	                  <span>
	                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
	                  <strong>${plus.hpre_cnt}</strong></span>
	                  <span>
	                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="hit">
	                  <strong>${plus.hp_hit}</strong></span>
	                </span>
	              </div>
              </c:if>
              </c:forEach>
              </c:if>
            </div>
          </div>
          <!-- 화해플러스 인기템리뷰 끝 -->
          <div class="margin-bottom-35">
          <hr class="hr-md"> </div>
          <!-- 화해플러스 화장품 팩트체크 시작-->
          <div class="magazine-news">
            <div class="row">
            <div class="plusCategory"><h3><strong>화장품 팩트체크</strong></h3></div>
              <c:if test="${count == 0}">
              <!-- UI 수정할 것***************************************** -->
              	<div class="col-md-2">등록된 게시물이 없습니다.</div>
              </c:if>
              <c:if test="${count > 0}">
              <c:forEach var="plus" items="${list}">
               <c:if test="${plus.hp_kind==2}">
	              <div class="col-md-2">
	                <div class="pm_thumb">
	                  <a href="#" class="click_pmodal" data-num="${plus.hp_num}" data-auth="${grade}" data-toggle="modal" data-target="#plus_modal">
	                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
	                  <span class="magazine-badge 
	                  		<c:if test="${plus.ranking==1}">label-yellow</c:if>
	                  		<c:if test="${plus.ranking!=1}">label-red</c:if>
	                  		">${plus.ranking}</span>
	                </div>
	                <div class="pmain_tit best"><a href="#">${plus.hp_title}</a></div>
	                <span class="pm_lrs">
	                  <span>
	                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
	                  <strong>${plus.hp_like}</strong></span>
	                  <span>
	                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
	                  <strong>${plus.hpre_cnt}</strong></span>
	                  <span>
	                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="hit">
	                  <strong>${plus.hp_hit}</strong></span>
	                </span>
	              </div>
              </c:if>
              </c:forEach>
              </c:if>
            </div>
          </div>
          <!-- 화해플러스 화장품 팩트체크 끝 -->
          <div class="margin-bottom-35">
          <hr class="hr-md"> </div>
         <!-- 뷰티팁 시작 -->
         <div class="magazine-news">
            <div class="row">
            <div class="plusCategory"><h3><strong>뷰티팁</strong></h3></div>
              <c:if test="${count == 0}">
              <!-- UI 수정할 것***************************************** -->
              	<div class="col-md-2">등록된 게시물이 없습니다.</div>
              </c:if>
              <c:if test="${count > 0}">
              <c:forEach var="plus" items="${list}">
               <c:if test="${plus.hp_kind==3}">
	              <div class="col-md-2">
	                <div class="pm_thumb">
	                  <a href="#" class="click_pmodal" data-num="${plus.hp_num}" data-auth="${grade}" data-toggle="modal" data-target="#plus_modal">
	                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
	                  <span class="magazine-badge 
	                  		<c:if test="${plus.ranking==1}">label-yellow</c:if>
	                  		<c:if test="${plus.ranking!=1}">label-red</c:if>
	                  		">${plus.ranking}</span>
	                </div>
	                <div class="pmain_tit best"><a href="#">${plus.hp_title}</a></div>
	                <span class="pm_lrs">
	                  <span>
	                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
	                  <strong>${plus.hp_like}</strong></span>
	                  <span>
	                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
	                  <strong>${plus.hpre_cnt}</strong></span>
	                  <span>
	                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="hit">
	                  <strong>${plus.hp_hit}</strong></span>
	                </span>
	              </div>
              </c:if>
              </c:forEach>
              </c:if>
            </div>
          </div>
         <!-- 뷰티팁 끝 -->
         <div class="margin-bottom-35">
         <hr class="hr-md"> </div>
         <!-- 쇼핑팁 시작 -->
         <div class="magazine-news">
            <div class="row">
            <div class="plusCategory"><h3><strong>쇼핑팁</strong></h3></div>
              <c:if test="${count == 0}">
              <!-- UI 수정할 것***************************************** -->
              	<div class="col-md-2">등록된 게시물이 없습니다.</div>
              </c:if>
              <c:if test="${count > 0}">
              <c:forEach var="plus" items="${list}">
               <c:if test="${plus.hp_kind==4}">
	              <div class="col-md-2">
	                <div class="pm_thumb">
	                  <a href="#" class="click_pmodal" data-num="${plus.hp_num}" data-auth="${grade}" data-toggle="modal" data-target="#plus_modal">
	                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
	                  <span class="magazine-badge 
	                  		<c:if test="${plus.ranking==1}">label-yellow</c:if>
	                  		<c:if test="${plus.ranking!=1}">label-red</c:if>
	                  		">${plus.ranking}</span>
	                </div>
	                <div class="pmain_tit best"><a href="#">${plus.hp_title}</a></div>
	                <span class="pm_lrs">
	                  <span>
	                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
	                  <strong>${plus.hp_like}</strong></span>
	                  <span>
	                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
	                  <strong>${plus.hpre_cnt}</strong></span>
	                  <span>
	                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="hit">
	                  <strong>${plus.hp_hit}</strong></span>
	                </span>
	              </div>
              </c:if>
              </c:forEach>
              </c:if>
            </div>
          </div>
         <!-- 쇼핑팁 끝 -->
         <div class="margin-bottom-35">
         <hr class="hr-md"> </div>
          <!-- 이벤트 Event -->
          <div class="col-md-12">
            <div class="carousel slide carousel-v1 margin-bottom-40" id="myCarousel-1">
              <div class="carousel-inner">
                <div class="item active">
                  <img alt="" src="${pageContext.request.contextPath}/assets/img/sliders/10.jpg"> </div>
              </div>
            </div>
          </div>
          <!-- 이벤트 Event -->
        </div>
        <!-- End Content -->
      </div>
    <!--/container-->
    <!-- End Content Part -->
<!--====================== 화해플러스 모달 시작 =======================-->
<div class="modal fade" id="plus_modal" tabindex="-1" role="dialog">
   <input type="hidden" name="id" value="${user_id}" id="user_id">
   <div id="pmodal_append">
   
   </div>
</div>
<!-- ================ 화해플러스 모달 끝 ================ -->
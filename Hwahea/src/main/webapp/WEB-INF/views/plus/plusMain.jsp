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
                	<a href="#" class="click_pmodal" data-num="27" data-auth="4" data-toggle="modal" data-target="#plus_modal">
                	<img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/plus/trendThumb_27.png"></a>
                </div>
                <div class="pBanner_con">
	                	<div class="plusMember">
	                	<img class="plusLogo" src="${pageContext.request.contextPath}/assets/img/plus/trend_logo_27.png"><br>
	                	</div>
	                	<div class="plusBannerTitle text-right"><h3><a href="#" data-toggle="modal" data-target="#plus_modal"><strong>내 톤은? 퍼스널 컬러 진단방법</strong></a></h3></div>
	                	<div class="plusBannerDate text-right">2018-09-01 <strong></strong></div>
                	<hr size="4" noshade style="margin-bottom:10px;margin-top: 15px;">
	                	<div class="plusBannerText">
	                	보기에는 예뻐보였는데, 발라보니 다른 립스틱!<br>
						열심히 꾸몄는데 별 효과가 없는 코디!<br>
						이 모든것들이 퍼스널컬러와 관련이 있다는 것, 알고 계신가요?<br>
						사람들이 흔히 하는퍼스널 컬러에 대한 오해를<br> 
						풀어보는 시간을 갖도록 하겠습니다.<br>
						
						쭉 읽으면서 퀴즈를 풀어보세용!<br>
						.<br>
						.<br>
						.<br>
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
                		<img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/plus/trendThumb_${banner.hp_num}.png"></a>
                	</div>
               	  <div class="pBanner_con" >
                	<div class="plusMember">
                		<img class="plusLogo" src="${pageContext.request.contextPath}/assets/img/plus/trend_logo_2.png"><br>
                	</div>
                	<div class="plusBannerTitle text-right">
                		<h3>
                		<a href="#" class="click_pmodal pbanner_tit" data-num="${banner.hp_num}" data-toggle="modal" data-target="#plus_modal">
                		<strong>${banner.hp_title}</strong></a></h3></div>
                	<div class="plusBannerDate text-right">${banner.hp_reg_date}<strong>화해플러스</strong></div>
                	<hr size="4" noshade style="margin-bottom:10px;margin-top: 15px;">
	                	<div class="plusBannerText">
	                	<c:if test="${banner.hp_kind ==0}">
	                		자외선으로부터 피부를 보호하기 위해<br>
							꼭 필요한 자외선 차단제!<br>
							<br>
							기능성이 더욱 업그레이드된<br>
							다양한 신상 제품들을 확인해보세요!<br>
							<br>
							디올 프레스티지<br>
							라이트인 화이트 더 UV 프로텍터<br>
							<br>
	                	</c:if>
	                	<c:if test="${banner.hp_kind ==1}">
	                		화해 피플은 메이크업을 할 때<br>
							어떤 걸 중요하게 생각해?<br>
							컬러의 통일성? 또렷한 윤곽?<br>
							날렵하고 깔끔한 선 정리?<br>
							이목구비의 또렷한 윤곽을 중요하게 생각해서<br>
							매일 쉐딩과 하이라이터에 힘을 쏟는 화해 피플을 위한<br>
							입소문 하이라이터&amp;쉐딩 트리플 제품을 소개할게!<br>
	                	</c:if>
	                	<c:if test="${banner.hp_kind ==2}">
	                		향기하면 가장 먼저 떠오르는<br>
							'꽃'은 향수의시작이라고 볼 수 있어요<br>
							한 종류의 꽃향기를 깊게 느낄 수 있는 싱글 플로랄,<br>
							꽃다발처럼 풍성한 향기를 표현한 플로랄 부케,<br>
							크게 두 가지로 나뉩니다.<br>
							첨가되는 향에 따라, 프루티 플로랄, 화이트 플로랄,<br>
							플로랄 알데하딕,플로랄 마린 등 더 세분화 됩니다.<br>
	                	</c:if>
	                	<c:if test="${banner.hp_kind ==3}">
	                		보기에는 예뻐보였는데, 발라보니 다른 립스틱!<br>
							열심히 꾸몄는데 별 효과가 없는 코디!<br>
							이 모든것들이 퍼스널컬러와 관련이 있다는 것, 알고 계신가요?<br>
							사람들이 흔히 하는퍼스널 컬러에 대한 오해를<br> 
							풀어보는 시간을 갖도록 하겠습니다.<br>
							
							쭉 읽으면서 퀴즈를 풀어보세용!<br>
							.<br>
							.<br>
							.<br>
	                	</c:if>
	                	<c:if test="${banner.hp_kind ==4}">
	                		월요일부터 금요일까지!<br>
	                		화장품 세일 정보를 매일매일 모아 전해드려요~<br>
	                		이니스프리, 잇츠스킨, 어퓨, 롭스, 네이쳐 리퍼블릭,<br>
	                		아리따움, 스킨푸드, 에뛰드하우스, 클럽클리오,<br>
	                		코스알엑스, 더페이스샵, 미샤, 더샘, 홀리카홀리카,<br>
	                		올리브영 등이 추석 BIG SALE 진행중!! 
	                	</c:if>
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
              <c:if test="${plus.ranking<=5 && plus.ranking!=0}">
              <c:if test="${plus.hp_kind==0}">
	              <div class="col-md-2">
	                <div class="pm_thumb">
	                  <a href="#" class="click_pmodal" data-num="${plus.hp_num}" data-auth="${plus.m_auth}" data-toggle="modal" data-target="#plus_modal">
	                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/plus/trendThumb_${plus.hp_num}.png" alt=""> </a>
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
              <c:if test="${plus.ranking<=5 && plus.ranking!=0}">
              <c:if test="${plus.hp_kind==1}" >
	              <div class="col-md-2">
	                <div class="pm_thumb">
	                  <a href="#" class="click_pmodal" data-num="${plus.hp_num}" data-auth="${plus.m_auth}" data-toggle="modal" data-target="#plus_modal">
	                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/plus/trendThumb_${plus.hp_num}.png" alt=""> </a>
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
              <c:if test="${plus.ranking<=5 && plus.ranking!=0}">
              <c:if test="${plus.hp_kind==2}">
	              <div class="col-md-2">
	                <div class="pm_thumb">
	                  <a href="#" class="click_pmodal" data-num="${plus.hp_num}" data-auth="${plus.m_auth}" data-toggle="modal" data-target="#plus_modal">
	                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/plus/trendThumb_${plus.hp_num}.png" alt=""> </a>
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
              <c:if test="${plus.ranking<=5 && plus.ranking!=0}">
              <c:if test="${plus.hp_kind==3}">
	              <div class="col-md-2">
	                <div class="pm_thumb">
	                  <a href="#" class="click_pmodal" data-num="${plus.hp_num}" data-auth="${plus.m_auth}" data-toggle="modal" data-target="#plus_modal">
	                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/plus/trendThumb_${plus.hp_num}.png" alt=""> </a>
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
              <c:if test="${plus.ranking<=5 && plus.ranking!=0}">
              <c:if test="${plus.hp_kind==4}">
	              <div class="col-md-2">
	                <div class="pm_thumb">
	                  <a href="#" class="click_pmodal" data-num="${plus.hp_num}" data-auth="${plus.m_auth}" data-toggle="modal" data-target="#plus_modal">
	                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/plus/trendThumb_${plus.hp_num}.png" alt=""> </a>
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
              </c:if>
              </c:forEach>
              </c:if>
            </div>
          </div>
         <!-- 쇼핑팁 끝 -->
         <div class="margin-bottom-35">
         <hr class="hr-md"> </div>

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
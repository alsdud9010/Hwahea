<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plus.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/plus.reply.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//모달 헤더 고정
		$('#plus_modal').scroll(function(){
			var a = $('#plus_modal').scrollTop();
			console.log(a);
			
			if(a>32){
				$('.ex-header').css({
					top:(a-36)+'px'
				});4
			}else{
				$('.ex-header').css({
					top:'10px'
				});
			}
		});
	});
</script>
<!--=== Content Part ===-->
    <div class="container content">
      <div class="row magazine-page">
        <!-- Begin Content -->
        <div class="col-md-12">
        <div class="r_title">
               <div class="r_title1">PLUS+</div>
               <dl>
                  <dt class="r_title2">화해플러스</dt>
                  <dt class="r_title3">화해유저들과 함께 팁을 공유해주세요!</dt>
               </dl>
        </div>
        <div class="margin-bottom-20"><hr class="hr-md"> </div>
          <!-- 화해플러스 슬라이드배너 시작 -->
          <div class="carousel slide carousel-v1 margin-bottom-40" id="myCarousel-1">
            <div class="carousel-inner">
              <div class="item active">
              	<div class="plusBanner">
                	<a href="#" data-toggle="modal" data-target="#plus_modal"><img src="${pageContext.request.contextPath}/assets/img/plus/plusTrend.PNG"></a>
                </div>
                <div class="pBanner_con" >
	                	<div class="plusMember">
	                	<img class="plusProfile" src="${pageContext.request.contextPath}/assets/img/plus/profile.png"><br>
	                	<span class="plusGrade"><input type="button" value="VIP"></span>
	                	</div>
	                	<div class="plusBannerTitle text-right"><h3><a href="#" data-toggle="modal" data-target="#plus_modal"><strong>축축 쳐진 머리도 살려내는 기적의 헤어템!</strong></a></h3></div>
	                	<div class="plusBannerDate text-right">2018-08-27 <strong>dragon</strong></div>
                	<hr size="4" noshade style="margin-bottom:10px;margin-top: 15px;">
	                	<div class="plusBannerText">
	                	축축 쳐진 머리도 다시 살려내는 기적의 헤어템! #주간신상템<br>
	                	#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템#주간신상템
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
              <div class="item">
              	<div class="plusBanner">
                	<a href="#" data-toggle="modal" data-target="#plus_modal"><img src="${pageContext.request.contextPath}/assets/img/plus/plusBest.PNG"></a>
                </div>
                <div class="pBanner_con">
	                	<div class="plusMember">
	                		<img class="plusProfile" src="${pageContext.request.contextPath}/assets/img/plus/profile.png"><br>
	                	<span class="prere_grade"><input type="button" value="Family"></span>
	                	</div>
	                	<div class="plusBannerTitle text-right"><h3><a href="#" data-toggle="modal" data-target="#plus_modal"><strong>트위드에 코랄 컬러를★ 지금 가장 핫한 네일 보기!</strong></a></h3></div>
	                	<div class="plusBannerDate text-right">2018-08-31 <strong>blue</strong></div>
                	<hr size="4" noshade style="margin-bottom:10px;margin-top: 15px;">
	                	<div class="plusBannerText">
	                	트위드에 코랄 컬러를★ 지금 가장 핫한 네일 보기! #인기템리뷰<br>
	                	핫한 것만 골라 담은 젤라또픽 #인기템리뷰#인기템리뷰#인기템리뷰#인기템리뷰#인기템리뷰#인기템리뷰#인기템리뷰#인기템리뷰
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
              <div class="item">
                <div class="plusBanner">
                	<a href="#" data-toggle="modal" data-target="#plus_modal"><img src="${pageContext.request.contextPath}/assets/img/plus/pmodal1.PNG"></a>
                </div>
                <div class="pBanner_con">
	                	<div class="plusMember">
	                	<img class="plusProfile" src="${pageContext.request.contextPath}/assets/img/plus/profile.png"><br>
	                	<span class="prere_grade2"><input type="button" value="Welcome"></span>
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
             <li class="r_thistap">화해플러스</li>
             <li onclick="location.href='${pageContext.request.contextPath}/plus/plusTrend.do'">신상&amp;트렌드</li>
             <li>인기템리뷰</li>
             <li>화장품 팩트체크</li>
             <li>뷰티팁</li>
             <li>쇼핑팁</li>
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
              <div class="col-md-2">
                <div class="pm_thumb">
                  <a href="#" data-toggle="modal" data-target="#plus_modal">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/plus/plusTrend.PNG" alt=""></a>
                  <span class="magazine-badge label-yellow">1</span>
                </div>
                <div class="pmain_tit best"><a href="#">곰손도 이것만 있으면 트렌디함 UP #주간신상템</a></div>
                <span class="pm_lrs">
               	  <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong></span>
                  <span>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong></span>
                  <span>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong></span>
                </span>
              </div>
              <div class="col-md-2">
              	<div class="pm_thumb">
                  <a href="#" data-toggle="modal" data-target="#plus_modal">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/plus/plusThumbnail.PNG" alt=""></a>
                  <span class="magazine-badge label-red">2</span>
                </div>
                <div class="pmain_tit"><a href="#">축축 쳐진 머리도 살려내는 기적의 헤어템 #주간신상템</a></div>
                <span class="pm_lrs">
               	  <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong></span>
                  <span>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong></span>
                  <span>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong></span>
                </span>
              </div>
              <div class="col-md-2">
                <div class="magazine-news-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/plus/plusBest.PNG" alt=""> </a>
                  <span class="magazine-badge label-red">3</span>
                </div>
                <div class="pmain_tit"><a href="#">트위드에 코랄 컬러를★ 지금 가장 핫한 네일 보기! #인기템리뷰</a></div>
                <span class="pm_lrs">
               	  <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong></span>
                  <span>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong></span>
                  <span>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong></span>
                </span>
              </div>
              <div class="col-md-2">
                <div class="magazine-news-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
                  <span class="magazine-badge label-red">4</span>
                </div>
                <div class="pmain_tit"><a href="#">곰손도 이것만 있으면 트렌디함 UP #주간신상템</a></div>
                <span class="pm_lrs">
               	  <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong></span>
                  <span>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong></span>
                  <span>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong></span>
                </span>
              </div>
              <div class="col-md-2">
                <div class="magazine-news-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
                  <span class="magazine-badge label-red">5</span>
                </div>
                <div class="pmain_tit"><a href="#">곰손도 이것만 있으면 트렌디함 UP #주간신상템</a></div>
                <span class="pm_lrs">
               	  <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong></span>
                  <span>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong></span>
                  <span>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong></span>
                </span>
              </div>
            </div>
          </div>
          <!-- 화해플러스 신상&트렌드 끝 -->
          <div class="margin-bottom-35">
            <hr class="hr-md"> </div>
          <!-- 화해플러스 인기템리뷰 시작-->
          <div class="magazine-news">
            <div class="row">
            <div class="plusCategory"><h3><strong>인기템리뷰</strong></h3></div>
              <div class="col-md-2">
                <div class="magazine-news-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
                  <span class="magazine-badge label-yellow">1</span>
                </div>
                <div class="pmain_tit best"><a href="#">곰손도 이것만 있으면 트렌디함 UP #주간신상템</a></div>
                <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong>
                </span>
              </div>
              <div class="col-md-2">
                <div class="magazine-news-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
                  <span class="magazine-badge label-red">2</span>
                </div>
                <div class="pmain_tit"><a href="#">곰손도 이것만 있으면 트렌디함 UP #주간신상템</a></div>
                <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong>
                </span>
              </div>
              <div class="col-md-2">
                <div class="magazine-news-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
                  <span class="magazine-badge label-red">3</span>
                </div>
                <div class="pmain_tit"><a href="#">곰손도 이것만 있으면 트렌디함 UP #주간신상템</a></div>
                <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong>
                </span>
              </div>
              <div class="col-md-2">
                <div class="magazine-news-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
                  <span class="magazine-badge label-red">4</span>
                </div>
                <div class="pmain_tit"><a href="#">곰손도 이것만 있으면 트렌디함 UP #주간신상템</a></div>
                <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong>
                </span>
              </div>
              <div class="col-md-2">
                <div class="magazine-news-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
                  <span class="magazine-badge label-red">5</span>
                </div>
                <div class="pmain_tit"><a href="#">곰손도 이것만 있으면 트렌디함 UP #주간신상템</a></div>
                <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong>
                </span>
              </div>
            </div>
          </div>
          <!-- 화해플러스 인기템리뷰 끝 -->
          <div class="margin-bottom-35">
          <hr class="hr-md"> </div>
         <!-- 뷰티팁 시작 -->
         <div class="magazine-news">
            <div class="row">
            <div class="plusCategory"><h3><strong>뷰티팁</strong></h3></div>
              <div class="col-md-2">
                <div class="magazine-news-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
                  <span class="magazine-badge label-yellow">1</span>
                </div>
                <div class="pmain_tit best"><a href="#">곰손도 이것만 있으면 트렌디함 UP #주간신상템</a></div>
                <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong>
                </span>
              </div>
              <div class="col-md-2">
                <div class="magazine-news-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
                  <span class="magazine-badge label-red">2</span>
                </div>
                <div class="pmain_tit"><a href="#">곰손도 이것만 있으면 트렌디함 UP #주간신상템</a></div>
                <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong>
                </span>
              </div>
              <div class="col-md-2">
                <div class="magazine-news-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
                  <span class="magazine-badge label-red">3</span>
                </div>
                <div class="pmain_tit"><a href="#">곰손도 이것만 있으면 트렌디함 UP #주간신상템</a></div>
                <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong>
                </span>
              </div>
              <div class="col-md-2">
                <div class="magazine-news-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
                  <span class="magazine-badge label-red">4</span>
                </div>
                <div class="pmain_tit"><a href="#">곰손도 이것만 있으면 트렌디함 UP #주간신상템</a></div>
                <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong>
                </span>
              </div>
              <div class="col-md-2">
                <div class="magazine-news-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
                  <span class="magazine-badge label-red">5</span>
                </div>
                <div class="pmain_tit"><a href="#">곰손도 이것만 있으면 트렌디함 UP #주간신상템</a></div>
                <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong>
                </span>
              </div>
            </div>
          </div>
         <!-- 뷰티팁 끝 -->
         <div class="margin-bottom-35">
         <hr class="hr-md"> </div>
         <!-- 쇼핑팁 시작 -->
         <div class="magazine-news">
            <div class="row">
            <div class="plusCategory"><h3><strong>쇼핑팁</strong></h3></div>
              <div class="col-md-2">
                <div class="magazine-news-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
                  <span class="magazine-badge label-yellow">1</span>
                </div>
                <div class="pmain_tit best"><a href="#">곰손도 이것만 있으면 트렌디함 UP #주간신상템</a></div>
                <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong>
                </span>
              </div>
              <div class="col-md-2">
                <div class="magazine-news-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
                  <span class="magazine-badge label-red">2</span>
                </div>
                <div class="pmain_tit"><a href="#">곰손도 이것만 있으면 트렌디함 UP #주간신상템</a></div>
                <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong>
                </span>
              </div>
              <div class="col-md-2">
                <div class="magazine-news-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
                  <span class="magazine-badge label-red">3</span>
                </div>
                <div class="pmain_tit"><a href="#">곰손도 이것만 있으면 트렌디함 UP #주간신상템</a></div>
                <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong>
                </span>
              </div>
              <div class="col-md-2">
                <div class="magazine-news-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
                  <span class="magazine-badge label-red">4</span>
                </div>
                <div class="pmain_tit"><a href="#">곰손도 이것만 있으면 트렌디함 UP #주간신상템</a></div>
                <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong>
                </span>
              </div>
              <div class="col-md-2">
                <div class="magazine-news-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/main/img1.jpg" alt=""> </a>
                  <span class="magazine-badge label-red">5</span>
                </div>
                <div class="pmain_tit"><a href="#">곰손도 이것만 있으면 트렌디함 UP #주간신상템</a></div>
                <span>
                  <img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like">
                  <strong>207</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">
                  <strong>130</strong>
                  <img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">
                  <strong>6789</strong>
                </span>
              </div>
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
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
		<!-- 모달 헤더 -->
		<div class="modal-header ex-header" >
			<img class="pmodal_close" src="${pageContext.request.contextPath}/assets/img/plus/modalLeft.png" data-dismiss="modal"> 
			<span class="modalCategory"> <a href="${pageContext.request.contextPath}/plus/plusTrend.do">신상&amp;트렌드</a> </span>
			<button class="close" data-dismiss="modal">&times;</button>
		</div>
		
		<!-- 모달 바디 -->
		<div class="modal-body pmodal_c ex-body" style="text-align: center;">
			<img class="plusThumbnail3" src="${pageContext.request.contextPath}/assets/img/plus/plusThumbnail.PNG" alt="">
			<div class="pmodal_title">홀리카홀리카 2018 F/W 섀도우 전색상 발색</div>
			<div class="pmodal_profile">
				<img src="${pageContext.request.contextPath}/assets/img/plus/profile.png"> dragon
			</div>
			<div class="pmodal_icon">
				<span><img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/heart.png" alt="like"> 135</span> 
				<span><img class="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/scrap.png" alt="scrap">56</span> 
				<span><img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/comments.png" alt="reply">77</span>
				<span><img class="plusComments" src="${pageContext.request.contextPath}/assets/img/plus/hits.png" alt="reply">4631</span> 
				<span class="pmodal_regDate">2018-08-25</span>
			</div>
			<div class="margin-bottom-35">
				<hr class="hr-md">
			</div>
			<div>
				<img class="plusModalimg" src="${pageContext.request.contextPath}/assets/img/plus/pmodal1.PNG"><br>
				<br> 안녕하세요!<br> 지난 주 금요일 출시되었던 홀리카홀리카의 가을신상 스타러스터 컬렉션 발색
				데려왔어요<br> 우주의 반짝임을 담아낸듯한 스파클섀도우와 웜,쿨 가리지않고 예쁘게 사용할 수 있는 가을
				무드를 담아낸 섀도우 팔레트까지! <br> <br> 홀리카홀리카 스파클링 스모키 섀도우<br>
				가격 : 9,500원<br> - 01 스파클링비너스<br> - 02 스파클링머큐리<br> -
				03 스파클링새틴<br> - 04 스파클링마스<br> - 05 스파클링주피터<br> 
				<img class="plusModalimg" src="${pageContext.request.contextPath}/assets/img/plus/pmodal2.PNG"><br><br> 
				<img class="plusModalimg" src="${pageContext.request.contextPath}/assets/img/plus/pmodal3.PNG"><br><br> 
				우선 제가 보여드릴 컬러는 다섯가지 중<br> 스파클링 주피터를 제외한 네가지 컬러입니다 :D<br><br> 
				매장가서 직접 발색해보니 하나같이 다 영롱...<br> 
				발림성도 부드럽고 굉장히 밀착력이 좋았어요.<br> <br>
				스파클링비너스/스파클링머큐리/스파클링새틴/스파클링마스/스파클링주피터<br> 
				순서로 보시면 될 것 같아요. <br><br> 
				<img class="plusModalimg" src="${pageContext.request.contextPath}/assets/img/plus/pmodal4.PNG"><br><br> 
				스파클링 스모키섀도우 컬러들을 전체적으로 발라보면서 느낀 게<br> 
				컬러감이 베이스컬러들이 있는 편이라<br> 
				부드럽게 음영감을 줘서<br> 
				분위기있는 눈매표현이 가능했어요.<br><br> 
				그리고 촉촉하게 발리는 수분이 있는<br> 
				습식텍스쳐라서 밀착력도 좋다고 느꼈답니다.<br><br> 
				01 스파클링비너스<br> <br> 
				<img class="plusModalimg"src="${pageContext.request.contextPath}/assets/img/plus/pmodal5.PNG"><br><br> 
				<img class="plusModalimg" src="${pageContext.request.contextPath}/assets/img/plus/pmodal6.PNG"><br><br> 
				차분한 그레이베이지 컬러감에 실버펄감이 있어서 <br> 
				투명해보이는 느낌의 컬러에요.<br><br> 
				홀리카홀리카 18 F/W 피스매칭 12구 섀도우 팔레트<br> 
				가격 : 35,000원<br><br> 
				<img class="plusModalimg" src="${pageContext.request.contextPath}/assets/img/plus/pmodal7.PNG"><br>
				<br> 총 12가지의 컬러로 구성이 되어있는데요<br> 진짜 버릴컬러 1도 없어...<br>
				웜,쿨 가리지 않고 두루두루 쓸 수 있는 컬러들이라서<br> 이번 가을시즌 왠지 손이 자주 갈 거 같네요.<br>
				특히 우측의 글리터들도 역시나 예쁜!<br> <br> 
				<img class="plusModalimg" src="${pageContext.request.contextPath}/assets/img/plus/pmodal8.PNG"><br> <br> 이렇게
				아이메이크업을 조금 붉게하는 날엔<br> 저 같은 경우엔 부드러우면서도 생기있는 MLBB컬러로 <br>
				립메이크업을 연출해준답니다 :D<br> <br> 평소 붉은 느낌의 아이메이크업 좋아하시거나<br>
				톤에 상관없이 사용하기 좋은<br> 팔레트 찾고계셨다면 이번 홀리카홀리카의 <br> 피스매칭
				섀도우팔레트가 딱 좋을 거 같더라고요??? <br> <br> 여기까지 홀리카홀리카의 따끈한 신상 !<br>
				스타러스터 피스매칭 12구 섀도우팔레트 &amp; <br> 스파클리 스모키섀도우 발색후기였습니다.. ♥
			</div>
			<div class="pmodal_ud">
				<input type="button" value="수정"> <input type="button" value="삭제">
			</div>
			<div class="margin-bottom-20">
				<hr class="hr-md">
			</div>
			<div class="pmodal_lrs">
				<ul>
					<li class="pmodal_like"><img src="${pageContext.request.contextPath}/assets/img/plus/heart2.png" id="pmodal_l"> 좋아요</li>
					<li class="pmodal_scrap"><img src="${pageContext.request.contextPath}/assets/img/plus/scrap2.png" id="pmodal_s"> 스크랩</li>
					<li class="pmodal_re"><img src="${pageContext.request.contextPath}/assets/img/plus/comments.png"> 댓글달기</li>
				</ul>
			</div>
			<!-- 화해플러스 모달 댓글 시작-->
			<div class="pmodal_reply">
				<div class="pmodal_wpro">
					<img src="${pageContext.request.contextPath}/assets/img/plus/profile.png"><br>dragon
				</div>
				<div class="pmodal_rform">
					<form>
						<textarea class="pmodal_rtext" id="pre_content" cols="71" rows="4">내용을 입력해 주세요</textarea>
						<input type="submit" value="댓글달기">
					</form>
				</div>
					<div class="pmodal_rcount"><span class="letter-count">300 / 300</span></div>
				<div style="margin-top:-23px;margin-bottom:5px;"><hr class="hr-lg"></div>
				<div class="pmodal_reback">
					<div class="pmodal_rere">
						<div class="pmodal_rpro">
							<img src="${pageContext.request.contextPath}/assets/img/plus/profile.png"> 
							<span class="pmodal_wrere">blue</span>
							<span class="plusGrade"><input type="button" value="VIP"></span>
							<span class="pmodal_drere">2018-08-28</span>
						</div>
						<div class="pmodal_trere">전 무쌍같은 속쌍이라 하면 다 들어가서 살에 묻혀요ㅠ</div>
						<div class="pmodal_brere">
							<a class="pmodal_same" id="rere_write">댓글달기</a>
							<span>
							<input type="button" value="수정">
							<input type="button" value="삭제"></span>
							<div id="pmodal_reform"></div>
							<div class="margin-bottom-20"><hr class="hr-md"> </div>
						</div>
					</div>
				</div>
				<div class="pmodal_reback">
					<div class="pmodal_rere">
						<div class="pmodal_rpro">
							<img src="${pageContext.request.contextPath}/assets/img/plus/profile.png"> 
							<span class="pmodal_wrere">blue</span>
							<span class="plusGrade"><input type="button" value="VIP"></span>
							<span class="pmodal_drere">1시간 전</span>
						</div>
						<div class="pmodal_trere">ㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜ</div>
						<div class="pmodal_brere">
							<a class="pmodal_same" href="#">댓글달기</a>
							<span>
							<input type="button" value="수정">
							<input type="button" value="삭제"></span>
							<div class="margin-bottom-20"><hr class="hr-md"> </div>
						</div>
					</div>
				</div>
				<!-- 대댓글 -->
				<div class="prere_back">
					<div class="pmodal_rere">
						<div class="pmodal_rpro">
							<span class="prere_depth"><img src="${pageContext.request.contextPath}/assets/img/shop/answer-point.png"></span>
							<img src="${pageContext.request.contextPath}/assets/img/plus/profile.png"> 
							<span class="pmodal_wrere">white</span>
							<span class="prere_grade"><input type="button" value="Family"></span>
							<span class="prere_time">1시간 전</span>
						</div>
						<div class="prere_text">ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ</div>
						<div class="pmodal_brere">
							<a class="pmodal_same" href="#">댓글달기</a>
							<span>
							<input type="button" value="수정">
							<input type="button" value="삭제"></span>
							<div class="margin-bottom-20"><hr class="hr-md"> </div>
						</div>
					</div>
				</div>
				<div class="prere_back">
					<div class="pmodal_rere">
						<div class="pmodal_rpro">
							<span class="prere_depth"><img src="${pageContext.request.contextPath}/assets/img/shop/answer-point.png"></span>
							<img src="${pageContext.request.contextPath}/assets/img/plus/profile.png"> 
							<span class="pmodal_wrere">red</span>
							<span class="prere_grade2"><input type="button" value="Welcome"></span>
							<span class="prere_time">1시간 전</span>
						</div>
						<div class="prere_text"><span class="rere_writer">white</span>ㅠ.ㅠ</div>
						<div class="pmodal_brere">
							<a class="pmodal_diff" href="#">댓글달기</a>
							<div class="margin-bottom-20"><hr class="hr-md"> </div>
						</div>
					</div>
				</div>
			</div>
			<!-- 화해플러스 모달 댓글 끝-->
		</div>
		<!-- 모달 푸터 -->
		<div class="modal-footer">
			<input type="button" value="목록" onclick="location.href='${pageContext.request.contextPath}/plus/plusTrend.do'">
			<input type="button" value="닫기" data-dismss="modal">				
		</div>
		</div>
	</div>
</div>
<!-- ================ 화해플러스 모달 끝 ================ -->
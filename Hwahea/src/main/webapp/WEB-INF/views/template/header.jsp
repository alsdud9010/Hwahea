<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/loginmodal.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/headers/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/grade.css">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script>
$(document).ready(function(){
    $("#myBtn").click(function(event){
        $("#loginform").modal();
    });
    $('#login_btn').click(function(){
    	var id = document.getElementById("usrname");
		var passwd = document.getElementById("psw");
		
		if(id.value == ''){
			$('#id').css('color','red')
            .text('아이디를 입력하세요.');
			return;
		}
		if(passwd.value == ''){
			$('#pw').css('color','red')
            .text('비밀번호를 입력하세요.');
			return;
		}
		$('#login_form').submit();
    });
});
</script>
<!--=== Header v4 ===-->
<div class="header-v4">
	<!-- Topbar -->
	<div class="topbar-v1">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<ul class="list-inline top-v1-contacts">
						<li><i class="fa fa-phone"></i> 고객센터 : 1577 - 1577</li>
					</ul>
				</div>
				<div class="col-md-6">
					<ul class="list-inline top-v1-data">
						<c:if test="${empty user_id}">
							<li><form:errors/><a href="#" id="myBtn"> <i class="fa fa-user"> 로그인</i>
							</a></li>
						</c:if>
						<c:if test="${!empty user_id && user_auth!=5}">
							<li><i style="font-style:normal;">
							<c:choose>
							  <c:when test="${user_auth==1}"><span class="grade_welcome"><input type="button" value="welcome"></span></c:when>
							  <c:when test="${user_auth==2}"><span class="grade_family"><input type="button" value="family"></span></c:when>
							  <c:when test="${user_auth==3}"><span class="grade_vip"><input type="button" value="vip"></span></c:when>
							  <c:when test="${user_auth==4}"><span class="grade_vvip"><input type="button" value="vvip"></span></c:when>						  
							</c:choose>   
							 ${user_id} 님</i>
							<li><a href="${pageContext.request.contextPath}/main/logout.do"> <i class="fa fa-user"> 로그아웃</i>
							</a></li>
						</c:if>
						<c:if test="${!empty user_id && user_auth==5}">
							<li><i class="fa fa-wrench">&nbsp;관리자(${user_id})로 접속중…</i></li>
							<li><a href="${pageContext.request.contextPath}/main/logout.do"> <i class="fa fa-user"> 로그아웃</i>
							</a></li>
						</c:if>
						<c:if test="${user_auth!=5}">
						<li><a href="${pageContext.request.contextPath}/signin/service_agree.do"> <i class="fa fa-heart"> 회원가입</i>
						</a></li>
						</c:if>
						<c:if test="${empty user_id}"><li><form:errors/><a href="#" id="myBtn"> <i class="fa fa-inbox"> 마이페이지</i>
						</a></li></c:if>
						<c:if test="${!empty user_id && user_auth!=5}">
						<li><a href="${pageContext.request.contextPath}/mypage/my_info.do?bc=0"> <i class="fa fa-inbox"> 마이페이지</i>
						</a></li>
						</c:if>
						<c:if test="${!empty user_id && user_auth==5}">
						<li><a href="${pageContext.request.contextPath}/main/adminMain.do"> <i class="fa fa-inbox"> 관리자페이지</i>
						</a></li>
						</c:if>
						<li><a href="${pageContext.request.contextPath}/notice/noticeList.do"> <i class="fa fa-bullhorn"> 공지사항</i>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End Topbar -->
	<!-- Navbar -->
	<div class="navbar navbar-default mega-menu" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<div class="row">
					<div class="col-md-4 header-box">
						<a class="navbar-brand"
							href="${pageContext.request.contextPath}/main/main.do"> <img
							id="logo-header"
							src="${pageContext.request.contextPath}/assets/img/logo2.png"
							alt="Logo"><!--<span class="logo-text">&quot;화장품을 해석하다&quot;</span>-->
						</a>
					</div>
				</div>
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-responsive-collapse">
					<span class="full-width-menu">Menu Bar</span> <span
						class="icon-toggle"> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
					</span>
				</button>
			</div>
		</div>
		<div class="clearfix"></div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse navbar-responsive-collapse">
			<div class="container">
				<ul class="nav navbar-nav">
					<!-- 랭킹 -->
					<li class="dropdown"><a href="#"
						onclick="location.href='${pageContext.request.contextPath}/ranking/ranking_main.do'"
						class="dropdown-toggle dropdown-title" data-toggle="dropdown">랭킹</a>
						<ul class="dropdown-menu">
							<li><a href="${pageContext.request.contextPath}/ranking/r_category.do">카테고리별</a>
							<li><a href="${pageContext.request.contextPath}/ranking/r_skinType.do">피부타입&amp;고민별</a>
							<li><a href="#"
								onclick="location.href='${pageContext.request.contextPath}/ranking/r_brand.do'"
								class="dropdown-toggle" data-toggle="dropdown"> 브랜드별 </a>
							</li>
							<li><a href="blog_masonry_3col.html">베이비&amp;임산부</a>
							<li><a href="blog_timeline.html">남성</a>
						</ul></li>
					<!-- 랭킹 끝 -->
					<!-- 쇼핑 -->
					<li class="dropdown"><a href="#"
						onclick="location.href='${pageContext.request.contextPath}/shop/shopMain.do'"
						class="dropdown-toggle dropdown-title" data-toggle="dropdown">쇼핑</a>
						<ul class="dropdown-menu">
							<li class="dropdown-submenu"><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=1">스킨케어</a>
								<ul class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=1&category_detail_num=1">스킨/토너</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=1&category_detail_num=2">로션/에멀젼</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=1&category_detail_num=3">에센스/앰플/세럼</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=1&category_detail_num=4">페이스 오일</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=1&category_detail_num=5">크림/젤</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=1&category_detail_num=6">아이케어</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=1&category_detail_num=7">미스트</a></li>
								</ul></li>
							<li class="dropdown-submenu"><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=2">클렌징/필링</a>
								<ul class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=2&category_detail_num=8">클렌징 폼</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=2&category_detail_num=9">클렌징 워터</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=2&category_detail_num=10">클렌징 젤</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=2&category_detail_num=11">클렌징 오일</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=2&category_detail_num=12">클렌징 로션/크림</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=2&category_detail_num=13">클렌징 비누</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=2&category_detail_num=15">립/아이 리무버</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=2&category_detail_num=16">스크럽/필링</a></li>
								</ul></li>
							<li class="dropdown-submenu"><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=3">마스크/팩</a>
								<ul class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=3&category_detail_num=17">시트마스크</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=3&category_detail_num=18">부분마스크/팩</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=3&category_detail_num=19">워시오프 팩</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=3&category_detail_num=21">슬리핑팩</a></li>
								</ul></li>
							<li class="dropdown-submenu"><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=4">선케어</a>
								<ul class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=4&category_detail_num=21">선크림/로션</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=4&category_detail_num=24">선케어 기타</a></li>
								</ul></li>
							<li class="dropdown-submenu"><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=5">베이스메이크업</a>
								<ul class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=5&category_detail_num=25">메이크업베이스</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=5&category_detail_num=26">프라이머</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=5&category_detail_num=27">BB/CC크림</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=5&category_detail_num=28">파운데이션</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=5&category_detail_num=29">쿠션</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=5&category_detail_num=30">파우더/팩트</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=5&category_detail_num=31">컨실러</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=5&category_detail_num=32">블러셔</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=5&category_detail_num=33">하이타이터/셰이딩</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=5&category_detail_num=34">메이크업픽서</a></li>
								</ul></li>
							<li class="dropdown-submenu"><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=6">아이메이크업</a>
								<ul class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=6&category_detail_num=35">아이섀도</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=6&category_detail_num=36">아이라이너</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=6&category_detail_num=37">아이브로우</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=6&category_detail_num=38">마스카라/픽서</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=6&category_detail_num=39">속눈썹영양제</a></li>
								</ul></li>
							<li class="dropdown-submenu"><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=7">립메이크업</a>
								<ul class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=7&category_detail_num=40">립스틱</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=7&category_detail_num=41">립틴트</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=7&category_detail_num=43">립케어/립밤</a></li>
								</ul></li>
							<li class="dropdown-submenu"><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=8">바디</a>
								<ul class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=8&category_detail_num=44">바디워시</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=8&category_detail_num=45">바디로션</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=8&category_detail_num=46">바디크림/젤</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=8&category_detail_num=47">바디오일/에센스</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=8&category_detail_num=49">바디미스트/샤워코롱</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=8&category_detail_num=50">핸드케어</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=8&category_detail_num=53">여성청결제</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=8&category_detail_num=54">데오드란트</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=8&category_detail_num=55">바디 기타</a></li>
								</ul></li>
							<li class="dropdown-submenu"><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=9">헤어</a>
								<ul class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=9&category_detail_num=56">샴푸</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=9&category_detail_num=57">린스/트리트먼트/팩</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=9&category_detail_num=58">헤어에센스/오일</a></li>
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=9&category_detail_num=59">헤어미스트</a></li>
								</ul></li>
							<li class="dropdown-submenu"><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=11">향수</a>
								<ul class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=11&category_detail_num=65">여성향수</a></li>
								</ul></li>
							<li class="dropdown-submenu"><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=12">기타</a>
								<ul class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath}/shop/shopProduct.do?category_num=12&category_detail_num=69">기타</a></li>
								</ul></li>
						</ul></li>
					<!-- 쇼핑 끝 -->
					<!-- 화플 -->
					<li class="dropdown"><a href="#"
						onclick="location.href='${pageContext.request.contextPath}/plus/plusMain.do'"
						class="dropdown-toggle dropdown-title" data-toggle="dropdown"> 화플</a>
						<ul class="dropdown-menu">
							<li><a href="${pageContext.request.contextPath}/plus/plusMain.do">화해플러스</a></li>
							<li><a href="${pageContext.request.contextPath}/plus/plusTrend.do">신상&amp;트렌드</a></li>
							<li><a href="javascript:void(0);">인기템 리뷰</a></li>
							<li><a href="javascript:void(0);">화장품 팩트체크</a></li>
							<li><a href="blog_masonry_3col.html">뷰티팁</a></li>
							<li><a href="blog_timeline.html">쇼핑팁</a></li>
						</ul></li>
					<!-- 화플 끝 -->
					<!-- 이벤트 -->
					<li><a href="#" onclick="location.href='${pageContext.request.contextPath}/event/eventMain.do'" 
					class="dropdown-toggle dropdown-title" data-toggle="dropdown"> 이벤트</a></li>
					<!-- 이벤트 끝 -->
					<!-- 성분사전 시작 -->
					<!-- Misc Pages -->
					<li class="dropdown">
						<ul class="dropdown-menu pull-right">
							<li><a href="page_misc_blank.html">Blank page</a></li>
							<li><a href="page_misc_boxed.html">Boxed Page</a></li>
							<li><a href="page_misc_boxed_img.html">Boxed Image Page</a>
							</li>
							<li><a href="page_misc_boxed_fixed_header.html">Boxed
									Fixed Menu</a></li>
							<li><a href="page_misc_fixed_header.html">Fixed Menu</a></li>
							<li><a href="page_misc_dark.html">Dark Page</a></li>
							<li><a href="page_misc_dark_boxed.html">Dark Boxed Page</a>
							</li>
							<li><a href="page_misc_dark_other_color.html">Dark Page
									with Theme Color</a></li>
							<li><a href="page_misc_sticky_footer.html">Sticky Footer
									Example</a></li>
						</ul>
					</li>
					<!-- End Misc Pages -->
				</ul>
				<!-- Search Block -->
				<ul class="nav navbar-nav navbar-border-bottom navbar-right">
					<li><i class="search fa fa-book search-btn"
							onclick="location.href='${pageContext.request.contextPath}/dictionary/dictionary.do'">
						 성분사전
						</i>
						</li>
					<li><i class="search fa fa-search search-btn"> 검색</i>
						<div class="search-open">
							<div class="input-group animated fadeInDown">
								<input type="text" class="form-control" placeholder="Search">
								<span class="input-group-btn">
									<button class="btn-u" type="button">Go</button>
								</span>
							</div>
						</div></li>
				</ul>
				<!-- End Search Block -->
			</div>
			<!--/end container-->
		</div>
		<!--/navbar-collapse-->
	</div>
	<!-- End Navbar -->
</div>
<!--=== End Header v4 ===-->
<!-- modal -->
<div class="modal fade" id="loginform" role="dialog">
    <div class="dialog-m">
    
      <!-- Modal content-->
      <div class="content-m-back">
        <div class="header-m">
          <button type="button" class="close-m" data-dismiss="modal">&times;</button>
          <h4 class="h4-m"><span class="glyphicon glyphicon-lock"></span>Login</h4>
        </div>
        <div class="body-m">
          <form role="form" id="login_form" action="${pageContext.request.contextPath}/main/signup.do" method="post">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> 아이디</label>
              <input type="text" name="m_id" class="form-control" id="usrname" placeholder="아이디를 입력해주세요."/>
              <span id="id"></span>
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> 비밀번호</label>
              <input type="password" name="m_passwd" class="form-control" id="psw" placeholder="비밀번호를 입력해주세요."/>
              <span id="pw"></span><span id="ck_pw"></span>
            </div>
              <button type="button" class="btn-m1 btn-success1 btn-block-m1" onclick = "location.href ='${pageContext.request.contextPath}/signin/service_agree.do'">회원가입</button>
              <input type="button" class="btn-m2 btn-success2 btn-block-m2" id="login_btn" value="로그인">
          </form>
        </div>
        <div class="footer-m">
         <a href="#" class="a-coler">아이디/비밀번호 찾기</a>
        </div>
      </div>
    </div>
  </div>
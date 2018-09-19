<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
			<div class="col-md-3 left_col menu_fixed">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="${pageContext.request.contextPath }/main/adminMain.do" class="site_title"><i class="fa fa-paw"></i>
							<span>관리자 페이지</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile clearfix">
						<div class="profile_pic">
							<img src="${pageContext.request.contextPath }/resources/images/화해로고.png" alt="..."
								class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>환영합니다,</span>
							<h2>관리자님</h2>
						</div>
					</div>
				
				<!-- /menu profile quick info -->

            <br />

<!-- sidebar menu -->
<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
	<div class="menu_section">
		<h3>관리자 메뉴</h3>
		<ul class="nav side-menu">
			<li>
				<a><i class="fa fa-home"></i> 쇼핑(product) <span class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu">
                    <li><a href="${pageContext.request.contextPath }/product/adminProductRegister.do">쇼핑 상품 등록</a></li>                 
					<li><a href="${pageContext.request.contextPath }/product/adminProductList.do">쇼핑 상품 목록</a></li>
				</ul>
			</li>
			<li>
				<a><i class="fa fa-suitcase"></i> 화장품(cosmetic) <span class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu">                 
					<li><a href="${pageContext.request.contextPath }/cosmetic/adminCosmeticList.do">화장품 목록</a></li>
				</ul>
			</li>
			<li>
				<a><i class="fa fa-plus-circle"></i> 화해 플러스 <span class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu">                 
					<li><a href="${pageContext.request.contextPath }/plus/adminPlusList.do">화해 플러스</a></li>
				</ul>
			</li>
			<li>
				<a><i class="fa fa-star"></i> 항목관리 <span class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu">
                    <li><a href="${pageContext.request.contextPath }/brand/adminBrandList.do">브랜드</a></li>
                    <li><a href="${pageContext.request.contextPath }/category/adminCategoryList.do">카테고리</a></li>
                    <li><a href="${pageContext.request.contextPath }/ingredient/adminIngredientList.do">성분</a></li>
				</ul>
			</li>
			<li><a><i class="fa fa-edit"></i> 공지사항 <span class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu">
					<li><a href="${pageContext.request.contextPath }/notice/adminNoticeRegister.do">공지사항 등록</a></li>
					<li><a href="${pageContext.request.contextPath }/notice/adminNotice.do">공지사항</a></li>
					<li><a href="${pageContext.request.contextPath }/notice/adminFAQ.do">FAQ</a></li>
					<li><a href="${pageContext.request.contextPath }/notice/inquiry.do">받은 문의</a></li>
				</ul></li>
			<li><a><i class="fa fa-desktop"></i> 회원관리 <span
					class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu">
					<li><a href="${pageContext.request.contextPath }/users/adminUserList.do">회원관리</a></li>
				</ul></li>
			<li><a><i class="fa fa-table"></i> 신고한 리뷰 <span
					class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu">
					<li><a href="${pageContext.request.contextPath }/report/reportReview.do">리뷰 신고</a></li>
				</ul></li>
			<li><a><i class="fa fa-users"></i> 사용자 <span
					class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu">
					<li><a href="${pageContext.request.contextPath }/userRequired/requiredRegister.do">사용자 상품 등록 요청</a></li>
					<li><a href="${pageContext.request.contextPath }/userRequired/requiredUpdate.do">기존 제품 수정 요청</a></li>
				</ul></li>
			<li><a><i class="fa fa-laptop"></i>이벤트 <span
					class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu">
					<li><a href="${pageContext.request.contextPath }/event/adminEvent.do">이벤트</a></li>
				</ul></li>
		</ul>
	</div>

</div>
<!-- /sidebar menu -->

<!-- /menu footer buttons -->
<div class="sidebar-footer hidden-small">
	<a data-toggle="tooltip" data-placement="top" title="Settings"> <span
		class="glyphicon glyphicon-cog" aria-hidden="true"></span>
	</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
		<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
	</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
		class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
	</a> <a data-toggle="tooltip" data-placement="top" title="Logout"
		href="login.html"> <span class="glyphicon glyphicon-off"
		aria-hidden="true"></span>
	</a>
</div>
<!-- /menu footer buttons -->
</div>
</div>


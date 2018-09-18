<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/notice.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/notice.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$(".accordion_banner .accordion_sub").hide();
	$(document).on('click','.accordion_banner .accordion_title',function() {
        if($(this).next("div").is(":visible")){
        	$(this).next("div").slideUp("fast");
        } else {
            $(".accordion_banner .accordion_sub").slideUp("fast");
            $(this).next("div").slideToggle("fast");
        }
    });
});
</script>
<!--=== Title Part ===-->
<div class="container-background">
	<div class="container content r_title">
       	<ul>
			<li>
				<p class="r_title1">NOTICE</p>
			</li>
			<li><span class="r_title2">공지사항</span>
			<span class="r_title3">화해의 소식을 들려드립니다 :)</span></li>
		</ul>
	</div>
</div>
<!--=== Content Part ===-->
<div class="container content">
	<div class="row magazine-page white">
		<div class="col-md-12">
			<!-- 공지사항 상단 메뉴바 시작-->
			<div class="magazine-news">
				<div class="col-md-12">
					<ul class="notice_menu col-md-12 margin-bottom-20">
						<li onclick="location.href='${pageContext.request.contextPath}/notice/noticeList.do'">공지사항</li>
						<li class="notice_on" onclick="location.href='${pageContext.request.contextPath}/notice/frequent_question.do'">FAQ</li>
						<li onclick="location.href='${pageContext.request.contextPath}/notice/my_question.do'">1:1문의</li>
					</ul>
				</div>
			</div>
			<!-- 공지사항 상단 메뉴바 끝 -->
			<!-- FAQ 검색 시작 -->
			<div class="magazine-news">
				
			</div>
			<div class="margin-bottom-10">
				<form id="faq_form" name="faq_form">
				<div class="col-md-12">
					<fieldset class="faq_style">
						<legend>FAQ 검색</legend>
						<label for="faq_serach">FAQ 검색</label>
						<div class="faq_input">
							<input type="text" id="faq_search" name="faq_search" placeholder="질문을 검색하세요.">
							<input type="submit" value="검색">
						</div>
					</fieldset>
				</div>
				</form>
			</div>
			<!-- FAQ 검색 끝 -->
			<!-- FAQ 분류 아이콘 시작 -->
			<div class="faq_icon">
				<ul class="faq_iconList">
					<li class="faq_on"><button class="faq_icon1" onclick="location.href='${pageContext.request.contextPath}/notice/frequent_question.do'">TOP10</button></li>
					<li class="faq_kind" data-kind="1"><button class="faq_icon2">회원/멤버십</button></li>
					<li class="faq_kind" data-kind="2"><button class="faq_icon3">주문/결제</button></li>
					<li class="faq_kind" data-kind="3"><button class="faq_icon4">배송</button></li>
					<li class="faq_kind" data-kind="4"><button class="faq_icon5">교환/반품/환불</button></li>
					<li class="faq_kind" data-kind="5"><button class="faq_icon6">이벤트</button></li>
					<li class="faq_kind" data-kind="6"><button class="faq_icon7">성분사전</button></li>
				</ul>
			</div>
			<!-- FAQ 분류 아이콘 끝 -->
			
			<!-- FAQ 시작-->
			<div class="faq_detail">
				<div class="faq_inner">
					<div class="accordion_banner faq_accordion">
						<c:forEach var="faq" items="${list}">
						<c:if test="${faq.faq_kind == 0}">
							<div class="accordion_title">
							<!-- 0:TOP10, 1:회원/멤버십, 2:주문/결제, 3:배송, 4:교환/반품/환불, 5:이벤트, 6:성분사전 -->
							<ul class="faq_list">
								<li>
									<span class="faq_arrow">
										<span class="faq_open"><img src="${pageContext.request.contextPath}/assets/img/shop/down-arrow.png"></span>
									</span>
									<span class="faq_q" style="text-align:center;">
										Q
									</span>
									<span class="faq_category">
										<span>
											TOP10	
										</span>
									</span>
									<span class="faq_tit">
										<span>
											${faq.faq_title}
										</span>
									</span>
								</li>
							</ul>
							</div>
							<div class="accordion_sub faq_txt">
								<div>
								${faq.faq_content}
								</div>
							</div>
						</c:if>
						</c:forEach>
					</div>
				</div>
			</div>
			<!-- FAQ 끝 -->
			
			<div class="faq_none">
				찾으시는 질문이 없다면?
				<div class="nv_btn" style="marign-bottom:20px;">
					<input type="button" value="1:1문의하기" onclick="location.href='${pageContext.request.contextPath}/notice/my_question.do'">
				</div>
			</div>
			
		</div>
	</div>
	<!--/white-->
</div>
<!--=== End Content Part ===-->
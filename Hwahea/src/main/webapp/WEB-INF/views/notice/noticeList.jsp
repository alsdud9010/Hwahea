<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/notice.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/notice.js"></script>
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
						<li class="notice_on" onclick="location.href='${pageContext.request.contextPath}/notice/noticeList.do'">공지사항</li>
						<li onclick="location.href='${pageContext.request.contextPath}/notice/frequent_question.do'">FAQ</li>
						<li onclick="location.href='${pageContext.request.contextPath}/notice/my_question.do'">1:1문의</li>
					</ul>
				</div>
			</div>
			<!-- 공지사항 상단 메뉴바 끝 -->
			<!-- 공지사항 상단 메뉴바2 시작 -->
			<div class="magazine-news">
				<div class="col-md-12">
					<ul class="notice_sub col-md-12 margin-bottom-20">
						<li class="notice_subOn" onclick="location.href='${pageContext.request.contextPath}/notice/noticeList.do'">전체</li>
						<li class="notice_kind" data-kind="0">일반</li>
						<li class="notice_kind" data-kind="1">블라인드</li>
						<li class="notice_kind" data-kind="2">이벤트</li>
					</ul>
				</div>
			</div>
			<div class="margin-bottom-10">
			</div>
			<!-- 공지사항 상단 메뉴바2 끝 -->
			
			<!-- 공지사항 시작-->
			<div class="no_list">
				<table class="notice_list">
					<thead>
						<tr>
							<th class="notice_num">번호</th>
							<th class="notice_tit">제목</th>
							<th class="notice_date">등록일 / 당첨자 발표일</th>
						</tr>
					</thead>
					<tbody class="notice_table">
					<!-- // 0:일반-NK01, 1:블라인드 (블라인드 된 리뷰)-NK02, 2:이벤트 (당첨자 발표)-NK03 -->
					<c:forEach var="notice" items="${list}">
						<tr>
							<td>${notice.notice_num}</td>
							<td class="notice_txt">
								<c:choose>
									<c:when test="${notice.notice_kind == 0}">
										<strong class="NK01">일반</strong>
									</c:when>
									<c:when test="${notice.notice_kind == 1}">
										<strong class="NK02">블라인드</strong>
									</c:when>
									<c:otherwise>
										<strong class="NK03">이벤트</strong>
									</c:otherwise>
								</c:choose>
								<a href="${pageContext.request.contextPath}/notice/noticeView.do?num=${notice.notice_num}">
								${notice.notice_title}</a></td>
							<td>${notice.notice_reg_date}</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<!-- 공지사항 끝 -->
		</div>
	</div>
	<!--/white-->
</div>
<!--=== End Content Part ===-->
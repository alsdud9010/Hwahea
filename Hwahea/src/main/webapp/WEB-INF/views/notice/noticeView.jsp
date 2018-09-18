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
					<ul class="notice_kind col-md-12 margin-bottom-20">
						<li class="notice_on" onclick="location.href='${pageContext.request.contextPath}/notice/noticeList.do'">공지사항</li>
						<li onclick="location.href='${pageContext.request.contextPath}/notice/frequent_question.do'">FAQ</li>
						<li onclick="location.href='${pageContext.request.contextPath}/notice/my_question.do'">1:1문의</li>
					</ul>
				</div>
			</div>
			<!-- 공지사항 상단 메뉴바 끝 -->
			
			<!-- 공지사항 본문 시작 -->
			<div class="col-md-12" style="margin-top:17px;">
			<table class="notice_view">
				<tr>
					<td>
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
						<span class="nv_tit">${notice.notice_title}</span>
					</td>
					<td class="nv_date">
						${notice.notice_reg_date}
					</td>
				</tr>
				<tr>
				<td class="nv_txt" colspan="2">
					<div>
						${notice.notice_content}
					</div>
				</td>
				</tr>
			</table>
			<!-- 다음글, 이전글 보기 시작-->
			<ul class="notice_pn">
				<li>
				<button>다음글</button>
				<c:if test="${notice.notice_num == notice.notice_num+1}">
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
				<a href="${pageContext.request.contextPath}/notice/noticeView.do?num=${notice.notice_num}">${notice.notice_title}</a>
				</c:if>
				</li>
				<li>
				<button>이전글</button>
				<c:if test="${notice.notice_num == notice.notice_num-1}">
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
				<a href="${pageContext.request.contextPath}/notice/noticeView.do?num=${notice.notice_num}">${notice.notice_title}</a>
				</c:if>
				</li>
			</ul>
			<!-- 다음글, 이전글 보기 끝 -->
			<!-- 목록보기 버튼 -->
			<div class="nv_btn">
				<input type="button" value="목록보기" onclick="location.href='${pageContext.request.contextPath}/notice/noticeList.do'">
			</div>
			</div>
			<!-- 공지사항 본문 끝 -->
		</div>
	</div>
	<!--/white-->
</div>
<!--=== End Content Part ===-->
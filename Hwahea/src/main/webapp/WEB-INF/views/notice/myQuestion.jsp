<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/notice.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/notice.js"></script>
<div class="container">
	<div class="page-main-style">
	<div class="row">
		<div class="page-title">공지사항</div>
	</div>
	<div class="row list-content">
	<div class="list-grid_4">
		<table class="list-left">
			<tr class="current-tab"><td>공지사항</td></tr>
			<tr class="other-tab"><td><a href="${pageContext.request.contextPath}/notice/frequent_question.do">자주하는질문</a></td></tr>
			<tr class="other-tab"><td>
				<input type="hidden" name="user_id" id="user_id">
				<a href="${pageContext.request.contextPath}/notice/my_question.do" id="id">1:1문의</a></td>
			</tr>
		</table>
	</div>
			<div class="list-grid_7">
			<div>
		<table class="list_title">
			<tr class="list_header">
				<th width="10%">번호</th>
				<th width="50%">제목</th>
				<th width="15%">작성자</th>
				<th width="15%">작성일</th>
				<th width="10%">조회</th>
			</tr>
				<tr class="list-tr">
					<td>1</td>
					<td><a href="${pageContext.request.contextPath}/notice/noticeView.do">당첨자 발표</a></td>
					<td>${notice.id}</td>
					<td>${notice.reg_date}</td>
					<td>${notice.hit}</td>
				</tr>
		</table>
		<div class="emptybox"></div>
		<div align="center">
			페이징
		</div>
		</div>
		<div>
		</div>	
	</div>
	</div>
	</div>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="shopHeader">
	<div class="shopHeader-img">
		<img src="${pageContext.request.contextPath}/assets/img/logo3.png"
		onclick="location.href='${pageContext.request.contextPath}/main/main.do'">
	</div>
	<div class="shopHeader-helper">
		<span class="shopHeader-helper-info" on>도움이 필요하세요?</span>
		<span class="shopHeader-helper-func func-section">
		<a href="${pageContext.request.contextPath}/notice/frequent_question.do">FAQ 보기</a></span>
		<span class="shopHeader-helper-func">
		<a href="${pageContext.request.contextPath}/notice/my_question.do"> 1:1 고객상담 바로가기</a></span>
	</div>
</div>
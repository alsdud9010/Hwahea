<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>이벤트 등록</title>
	<div class="right_col" role="main">
		<div class="">
			<div class="page-title">
				<div class="title_left">
					<h1>이벤트 등록</h1>
				</div>
				<div class="col-md-10 col-sm-10 col-xs-10" style="padding-left:200px;">
					<div class="x_panel">  
				<div class="page-main-style">
				<form:form commandName="eventcommand" action="adminEventRegister.do"
	    		id="EventRegister_form" enctype="multipart/form-data">	
		
				<label for="event_kind">이벤트 분류</label>
				<form:select class="form-control" path="event_kind">
					<form:option value="0">첫 구매지원</form:option>
					<form:option value="1">꼼평단</form:option>
					<form:option value="2">화장품 설문회</form:option>
					<form:option value="3">화장품 유목민</form:option>
				</form:select>
				<br>
				
				<label class="control-label" for="event_name">이벤트 글 이름</label>
				<form:input path="event_name" class="form-control"/>
				<br>
				
				<label for="event_status">이벤트 상태표시</label>
				<form:select class="form-control" path="event_status">
					<form:option value="0">일반 이벤트</form:option>
					<form:option value="1">모집 중</form:option>
					<form:option value="2">당첨자 발표</form:option>
					<form:option value="3">배송 및 후기</form:option>
				</form:select>
				<br>
				
				<label class="control-label" for="event_start">이벤트 시작 날짜</label>
				<form:input type="date" path="event_start" class="form-control"/>
				<br>
				
				<label class="control-label" for="event_end">이벤트 종료 날짜</label>
				<form:input type="date" path="event_end" class="form-control"/>
				<br>
				
				<label for="event_image1">이벤트 썸네일</label>
				<input type="file" class="form-control" name="upload1" id="event_image1"/>
				<br>
				
				<label for="event_image2">이벤트 상단 제품 사진</label>
				<input type="file" class="form-control" name="upload2" id="event_image2"/>
				<br>
				
				<label for="event_image3">이벤트 게시글</label>
				<input type="file" class="form-control" name="upload3" id="event_image3"/>
				<br>
				
		<div style="text-align:center;">
			<input type="submit" class="btn btn-success btn-lg" value="전송">
			<input type="button" class="btn btn-success btn-lg" value="목록"
			      onclick="location.href='adminEvent.do'">
		</div>
	</form:form>
	</div>
</div>
</div>
</div>
</div>
</div>
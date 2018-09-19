<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h1>공지사항 등록</h1>				
			</div>
			<div class="col-md-10 col-sm-10 col-xs-10" style="padding-left:200px;">
				<div class="x_panel">
				<div class="page-main-style">
				<form:form commandName="commandnotice" action="adminNoticeRegister.do"
							id="NoticeRegister_form" enctype="multipart/form-data">
						<label for="message">공지사항 분류</label>
						<form:select class="form-control" path="notice_kind">
							<form:option value="0">일반</form:option>
							<form:option value="1">블라인드 된 리뷰</form:option>
							<form:option value="2">이벤트(당첨자 발표)</form:option>
						</form:select>
						<br>
						
						<label class="control-label" for="message">공지사항 제목</label>
						<form:input type="text" path="notice_title" class="form-control"/>
						<br>
						
						
						<label class="control-label" for="message">공지사항 내용</label>
						<form:input type="text" path="notice_content" class="form-control"/>
						<br>
						
						
						<label for="upload">공지사항 사진</label>
						<input type="file" name="upload" class="form-control"/>
						<br>
						
						 
						<label class="control-label">등록한 아이디</label>
						<form:input type="text" path="notice_id" class="form-control"/>
						<br>
						
				<div style="text-align:center;">
					<input type="submit" class="btn btn-success btn-lg" value="등록하기" onclick="location.href='adminNoticeRegister.do'">
					<input type="button" class="btn btn-success btn-lg" value="목록보기" onclick="location.href='adminNotice.do'">
				</div>
    			</form:form>	
				</div>
				</div>
			</div>
              </div>
 		</div>      
	</div>
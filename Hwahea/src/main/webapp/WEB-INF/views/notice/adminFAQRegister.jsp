<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h1>FAQ</h1>				
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<form:form commandName="commandfaq" action="adminFAQRegister.do"
							id="FAQRegister_form">
				<div class="x_panel">
					<div class="col-md-6 col-sm-6 col-xs-12">
						
						<label for="message">FAQ 제목</label>
						<form:input type="text" path="faq_title" required="required"
									class="form-control col-md-7 col-xs-12"/>
					</div>
    				<div class="col-md-12 col-sm-12 col-xs-12">
    				<label for="message">FAQ 등록 내용</label>
    					<form:textarea required="required" class="form-control" path="faq_content" data-parsley-trigger="keyup"/>
    				</div>
    				
				</div>
				<div style="text-align:center;">
					<input type="submit" class="btn btn-success btn-lg" value="등록하기" onclick="location.href='adminFAQRegister.do'">
					<input type="button" class="btn btn-success btn-lg" value="목록보기" onclick="location.href='adminFAQ.do'">
				</div>
				</form:form>
			</div>
              </div>
              
 		</div>      
	</div>
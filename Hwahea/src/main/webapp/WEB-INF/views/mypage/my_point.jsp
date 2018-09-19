<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/mypage.css">
<div class="container content">
	<div class="row magazine-page">
		<div class="col-md-12" style="margin-left: 5%;">
			<form action="">
			<div class="mypage_form">
				<div class="first_form">
						<!-- now_point,P클래스 서로 같은 CSS사용 -->
						<div class="now_point">사 용 가 능 포 인 트 : </div>
						<div class="point"><b class="po_number">${member.m_point}</b></div>
						<div class="P"><b class="p">P</b></div>
				</div>
				<hr width="100%">
				    <div class="row" id="green" style="margin-left: -10em; text-align: center;">
				        <div class="col-md-6 col-md-offset-3">
				            <div class="panel panel-success coupon">
				              <div class="panel-heading" id="head">
				                <div class="panel-title" id="title">
				                    <i class="fa fa-github fa-2x"></i>
				                    <span class="hidden-xs">회원가입 이벤트</span> 
				                </div>
				              </div>
				              <div class="panel-body">
				                <div class="col-md-3">
				                    <div class="offer text-success">
				                    	<span class="number">1,000P</span>
				                    </div>
				                </div>
				              </div>
				              <div class="panel-footer">
				              	<div class="exp" style="float: left;">취득일 : 2018.09.20</div>
				                <div class="exp" style="margin-left: 75%;">만료일 : 2099.12.31</div>
				              </div>
				            </div>
				        </div>
				    </div>
			</div>
			</form>
		</div>
	</div>
</div>
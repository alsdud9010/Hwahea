<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/mypage.css">
<div class="container content">
	<div class="row magazine-page">
		<div class="col-md-12" style="margin-left: 5%;">
			<div class="mypage_form">
				<div class="menu_bar">
					<ul class="list-inline top-v1-contacts">
						<li class="now_menu"><a href="${pageContext.request.contextPath}/mypage/my_cartorder.do?bc=4">주문/배송</a></li>
						<li>|</li>
						<li class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_cartzzim.do?bc=4">찜한 상품</a></li>
					</ul>
				</div>
				<table class="table">
				  <thead class="thead-light">
				    <tr>
				      <th scope="col"></th>
				      <th scope="col"></th>
				      <th scope="col"></th>
				      <th scope="col"></th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <td>
				      		<div class="table_img">
								<img alt="brand_img" src="${pageContext.request.contextPath}/assets/img/mypage/like_img.png">
							</div>
					  </td>
				      <td>
					      <div class="row">
						      	<div class="favorite_brand col-md-12"style="text-align: left;">
						      		무료배송
						      	</div>
						      	<div class="col-md-12" style="font-size: 20px; font-weight: 600;">
						      		아두이노 교육 전문 쇼핑몰 '에듀이노'
						      	</div>
						      	<div class="exp col-md-12" style="font-size: 15px; font-weight: 600;">
						      		50,000원
						      	</div>
					      </div>
				      </td>
				      <td>
				      	<div class="row" style="margin-top: 10%;">
				      		<div class="col-md-6">
				      			<button>주문하기</button>
				      		</div>
				      		<div class="col-md-6">
				      			<button type="button" class="close" data-dismiss="alert">&times;</button>
				      		</div>
				      	</div>
				      </td>
				    </tr>
				    <tr>
				      <td>
				      		<div class="table_img">
								<img alt="brand_img" src="${pageContext.request.contextPath}/assets/img/mypage/like_img.png">
							</div>
					  </td>
				      <td>
					      <div class="row">
						      	<div class="favorite_brand col-md-12"style="text-align: left;">
						      		무료배송
						      	</div>
						      	<div class="col-md-12" style="font-size: 20px; font-weight: 600;">
						      		아두이노 교육 전문 쇼핑몰 '에듀이노'
						      	</div>
						      	<div class="exp col-md-12" style="font-size: 15px; font-weight: 600;">
						      		50,000원
						      	</div>
					      </div>
				      </td>
				      <td>
				      	<div class="row" style="margin-top: 10%;">
				      		<div class="col-md-6">
				      			<button>주문하기</button>
				      		</div>
				      		<div class="col-md-6">
				      			<button type="button" class="close" data-dismiss="alert" style="color: black;">&times;</button>
				      		</div>
				      	</div>
				      </td>
				    </tr>
				  </tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.size-select{
	width:100px;
	height:150px;
}
.down-text{
	padding-top:70px;
}
</style>
    
<div class="right_col" role="main"> 
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h1>상품 목록</h1>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">	
			<form action="adminProductList.do" id="adminProduct_form" method="get">
			</form>
				<div class="x_panel">
					<table class="table">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>이미지</th>
                          <th>상품이름</th>
                          <th>브랜드</th>
                          <th>상품 등록일</th>
                          <th>제품 사용 기한</th>
                          <th>상세보기</th>
                        </tr>
                      </thead>
                    
                      <tbody style="text-align:left;">
                      <c:if test="${count == 0 }">
                      <tr>
						<td colspan="7" style="text-align:center;"><h4>등록된 상품이 없습니다.</h4></td> 
					</tr>
					</c:if>
                      <c:if test="${count > 0 }">
                      <c:forEach var="product" items="${list }">
                        <tr>
                          <td style="padding-top:70px;">${product.p_num }</td> 
                          <td><img src="productImageView.do?p_num=${product.p_num }" class="size-select"></td>
                          <td style="padding-top:70px;">${product.p_name }</td>
                          <td style="padding-top:70px;">${product.p_brand }</td>
                          <td style="padding-top:70px;">${product.p_reg_date }</td>
                          <td style="padding-top:70px;">${product.p_expiry_date }</td>
                          <td style="padding-top:70px;"><i class="fa fa-sign-in" onclick="location.href='adminProductDetail.do?p_num=${product.p_num}'"></i>
							</td>
						</tr>
						</c:forEach>
                        </c:if>
                        </tbody>
                    </table>
                    <div style="text-align:center;" class="align-center">${pagingHtml}</div>
				</div>
			</div>
		</div>
	</div>
</div>

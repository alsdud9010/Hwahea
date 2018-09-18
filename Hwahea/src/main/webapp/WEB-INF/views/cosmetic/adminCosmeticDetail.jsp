<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.size-select{
	width:600px;
	height:450px;
	margin-left:150px;
}
</style>

<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h1>화장품 상세</h1>
			</div>
			<div class="x_title">
				<div class="clearfix"></div>
			</div>
			<div class="col-md-6 col-sm-6">
				<img src="cosmeticImageView.do?c_code=${cosmetic.c_code }" class="size-select">				
			</div>
			<div class="col-md-6 col-sm-6" style="text-align:center;">
                    <table class="table table-bordered table-detail" style="margin-top:200px; padding-right:50px;">
                    <tbody> 
	                 <tr>
	                   	  <th style="text-align:center;">코드 명</th>
						  <th style="text-align:center;">상품 명</th>
						  <th style="text-align:center;">용량</th>
						  <th style="text-align:center;">가격</th>
						  <th style="text-align:center;">성분</th>
						  <th style="text-align:center;">별점</th>
						  <th style="text-align:center;">랭킹</th>
						  <th style="text-align:center;">쇼핑 페이지 유무</th>
						  <th style="text-align:center;">등록 일</th>
					</tr>
					<tr>
						<td>${cosmetic.c_code }</td>
						<td>${cosmetic.c_name }</td>
						<td>${cosmetic.c_capacity }</td>
						<td>${cosmetic.c_price }</td>
						<td>${cosmetic.c_ingre }</td>
						<td>${cosmetic.c_rate }</td>
						<td>${cosmetic.c_rank }</td>
						<td>
						<c:if test="${cosmetic.c_shopping == 0}">
							X
						</c:if>
						<c:if test="${cosmetic.c_shopping == 1}">
							O
						</c:if>
						</td>
						<td>${cosmetic.c_reg_date }</td>
					</tr>
					</tbody>
                   </table>
                   
                 <button type="button" class="btn btn-success btn-lg" onclick="location.href='adminCosmeticList.do'">목록보기</button>
               	 <input type="button" class="btn btn-success btn-lg" value="삭제하기" onclick="location.href='adminCosmeticDelete.do?c_code=${cosmetic.c_code}'">
              </div>
		</div>
	</div>
</div>
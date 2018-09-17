<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
.table-detail{
	border:1px solid #ddd;
}
.table-detail th{
	background:#ededed;  
}
.size-select{
	padding-top:30px;
	padding-left:200px;
	padding-right:500px;
	width:410px;
	height:300px;
}
table{
	margin-top:100px;
}
</style> 
 
<div class="right_col" role="main">
	<div class="">
	<div class="page-title">
		<div class="title_left">
			<h1>쇼핑 상품 상세</h1>
		</div>
		
			<div class="x_title">
				<div class="clearfix"></div>
			</div>
			<div>
			
			<c:if test="${fn:endsWith(product.p_photo,'.jpg') || 
	              fn:endsWith(product.p_photo,'.JPG') ||
	              fn:endsWith(product.p_photo,'.gif') ||
	              fn:endsWith(product.p_photo,'.GIF') ||
	              fn:endsWith(product.p_photo,'.png') ||
	              fn:endsWith(product.p_photo,'.PNG')}">
				<img src="productImageView.do?p_num=${product.p_num }" class="col-md-6 col-sm-6 col-xs-6 size-select">
				</c:if>
	
			</div>
			<div class="col-md-6 col-sm-6 col-xs-6" style="text-align:center;">
                    <table class="table table-bordered table-detail ">
                    <tbody> 
	                   <tr> 
                          <th>상품 번호</th>
                          <td>${product.p_num }</td>
                          <th>상품명</th>
                          <td>${product.p_name }</td>            
                          <th>상품 가격</th>
                          <td>${product.p_price }</td>
                        </tr>
                        <tr>
                          <th>상품 용량</th>
                          <td>${product.p_capacity }</td>
                          <th>상품 브랜드</th>
                          <td>${product.p_brand }</td>
                          <th>상품 등록일</th>
                          <td>${product.p_reg_date }</td>
                        </tr>
                        <tr>
                       	 <th>사용 방법</th>
                          <td>${product.p_how_to }</td>
                        <th>상품 카테고리</th>
                        <td>${product.p_category }</td>
                        <th>상품 할인율</th>
                        <td>${product.p_discount }</td>
                        </tr>
                        <tr>
                        <th>제품 주요 사양</th>
                         <td>${product.p_main_spec }</td>
                       	 <th>사용 기한</th>
                          <td>${product.p_expiry_date }</td>
                          <th>제조자</th>
                          <td>${product.p_manufacturer }</td>
                        </tr>
                        <tr>
                          <th>제조국</th>
                          <td>${product.p_made_in }</td>
                          <th>주요 성분</th>
                          <td>${product.p_main_ingredient }</td>
                          <th>심사 유무</th>
                          <td>${product.p_test_exist }</td>
                        </tr>
					</tbody>
                   </table>
              </div>
              <div class="col-md-12 col-sm-12 col-xs-12"><br><br><br></div>
              	<div class="col-md-8 col-sm-8 col-xs-8">
              		<h4>Info<span class="fa fa-comment"></span></h4>
               	 <p>${product.p_content }</p>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-4" style="color:red;">
                	<h4>Caution<span class="fa fa-exclamation"></span></h4>
                <p>${product.p_attention }
                </p>
                </div>
                
            <div class="x_title">
				<div class="clearfix"></div>
			</div>
			<div style="text-align:center;"> 
               	 <button type="button" class="btn btn-success btn-lg" onclick="location.href='adminProductList.do'">목록보기</button>
               	 <input type="button" class="btn btn-success btn-lg" value="삭제하기" onclick="location.href='adminProductDelete.do?p_num=${product.p_num}'">
                </div>
             </div>
            </div>
           </div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
			<div class="col-md-12 col-sm-12 col-xs-12">
			<form action="adminBrandList.do" id="adminBrand_form" method="get">
			</form>
				<h1>브랜드 목록</h1>
				
				<div class="x_panel">                            
    				<table class="table">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>사진</th>
                          <th>브랜드 이름</th>
						  <th>등록 날짜</th>
						  <th>삭제</th>
                        </tr>
                      </thead>
                      <c:if test="${count == 0 }">
                      	<tr>
                      	<td colspan="4" style="text-align:center;"><h4>등록된 브랜드가 없습니다</h4>
                  		</tr>
                      </c:if>                
                      <c:forEach var="brand" items="${list }">
                      <tbody style="text-align:left;">
                        <tr>
                          <td style="padding-top:70px;">${brand.brand_num}</td> 
                          <td><img src="brandImageView.do?brand_num=${brand.brand_num }" class="size-select"></td>
                          <td style="padding-top:70px;">${brand.brand_name }</td>
                          <td style="padding-top:70px;">${brand.brand_reg_date }</td>
                          <td style="padding-top:70px;"><button type="button" class="btn btn-success btn-xs" onclick="location.href='#'">삭제</button></td>
						</tr>
                      </tbody>
                      </c:forEach>
                    </table>
                  </div>
                 
             
                <div style="text-align:center;"> 
            	    <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target=".bs-example-modal-lg">브랜드 등록</button>
            	<form:form commandName="brandcommand" action="adminBrandRegister.do"
						id="BrandRegister_form" enctype="multipart/form-data">     
                <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
							
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel">브랜드 등록</h4>
                        </div>
                        <div class="modal-body">
                        <div class="col-md-6 col-sm-6 col-xs-6">
                         <label class="control-label" for="brand_name">브랜드 이름</label>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6">
						<form:input path="brand_name" required="required"
							class="form-control" id="content" /> 
						<form:errors path="brand_name" cssClass="error-color" />
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6">
						<label for="brand_image">브랜드 사진</label>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6">
						<input type="file" name="upload" /> 
						</div>
                        </div>
                        <div class="modal-footer" style="margin-top:70px;"> 
                          <input type="submit" class="btn btn-success btn-lg" value="전송">
							<input type="button" class="btn btn-success btn-lg" value="목록" 	
								onclick="location.href='adminBrandList.do'">
                        </div>

                      </div>
                    </div>
                  </div>
                  </form:form>
              </div>
             </div>
				</div>
			</div>
			</div>
		
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#heard').click(function(){
			var value = $(this).val().toLowerCase();
			
			$('#tbf tr').filter(function(){
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
			}); 
		});
	});
	
</script>    
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<h1>카테고리 목록</h1>
				</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
			<form action="adminCategoryList.do" id="adminCategory_form" method="get">
			</form>
			<form action="adminCategoryDetaiList.do" id="adminCategoryDetail_form" method="get">
			</form>
				<div class="x_panel">                            
    				<div class="x_title">
						<h2>카테고리 목록<small> 목록</small></h2>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">				
                          <select id="heard" class="form-control">  
                          	<optgroup label="카테고리"></optgroup>                     
                            <option id="shop">스킨케어</option>
                            <option id="event">클렌징/필링</option>
                            <option id="service">마스크/팩</option>
                            <option id="etc">선케어</option>
                            <option id="idea">베이스메이크업</option>
                            <option id="cooperate">아이메이크업</option>
                            <option id="cooperate">립메이크업</option>
                            <option id="cooperate">바디</option>
                            <option id="cooperate">헤어</option>
                            <option id="cooperate">네일</option>
                            <option id="cooperate">향수</option>
                            <option id="cooperate">기타</option>
                          </select>
					</div>
                  </div>
                </div>
                
                <div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">                            
    				<div class="x_title">
						<table class="table">
							<thead>
								<tr>
									<th>카테고리 번호</th>
									<th>카테고리 이름</th>
									<th>카테고리 종류</th>
									<th>세부 카테고리 번호</th>
									<th>세부 카테고리 이름</th>
									<th>쇼핑 카테고리 유무</th>
								</tr>
							</thead>
							<tbody id="tbf">
							<c:if test="${count == 0 }">
								<tr>
									<td colspan="7" style="text-align:center;">등록된 카테고리가 없습니다</td>
								</tr>
							</c:if>
								
							<c:forEach var="category" items="${list }">
								<tr>
								<th>${category.category_num }</th>
								<td>${category.category_name }</td>
								<td>
								<c:if test="${category.category_kind == 0 }">
									일반
								</c:if>
								<c:if test="${category.category_kind == 1 }">
									베이비/임산부
								</c:if>
								<c:if test="${category.category_kind == 2 }">
									남성
								</c:if>
								<td>${category.category_detail_num }</td>
								<td>${category.category_detail_name }</td>
								<td>
								<c:if test="${category.shopping_exist == 0 }">
									X
								</c:if>
								<c:if test="${category.shopping_exist == 1 }">
									O
								</c:if>
								</td>
								</tr>
							</c:forEach>
							</tbody> 
						</table>
					</div>
                  </div>
                </div>
                
                <div class="col-md-12 col-sm-12 col-xs-12">
                <div style="text-align:center;">  
                  <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target=".bs-example-modal-xs">카테고리 등록</button> 
                	 <div class="modal fade bs-example-modal-xs" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-xs">
                    <form:form commandName="categorycommand" action="adminCategoryRegister.do"
                	 id="CategoryRegister_form">
                	 <div class="modal-content">
                    
							
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel">카테고리 등록</h4>
                        </div>
                        
                        <div class="modal-body">
                        
                        <div class="col-md-6 col-sm-6 col-xs-6">
                        <label class="control-label" for="category_name">카테고리 이름</label>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-6">
						<form:select path="category_name" class="form-control">
							<form:option value="스킨케어">1.스킨케어</form:option>
                            <form:option value="클렌징/필링">2.클렌징/필링</form:option>
                            <form:option value="마스크/팩">3.마스크/팩</form:option>
                            <form:option value="선케어">4.선케어</form:option>
                            <form:option value="베이스메이크업">5.베이스메이크업</form:option>
                            <form:option value="아이메이크업">6.아이케이크업</form:option>
                            <form:option value="립메이크업">7.립메이크업</form:option>
                            <form:option value="바디">8.바디</form:option>
                            <form:option value="헤어">9.헤어</form:option>
                            <form:option value="네일">10.네일</form:option>
                            <form:option value="향수">11.향수</form:option>
                            <form:option value="기타">12.기타</form:option>
                        </form:select>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6">
						<label class="control-label" for="category_kind">카테고리 종류</label>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6">
						<form:select path="category_kind" class="form-control">
							<form:option value="0">0.일반</form:option>
							<form:option value="1">1.베이비/임산부</form:option>
							<form:option value="2">2.남성</form:option>
						</form:select>
						</div>
						</div>
                        
                        <div class="modal-footer" style="margin-top:100px;">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                          <input type="submit" class="btn btn-success btn-lg" value="전송">
							<input type="button" class="btn btn-success btn-lg" value="목록" 	
								onclick="location.href='adminCategoryList.do'">
							</div>
                        </div>
                       </div>
					</form:form>
                      </div>
                    </div>
                  
                  
            	    <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target=".bs-example-modal-lg">카테고리 세부 등록</button> 
                	 <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                    	<form:form commandName="categorydetailcommand" action="adminCategoryDetailRegister.do">
                      <div class="modal-content">
							
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel">카테고리 세부등록</h4>
                        </div>
                        
                        <div class="modal-body">
                        <div class="col-md-6 col-sm-6 col-xs-6">
                        <label class="control-label" for="category_detail_name">세부 카테고리 이름</label>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-6">
						<form:input path="category_detail_name" required="required" class="form-control" />
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6">
						<label class="control-label" for="head_category">상위 카테고리 종류</label>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6">
						<form:input path="head_category" required="required" class="form-control" />
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6">
						<label class="control-label" for="shopping_exist">쇼핑 카테고리 유무</label>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6">
						<form:input path="shopping_exist" required="required" class="form-control" />
						</div>
                        </div>
                        
                        <div class="modal-footer" style="margin-top:100px;">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                          <input type="submit" class="btn btn-success btn-lg" value="전송">
							<input type="button" class="btn btn-success btn-lg" value="목록" 	
								onclick="location.href='adminCategoryList.do'">
							</div>
                        </div>

                      </div>
                     </form:form>
                    </div>
                  </div>
                 </div>
              </div>
                </div>
             
                
				</div>
			</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<style>
.table-detail th {
	background: #ededed;
}
</style>
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h1>화장품 목록</h1>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">

					<table class="table">
						<thead>
							<tr>
								<th>Code N.</th>
								<th>화장품 명</th>
								<th>등록 일</th>
								<th>가격</th>
								<th>쇼핑 페이지 유무</th>
								<th>상세보기</th>
							</tr>
						</thead>
						<c:if test="${count == 0 }">
						<tbody>
							<tr>
							<td colspan="6" style="text-align:center;"><h4>등록된 화장품이 없습니다.</h4></td>
							</tr>
						</tbody>
						</c:if>
						<c:forEach var="cosmetic" items="${list }">
						<tbody style="text-align: left">
							<tr>
								<td scope="row">${cosmetic.c_code }</td>
								<td>${cosmetic.c_name}</td>
								<td>${cosmetic.c_reg_date }</td>
								<td>${cosmetic.c_price }</td>
								<c:if test="${cosmetic.c_shopping == 0 }">
								<td>무</td>
								</c:if>
								<c:if test="${cosmetic.c_shopping == 1 }">
								<td>유</td>
								</c:if>
								<td><i class="fa fa-sign-in" onclick="location.href='adminCosmeticDetail.do'"></i>
								</td>
							</tr>
						</tbody>
						</c:forEach>

					</table>
					<div style="text-align:center;">${pagingHtml }</div>
			</div>
			
			<div style="text-align:center;">
						<button type="button" class="btn btn-success btn-lg" data-toggle="modal"
									data-target=".bs-example-modal-lg">화장품 등록</button>
						<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
							<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">×</span>
												</button>
												<h4 class="modal-title" id="myModalLabel">
													<span class="glyphicon glyphicon-briefcase"></span>
												</h4>
											</div>
											<form:form commandName="cosmeticcommand" action="adminCosmeticRegister.do"
											id="cosmeticRegister_form" enctype="multipart/form-data">
											<div class="modal-body">
												<div class="title_left">
													<h1>화장품 등록</h1>
												</div>
												<div class="x_title" style="text-align:center;">
													<div class="clearfix"></div>
												</div>													
												<div class="col-md-8 col-sm-8 col-xs-8" style="padding-left:250px;">
											
											<label class="control-label" for="c_code">화장품 코드명 </label>
											<form:input type="text" path="c_code" class="form-control"/>			
							
											<label class="control-label" for="c_name">화장품 이름</label>
											<form:input type="text" path="c_name" class="form-control"/>
											
											<label class="control-label" for="c_photo">화장품 사진</label>
											<input type="file" name="upload" class="form-control"/>
											
											<label class="control-label" for="c_capacity">화장품 용량</label>
											<form:input type="number" path="c_capacity" class="form-control"/>
											
											<label class="control-label" for="c_price">화장품 가격</label>
											<form:input type="number" path="c_price" class="form-control"/>
											
											<label class="control-label" for="c_ingre">화장품 성분</label>
											<form:input type="text" path="c_ingre" class="form-control"/>
											
											<label class="control-label" for="c_shopping">쇼핑 페이지</label>
											<form:select path="c_shopping" class="form-control">
												<form:option value="0">X</form:option>
												<form:option value="1">O</form:option>
											</form:select>
											
											
												</div>
												
												<div class="x_title">
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="modal-footer">
												<input type="submit" class="btn btn-primary" value="등록">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">닫기</button>
											</div>
											</form:form>
										</div>
								</div>
					</div>
					
				</div>
			
		</div>
	</div>
</div>
</div>
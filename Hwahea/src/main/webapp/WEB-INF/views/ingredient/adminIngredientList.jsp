<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<style>
.table-detail th {
	background: #ededed;
}
</style>
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h1>성분 목록</h1>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<form action="adminIngredientList.do" id="adminIngredient_form"
					method="get"></form>
				<div class="x_panel">

					<table class="table">
						<thead>
							<tr>
								<th>성분 이름(English)</th>
								<th>배합 목적</th>
								<th>EWG 등급</th>
								<th>데이터 등급</th>
								<th>20가지주의성분</th>
								<th>지성 피부</th>
								<th>건성 피부</th>
								<th>민감성 피부</th>
								<th>기능성 여부</th>
								<th>알러지성분</th>
							</tr>
						</thead>
						<c:if test="${count == 0 }">
							<tbody>
								<tr>
									<td colspan="6" style="text-align: center;"><h4>등록된
											화장품이 없습니다.</h4></td>
								</tr>
							</tbody>
						</c:if>
						<c:if test="${count > 0 }">
							<c:forEach var="ingredient" items="${list }">
								<tr class="text-center">
									<td class="text-left">${ingredient.i_KName }(${ingredient.i_EName })</td>
									<td class="text-left">${ingredient.i_prop }</td>
									<td>${ingredient.i_grade}</td>
									<td>${ingredient.i_datagrade}</td>
									<td><c:if test="${ingredient.i_warning != null }">Y</c:if><c:if test="${ingredient.i_warning == null }">X</c:if></td>
									<td><c:if test="${ingredient.i_oilly == 'Y' }">Y</c:if><c:if test="${ingredient.i_oilly == 'N' }">N</c:if><c:if test="${ingredient.i_oilly == null }">X</c:if></td>
									<td><c:if test="${ingredient.i_dry == null }">X</c:if><c:if test="${ingredient.i_dry == 'Y' }">Y</c:if><c:if test="${ingredient.i_dry == 'N' }">N</c:if></td>
									<td><c:if test="${ingredient.i_sensitive == null }">X</c:if><c:if test="${ingredient.i_sensitive == 'Y' }">Y</c:if><c:if test="${ingredient.i_sensitive == 'N' }">N</c:if></td>
									<td><c:if test="${ingredient.i_func != null }">Y</c:if><c:if test="${ingredient.i_func == null }">X</c:if></td>
									<td><c:if test="${ingredient.i_allergie != null }">Y</c:if><c:if test="${ingredient.i_allergie == null }">X</c:if></td>
								</tr>
							</c:forEach>
						</c:if>
					</table>
					<div style="text-align: center;"></div>
				</div>

				<div style="text-align: center;">
					<button type="button" class="btn btn-success btn-lg"
						data-toggle="modal" data-target=".bs-example-modal-lg">성분
						등록</button>
					<div class="modal fade bs-example-modal-lg" tabindex="-1"
						role="dialog" aria-hidden="true">
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
								<form:form commandName="ingredientcommand"
									action="adminIngredientRegister.do"
									id="ingredientRegister_form">

									<div class="modal-body">
										<div class="title_left">
											<h1>성분 등록</h1>
										</div>
										<div class="x_title" style="text-align: center;">
											<div class="clearfix"></div>
										</div>
										<div class="col-md-8 col-sm-8 col-xs-8"
											style="padding-left: 250px;">


											<label class="control-label" for="i_KName">한글성분 명</label>
											<form:input type="text" path="i_KName" class="form-control" />

											<label class="control-label" for="i_EName">영문성분 명</label>
											<form:input type="text" path="i_EName" class="form-control" />

											<label class="control-label" for="i_prop">배합 목적</label>
											<form:input type="text" path="i_prop" class="form-control" />

											<label class="control-label" for="i_grade">EWG 등급</label>
											<form:input type="text" path="i_grade" class="form-control" />

											<label class="control-label" for="i_datagrade">데이터 등급</label>
											<form:select type="text" path="i_datagrade"
												class="form-control">
												<form:option value="없음(None)">없음(None)</form:option>
												<form:option value="적음(Limited)">적음(Limited)</form:option>
												<form:option value="적당함(Fair)">적당함(Fair)</form:option>
												<form:option value="충분함(good)">충분함(good)</form:option>
												<form:option value="매우 많은(Robust)">매우 많은(Robust)</form:option>
											</form:select>

											<label class="control-label" for="i_warning">20가지 주의성분</label>
											<form:textarea path="i_warning" class="form-control" />

											<label class="control-label" for="i_oilly">지성 피부 도움
												여부</label>
											<form:select type="text" path="i_oilly" class="form-control">
												<form:option value="">해당 사항 없음</form:option>
												<form:option value="Y">해당 됨</form:option>
												<form:option value="N">도움 되지 않음</form:option>
											</form:select>

											<label class="control-label" for="i_dry">건성 피부 도움 여부</label>
											<form:select type="text" path="i_dry" class="form-control">
												<form:option value="">해당 사항 없음</form:option>
												<form:option value="Y">해당 됨</form:option>
												<form:option value="N">도움 되지 않음</form:option>
											</form:select>

											<label class="control-label" for="i_sensitive">민감성 피부 도움 여부</label>
											<form:select type="text" path="i_sensitive"
												class="form-control">
												<form:option value="">해당 사항 없음</form:option>
												<form:option value="Y">해당 됨</form:option>
												<form:option value="N">도움 되지 않음</form:option>
											</form:select>

											<label class="control-label" for="i_func">기능성 여부</label>
											<form:select type="text" path="i_func" class="form-control">
												<form:option value="">해당 사항 없음</form:option>
												<form:option value="Y">해당 됨</form:option>
											</form:select>

											<label class="control-label" for="i_allergie">알러지 성분 여부</label>
											<form:select type="text" path="i_allergie"
												class="form-control">
												<form:option value="">해당 사항 없음</form:option>
												<form:option value="Y">해당 됨</form:option>
											</form:select>
										</div>

										<div class="x_title">
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="modal-footer">
										<input type="submit" class="btn btn-primary" value="등록">
										<button type="button" class="btn btn-primary">삭제</button>
										<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
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
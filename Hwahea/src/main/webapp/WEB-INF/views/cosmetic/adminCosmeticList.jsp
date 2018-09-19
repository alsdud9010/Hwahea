<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery.min.js"></script>
<script>
$(document).ready(function(){
	
	$('#cosmeticRegister_form').on('submit',function(){
		var sel = $('#c_category option:selected').val();
		if(sel == 0){
			alert('카테고리명을 선택하세요');
			return false;
		}
	});
	
	$('#c_category').change(function(){
		var sel = $('#c_category option:selected').val();
		
		$.ajax({
			type:'post',
			data:{category_num:sel},
			url:'adminC_detail.do',
			dataType:'json',
			cache:false,
			timeout:30000,
			success:function(data){
				$('#d_category').empty();
				
				 var output = '<label class="control-label" class="d_category" for="d_category">세부 카테고리 명</label>';
				 output += '<select name="c_category" id="d_category" class="form-control">';
				 output += '<option value="0" selected="selected">카테고리 명 선택</option>';
				
				$(data.category_detail).each(function(index,item){
					 output += '<option id="D' + item.category_detail_num + '" value="' + item.category_detail_num + '">' + item.category_detail_name + '</option>';
					
				});
				 output += '</select>';
				 $('#append').append(output);
			},
			error:function(){
				alert('네트워크 오류');
			}
		});
	});
	
	$(document).on('change','#d_category',function(){
		
		var c_code = 'B';
		c_code += $('#c_brand option:selected').val();
		c_code += 'D';
		c_code += $('#d_category option:selected').val();
		
		$('#c_code').attr('value',c_code);
	});
});
</script>
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
								<td><i class="fa fa-sign-in" onclick="location.href='adminCosmeticDetail.do?c_code=${cosmetic.c_code}'"></i>
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
											id="cosmeticRegister_form"  encType="multipart/form-data">
											<div class="modal-body">
												<div class="title_left">
													<h1>화장품 등록</h1>
												</div>
												<div class="x_title" style="text-align:center;">
													<div class="clearfix"></div>
												</div>													
												<div class="col-md-8 col-sm-8 col-xs-8" style="padding-left:250px;">
											
											<label class="control-label" for="c_brand">브랜드 명</label>
											<select id="c_brand" class="form-control">
												<c:forEach var="b" items="${brand}"> 
													<option id="B${b.brand_num}" value="${b.brand_num}">${b.brand_name}</option>
												</c:forEach>
											</select>
											
											<label class="control-label" for="c_category">카테고리 명</label>
											<select name="c_category" id="c_category" class="form-control">
													<option value="0" selected="selected">카테고리 명 선택</option>
												<c:forEach var="c" items="${category}"> 
													<option value="${c.category_num}">${c.category_name}</option>
												</c:forEach>
											</select>
											
											<form:input type="hidden" path="c_code" id="c_code"/>
											
											<div id="append"></div>		
																		
											<label class="control-label" for="c_name">화장품 이름</label>
											<form:input type="text" path="c_name" class="form-control"/>
											
											<label class="control-label" for="c_photo">화장품 사진</label>
											<input type="file" name="c_uploadfile" class="form-control"/>
											
											<label class="control-label" for="c_capacity">화장품 용량</label>
											<form:input type="text" path="c_capacity" class="form-control"/>
											
											<label class="control-label" for="c_price">화장품 가격</label>
											<form:input type="number" path="c_price" class="form-control"/>
											
											<label class="control-label" for="c_ingre">화장품 성분</label>
											<form:input type="text" path="c_ingre" class="form-control"/>
											
											<label class="control-label" for="c_shopping">쇼핑 페이지</label>
											<form:select path="c_shopping" class="form-control">
												<form:option value="1">O</form:option>
												<form:option value="0">X</form:option>
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
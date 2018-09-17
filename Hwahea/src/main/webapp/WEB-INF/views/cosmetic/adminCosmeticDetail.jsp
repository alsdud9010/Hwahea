<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

	<div class="right_col" role="main">
		<div class="">
			<div class="page-title">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<h1>화장품 등록</h1>
				</div>
			<div class="x_panel">
				<div class="page-main-style">
				<form:form commandName="command" action="cosmeticRegister.do"
	    		id="cosmeticRegister_form"
	    		enctype="multipart/form-data">
		
				<label class="control-label" for="c_code">화장품 코드 명</label>				
				<form:input type="text" class="form-control" path="c_code" readonly="readonly"/>
				<form:errors path="c_code" 
				             cssClass="error-color"/>
								
				<label class="control-label" for="c_brand">브랜드 명</label>
				<form:input path="c_brand" required="required" class="form-control"/>
				<form:errors path="c_brand" 
				             cssClass="error-color"/>
		
				<label for="c_name">화장품 명</label>
				<form:input required="required" class="form-control" path="c_name"/>
				<form:errors path="c_name" 
				             cssClass="error-color"/>
		
				<label for="c_photo">화장품 사진</label>
				<input type="file" name="c_photo"/>
			
				<label for="c_capacity">화장품 용량</label>
				<form:input type="number" class="form-control" path="c_capacity"/>
		
				<label for="c_ingre">화장품 성분</label>
				<form:input type="text" class="form-control" path="c_ingre"/>
				
				<label for="c_shopping">쇼핑 페이지 유무</label>
				<form:input type="number" class="form-control" path="c_shopping"/> 
						
		<div style="text-align:center; padding-top:20px;">
			<input type="submit" class="btn btn-success btn-lg" value="전송">
			<input type="button" class="btn btn-success btn-lg" value="목록"
			      onclick="location.href='cosmeticList.do'">
		</div>
	</form:form>
	</div>
</div>
</div>
</div>
</div>


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
											<div class="modal-body">
												<div class="title_left">
													<h1>화장품 상세 리스트</h1>
												</div>
												<div class="x_title">
													<div class="clearfix"></div>
												</div>
													<img
													src="${pageContext.request.contextPath }/resources/images/화해로고.png"
													class="col-md-6 col-sm-6 col-xs-6 size-select">

												<div class="col-md-6 col-sm-6 col-xs-6"
													style="text-align: center;">
													<table class="table table-bordered table-detail ">
														<tbody>
															<tr>
																<th>코드명</th>
																<td>code</td>
																<th>브랜드명</th> 
																<td>Mark123</td>
																<th>화장품명</th>
																<td>김드래곤</td>
															</tr>
															<tr>
																<th>화장품 용량</th>
																<td>Larry</td>
																<th>가격</th>
																<td>1513515.jpg</td>
																<th>성분</th>
																<td>2018.09.03</td>
															</tr>
															<tr>
																<th>쇼핑페이지 유무</th>
																<td colspan="5">유</td>
															</tr>
															<tr>
																<th>등록일</th>
																<td>ㄷㄷ</td>
																<th>사용 기한</th>
																<td>남</td>
																<th>제조자</th>
																<td>건성</td>
															</tr>
															<tr>
																<th>제조국</th>
																<td>무</td>
																<th>주요 성분</th>
																<td>무</td>
																<th>심사 유무</th>
																<td>유</td>
															</tr>
														</tbody>
													</table>
													</div>
												<div class="col-md-8 col-sm-8 col-xs-8">
													<h4>
														Info<span class="fa fa-comment"></span>
													</h4>
													<p>Default Input Default Input Disabled Input Disabled
														Input Read-Only Input Read-Only Input Date Of Birth *
														rows="3" Password •••••••••••••• AutoComplete Select
														Select Custom Select Grouped Select MultipleChoose
														optionOption oneOption twoOption threeOption fourOption
														fiveOption six Input Tags social xadverts xsales x add a
														tag Checkboxes and radios Normal Bootstrap elements
														Option one. select more than one options Option two.
														select more than one options Option one. only select one
														option Option two. only select one option Checkboxes and
														radios Normal Bootstrap elements Checked Unchecked
														Disabled Disabled & checked Checked Unchecked Disabled
														Disabled & Checked Switch Checked Unchecked Disabled
														Disabled Checked</p>
												</div>
												<div class="col-md-4 col-sm-4 col-xs-4" style="color: red;">
													<h4>
													Caution<span class="fa fa-exclamation"></span>
													</h4>
													<p>rows="3" Password •••••••••••••• AutoComplete
														Select Select Custom Select Grouped Select MultipleChoose
														optionOption oneOption twoOption threeOption fourOption
														fiveOption six Input Tags social xadverts xsales x add a
														tag Checkboxes and radios Normal Bootstrap elements
														Option one. select more than one options Option two.
														select more than one options Option one. only select one
														option Option two. only select one option Checkboxes and
														radios Normal Bootstrap elements Checked Unchecked
														Disabled Disabled & checked Checked Unchecked Disabled
														Disabled & Checked Switch</p>
												</div>
												<div class="x_title">
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-primary">수정</button>
												<button type="button" class="btn btn-primary">삭제</button>
												<button type="button" class="btn btn-default"
													data-dismiss="modal">닫기</button>
											</div>
										</div>
									</div>
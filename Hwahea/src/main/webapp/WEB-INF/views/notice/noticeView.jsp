<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/notice.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/notice.js"></script>
<div class="container">
			<div class="page-main-style">
			<div class="row">
				<div class="page-title">공지사항</div>
			</div>
			<div class="row list-content">
			<div class="list-grid_4">
				<table class="list-left">
					<tr class="current-tab"><td>공지사항</td></tr>
					<tr class="other-tab"><td><a href="${pageContext.request.contextPath}/notice/frequent_question.do">자주하는질문</a></td></tr>
					<tr class="other-tab"><td>
						<input type="hidden" name="user_id" id="user_id">
						<a href="${pageContext.request.contextPath}/notice/my_question.do" id="id">1:1문의</a></td>
					</tr>
				</table>
			</div>
						<div class="list-grid_7">
										<div>
						<form action="#" enctype="multipart/form-data" method="post">
							<input type="hidden" id="id" name="user_id" value="user_id">
							<table class="dt-table">
								<tr>
									<th class="dt-subtitle">제목</th>
									<td colspan="3">당첨자 발표</td>
								</tr>
								<tr class="dt-subtitle">
									<th>작성자</th>
									<td>HwaHae</td>
									<th>조회수</th>
									<td>139</td>
								</tr>
								<tr class="dt-content">
									<th>내용</th>
									<td colspan="3">ㅎㅎㅎ하하하하
									</td>
								</tr>
							</table> 
							<table class="detail-btns">
							<tr>
									<th></th>
									<td align="right" colspan="3">
									<a class="btn2" onclick="location.href='${pageContext.request.contextPath}/notice/noticeList.do'">목록으로</a>
							</tr>   
							</table>                   
						</form>
					</div>
				<div>
				</div>	
			</div>
			</div>
			</div>
		</div>
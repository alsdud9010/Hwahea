<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/mypage.css">
<div class="container content">
	<div class="row magazine-page">
		<div class="col-md-12" style="margin-left: 15%; margin-top: -5em; width: 70%;">
				<div class="col-md-12">
					<div class="QnA_img col-md-4">
						<img alt="" src="${pageContext.request.contextPath}/assets/img/mypage/chat-double-outline.png">
					</div>
					<div class="QnA_set row col-md-8">
						<div class="QnA_one col-9">
							화해를 이용하면서 불편한 점 바라는 점을 말씀해주세요.
						</div>
						<div class="QnA_two col-4">
							화해는 여러분과 함께 만들어가는 서비스 입니다 ;)
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<br><br>
					<h2>문의 유형</h2>
					<select name="QnA_kind" class="form-control" id="exampleSelect1">
						<option>카테고리 선택</option>
						<option value="1.QnA">1.화해 쇼핑 문의</option>
						<option value="2.QnA">2.이벤트 문의</option>
						<option value="3.QnA">3.서비스 불편, 오류 제보</option>
						<option value="4.QnA">4.사용 방법, 기타 문의</option>
						<option value="5.QnA">5.아이디어 제안, 칭찬</option>
						<option value="6.QnA">6.제휴 문의</option>
					</select>
				</div>
				<hr class="hrtag">
				<div class="col-md-12">
					<h2>문의 내용</h2>
					<textarea class="form-control" id="exampleTextarea" rows="8"></textarea>
				</div>
				<hr class="hrtag">
				<div class="col-md-12">
					<h2>답변 받을 이메일</h2>
					<input type="text" placeholder="이메일(email@example.com)" class="form-control">
				</div>
				<div class="QnAbutton col-md-12">
					<input type="button" value="전송하기">
				</div>
			</div>
		</div>
	</div>

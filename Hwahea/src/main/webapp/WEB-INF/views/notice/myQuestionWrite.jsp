<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/notice.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/notice.js"></script>
<!--=== Title Part ===-->
<div class="container-background">
	<div class="container content r_title">
       	<ul>
			<li>
				<p class="r_title1">NOTICE</p>
			</li>
			<li><span class="r_title2">공지사항</span>
			<span class="r_title3">화해의 소식을 들려드립니다 :)</span></li>
		</ul>
	</div>
</div>
<!--=== Content Part ===-->
<div class="container content">
	<div class="row magazine-page white">
		<div class="col-md-12">
			<!-- 공지사항 상단 메뉴바 시작-->
			<div class="magazine-news">
				<div class="col-md-12">
					<ul class="notice_kind col-md-12 margin-bottom-20">
						<li onclick="location.href='${pageContext.request.contextPath}/notice/noticeList.do'">공지사항</li>
						<li onclick="location.href='${pageContext.request.contextPath}/notice/frequent_question.do'">FAQ</li>
						<li class="notice_on" onclick="location.href='${pageContext.request.contextPath}/notice/my_question.do'">1:1문의</li>
					</ul>
				</div>
			</div>
			<!-- 공지사항 상단 메뉴바 끝 -->
			<div class="margin-bottom-20"></div>
			<!-- 1:1 문의사항 작성폼 시작 -->
			<form id="myq-form" enctype="multipart/form-data">
			<table class="myq-table">
				<colgroup>
					<col style="width:25%;">
					<col style="width:75%;">
				</colgroup>
				<tbody>
					<tr>
						<th scope="col"><label for="myq-type">문의유형</label></th>
						<td>
							<select style="width:192px;">
								<option value="" selected="selected">선택해주세요</option>
								<option>회원/멤버십</option>
								<option>주문/결제</option>
								<option>배송</option>
								<option>교환/반품/환불</option>
								<option>이벤트</option>
								<option>성분사전</option>
							</select>
							<select disabled="disabled" style="width:192px;">
								<option>선택해주세요</option>
							</select>
						</td>
					</tr>
					<tr class="myq-textarea">
						<th scope="col"><label for="myq-content">내용</label></th>
						<td>
							<textarea cols="5" rows="1" placeholder="문의내용을 입력해주세요.(2000자 이내)" style="width:98%;height:280px;"></textarea>
							<label for="myq-multi">
								<button class="myq-file">첨부파일</button>
							</label>
							<input type="file" id="myq-multi" value="첨부파일" style="display:none;">
							<input type="hidden" name="fileName">
							<span class="myq-fileName" style="display:none;">
								<span>파일이름</span>
								<button class="myq-deleteBtn">삭제</button>
							</span>
							<span class="myq-direction">
								5MB 이하의 이미지 파일 (JPG, PNG, GIF) 1개를 첨부하실 수 있습니다.
							</span>
						</td>
					</tr>
					<tr class="myq-alarm">
						<th scope="col">답변등록 알림(선택)</th>
						<td>
							<ul>
								<li>
									<input type="checkbox" checked="checked">
									<label for="myq-email">SMS</label>
									<select style="width:122px;" title="통신사를 선택하세요">
										<option selected="selected">010</option>
										<option>011</option>
										<option>016</option>
										<option>017</option>
										<option>018</option>
										<option>019</option>
									</select>
									<span>-</span>
									<input type="tel" value="1234" title="휴대폰 가운데 4자리를 입력하세요" style="width:122px;">
									<span>-</span>
									<input type="tel" value="5678" title="휴대폰 마지막 4자리를 입력하세요" style="width:122px;">
								</li>
								<li>
									<input type="checkbox" value="Y">
									<label for="myq-email">E-mail</label>
									<input type="text" placeholder="아이디를 입력하세요" value="test" style="width:152px;ime-mode:disabled;" disabled="disabled">
									<span>@</span>
									<input type="text" placeholder="직접 입력 하세요" value="test.com" style="width:140px;ime-mode:disabled;" disabled="disabled">
									<select title="도메인 주소를 선택하세요." style="width:122px;">
										<option selected="selected">직접입력</option>
										<option>naver.com</option>
										<option>nate.com</option>
										<option>daum.net</option>
										<option>hanmail.net</option>
										<option>gmail.com</option>
									</select>
								</li>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="myq_btn">
					<input type="submit" value="등록" onclick="location.href='${pageContext.request.contextPath}/notice/my_question.do'">
					<input type="button" value="취소" onclick="location.href='${pageContext.request.contextPath}/notice/my_question.do'">
			</div>
			</form>
			<!-- 1:1 문의사항 작성폼 끝 -->
			
		</div>
	</div>
	<!--/white-->
</div>
<!--=== End Content Part ===-->
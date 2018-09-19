<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/writeReview.css">
<!-- <link rel="stylesheet" type="text/css" href="https://bootswatch.com/superhero/bootstrap.min.css"/> -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/rating.css"/>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="http://www.jqueryscript.net/css/jquerysctipttop.css" >
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-3.3.1.min.js"></script> --%>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/modifyReview.js"></script>
<!-- <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script> -->
<script src="${pageContext.request.contextPath}/assets/js/rating.js"></script>
<div id="wrap">
	<div>
		<div class="r_title">
			<div class="r_title1">REVIEW</div>
			<dl>
				<dt class="r_title2">리뷰 수정하기</dt>
				<dt class="r_title3">사용하신 제품의 상세한 리뷰를 남겨주세요!</dt>
			</dl>
		</div>
		<div class="margin-bottom-20">
			<hr class="hr-md">
		</div>
	</div>
	<!-- 제품 정보 -->
	<div id="propic">
		<img src="${pageContext.request.contextPath}/assets/img/sample.jpg">
	</div>
	<div id="brand">메이크업 포에버(MAKEUP FOREVER)</div>
	<div id="name">HD 프레스드 파우더</div>
	<hr id="re_hr">
	<form action="update.do?re_num=${review.re_num }" id="modify_form">	
	<%-- <input type="hidden" name="c_code" value="${}" id="c_code">
	<input type="hidden" name="re_id" value="${re_id}" id="user_id"> --%>
	<input type="hidden" name="re_num" value="${review.re_num }">
	<div id="rate">
		<div id="help">
		평점을 선택해주세요.
		</div>
			<div class="starcont">
				<div id="star">
					<input type="text" value="${review.re_rate }" id="re_rate" name="re_rate">
				</div>
				<span id="original">현재 별점은 <strong>${review.re_rate }점</strong> 입니다.</span>
				<span id="startext">변경을 원하시면 별을 더블클릭 해주세요!</span>  
				<script>
					$(function() {
						$('#re_rate').rating(); 

						 $("#star").click(function() {
							$('#original').empty();
							if ($('#re_rate').val() == 1) {
								$('#startext').text('1점. 최악이에요ㅠㅠ');
							} else if ($('#re_rate').val() == 2) {
								$('#startext').text('2점. 별로예요!');
							} else if ($('#re_rate').val() == 3) {
								$('#startext').text('3점. 무난해요!');
							} else if ($('#re_rate').val() == 4) {
								$('#startext').text('4점. 좋아요!');
							} else if ($('#re_rate').val() == 5) {
								$('#startext').text('5점. 완전 추천해요!!');
							}
						});
					});
				</script>
			</div>
	</div> 
	<hr id="re_hr">
	<div id="review">
	<div id="re_good">
		<img src="${pageContext.request.contextPath}/assets/img/like.png"> 
		<span id="retitle">좋았던 점</span> <span id="source">(최소 20자 이상)</span> <br> 
		<textarea name="re_good" id="re_good" rows="10" cols="155" 
		placeholder="*사용하신 제품의 자세한 리뷰를 남겨주세요.
		
발림성, 흡수력, 보습력 등의 사용감을 작성해주세요.

추천하는 피부타입, 구매하신 가격, 용량을 작성해주세요.">${review.re_good }</textarea>
		<div id="gcount"><span id="g_count">0/5000</span></div>  
	</div>
	<div id="re_bad">
		<img src="${pageContext.request.contextPath}/assets/img/bad.png"> 
		<span id="retitle">아쉬운 점</span> <span id="source">(최소 20자 이상)</span> <br> 
		<textarea name="re_bad" id="re_bad" rows="10" cols="155" 
		placeholder="*사용하신 제품의 자세한 리뷰를 남겨주세요.
		
사용하시면서 아쉬웠던 사용감을 작성해주세요.

트러블 유무, 추천하지 않는 피부타입을 말씀해주세요.">${review.re_bad }</textarea>
		<form:errors path="re_bad" cssClass="error-color"/>
		<div id="bcount"><span id="b_count">0/5000</span></div> 
	</div>
	<div id="re_tip">
		<img src="${pageContext.request.contextPath}/assets/img/tip.png"> 
		<span id="retitle">꿀팁</span> <span id="source">(선택)</span> <br> 
		<textarea name="re_tip"  id="re_tip" rows="10" cols="155" placeholder="*나만의 사용법, 이 제품에 대해 도움이 되는 정보 등을 풍성하게 남겨주세요♡">${review.re_tip }</textarea>
		<div id="tcount"><span id="t_count">0/5000</span></div> 
	</div>
	<div id="photos">
		<img src="${pageContext.request.contextPath}/assets/img/review/camera.png" id="camera"> 
		<span id="retitle">사진등록 </span> 
		<span id="source">(선택)(최대 3장까지 업로드 가능)</span> 
		<span id="option">사진 등록시 화해 포인트 500P 지급!</span><br> 
		<div id="caution">
			* 제품과 무관한 사진일 경우, 리뷰 수정 요청을 드리게 됩니다.
		</div>
		<c:if test="${!empty review.re_filename1}">
			<span id="photos1">
				<img src="imageView.do?re_num=${review.re_num }&cnt=1" style="max-width: 200px">
				<input type="button" value="사진1 삭제" id="oridelete1">
			</span>
		</c:if>
		<c:if test="${!empty review.re_filename2}">
			<span id="photos2">
				<img src="imageView.do?re_num=${review.re_num }&cnt=2" style="max-width: 200px">
				<input type="button" value="사진2 삭제" id="oridelete2">
			</span>
		</c:if>
		<c:if test="${!empty review.re_filename3}">
			<span id="photos3">
				<img src="imageView.do?re_num=${review.re_num }&cnt=3" style="max-width: 200px">
				<input type="button" value="사진3 삭제" id="oridelete3">
			</span>
		</c:if>
		<div class="preview">
			<span id="preview1"></span>
			<span id="preview2"></span>
			<span id="preview3"></span>
		</div>
		<div class="deletefile">
			<span id="deletefile1"></span>
			<span id="deletefile2"></span>
			<span id="deletefile3"></span>
		</div>
		<c:if test="${empty review.re_filename1 && empty review.re_filename2 && empty review.re_filename3}">
			<span class="filebox">
			<label for="ex_file1">업로드1</label> 
			<input name="re_uploadfile1" type="file" id="ex_file1">
			<label for="ex_file2">업로드2</label> 
			<input name="re_uploadfile2" type="file" id="ex_file2">
			<label for="ex_file3">업로드3</label> 
			<input name="re_uploadfile3" type="file" id="ex_file3">
			</span>
		</c:if>
	</div>
	</div>
	<hr id="re_hr">
	<div id="submit">
		<input type="submit" value="수정하기">
		<input type="button" value="취소" onclick="location.href='${pageContext.request.contextPath}/review/productInfo.do'">
	</div>
	</form>
</div>
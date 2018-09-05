<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/writeReview.css">
<div id="wrap">
	<div>
		<div class="r_title">
			<div class="r_title1">REVIEW</div>
			<dl>
				<dt class="r_title2">리뷰 작성하기</dt>
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
	<div id="rate">
		<div id="help">
		평점을 선택해주세요.
		</div>
		<div id="star">
			<img src="${pageContext.request.contextPath}/assets/img/starno.png">
			<img src="${pageContext.request.contextPath}/assets/img/starno.png">
			<img src="${pageContext.request.contextPath}/assets/img/starno.png">
			<img src="${pageContext.request.contextPath}/assets/img/starno.png">
			<img src="${pageContext.request.contextPath}/assets/img/starno.png">
		</div>
		<span id="startext">별을 눌러주세요!</span>
	</div> 
	<hr id="re_hr">
	<div id="review">
	<div id="good">
		<img src="${pageContext.request.contextPath}/assets/img/like.png"> 
		<span id="retitle">좋았던 점</span> <span id="source">(최소 20자 이상)</span> <br> 
		<textarea rows="10" cols="155" placeholder="*사용하신 제품의 자세한 리뷰를 남겨주세요.&#13;&#10;&#13;&#10;발림성, 흡수력, 보습력 등의 사용감을 작성해주세요.&#13;&#10;추천하는 피부타입, 구매하신 가격, 용량을 작성해주세요."></textarea>
		<div id="count"><span id="g_coung">0/5000</span></div>  
	</div>
	<div id="bad">
		<img src="${pageContext.request.contextPath}/assets/img/bad.png"> 
		<span id="retitle">아쉬운 점</span> <span id="source">(최소 20자 이상)</span> <br> 
		<textarea rows="10" cols="155" placeholder="*사용하신 제품의 자세한 리뷰를 남겨주세요.&#13;&#10;&#13;&#10;사용하시면서 아쉬웠던 사용감을 작성해주세요.&#13;&#10;트러블 유무, 추천하지 않는 피부타입을 말씀해주세요."></textarea>  
		<div id="count"><span id="g_coung">0/5000</span></div> 
	</div>
	<div id="tips">
		<img src="${pageContext.request.contextPath}/assets/img/tip.png"> 
		<span id="retitle">꿀팁</span> <span id="source">(선택)</span> <br> 
		<textarea rows="10" cols="155" placeholder="*나만의 사용법, 이 제품에 대해 도움이 되는 정보 등을 품성하게 남겨주세요♡"></textarea>  
		<div id="count"><span id="g_coung">0/5000</span></div> 
	</div>
	<div id="photos">
		<img src="${pageContext.request.contextPath}/assets/img/review/camera.png" id="camera"> 
		<span id="retitle">사진등록 </span> 
		<span id="source">(선택)</span> 
		<span id="option">사진 등록시 화해 포인트 500P 지급!</span><br> 
		<div id="caution">
			* 제품과 무관한 사진일 경우, 리뷰 수정 요청을 드리게 되며, 검수 후 포인트 지급이 진행됩니다.
		</div> 
		<%-- <div id="preview">
			<img src="${pageContext.request.contextPath}/assets/img/photo.PNG">
			<img src="${pageContext.request.contextPath}/assets/img/photo.PNG">
			<img src="${pageContext.request.contextPath}/assets/img/photo.PNG">
			<img src="${pageContext.request.contextPath}/assets/img/photo.PNG">
		</div> --%>
		<div class="filebox">
			<label for="ex_file">업로드</label> 
			<input type="file" id="ex_file">
		</div>
	</div>
	</div>
	<hr id="re_hr">
	<div id="help">
		이 제품을 화해 유저들에게 추천하시겠어요?
	</div>
	<div id="re_btn">
		<input type="button" value="네"> 
		<input type="button" value="아니오">
	</div>
	<hr id="re_hr">
	<div id="submit">
		<input type="submit" value="등록하기">
	</div>
</div>
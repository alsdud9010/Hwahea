<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/editRequest.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/editRequest.js"></script>
<div id="wrap">
	<div>
		<div class="r_title">
			<div class="r_title1">EDIT</div>
			<dl>
				<dt class="r_title2">정보 수정 요청</dt>
				<dt class="r_title3">제품 정보 수정을 요청해주세요!</dt>
			</dl>
		</div>
		<div class="margin-bottom-20">
			<hr class="hr-md">
		</div>
	</div>
	<!-- 제품 정보 -->
	<div id="propic">
		<img src="imageView2.do?c_code=${cosmetic.c_code }" style="max-width: 500px">
		<%-- <img src="${pageContext.request.contextPath}/assets/img/sample.jpg"> --%>
	</div>
	<div id="name">${cosmetic.c_name }</div>
	<div id="brand">${cosmetic.brand_name }</div>
	<hr id="re_hr">
	<!-- 정보 수정 가이드 -->
	<div id="guide">
		<div id="g_title">'잘못된 정보'를 알려주세요!</div>
		<div id="g_title2">정확한 정보 관리를 위해 최선을 다하고 있지만, 미처 저희의 손이 닿지 않은 곳엔 여러분의 도움이 필요해요.</div>
		<div id="g_title3">카테고리, 제품명, 전성분, 이미지 등 잘못 등록된 정보를 말씀해주시면
			 빠르게 수정하도록 하겠습니다. :)</div> 
		<div id="g_title4">※ 안내사항<br>
		1. 제품 등록 요청은 검색화면 하단에 있는 '등록 요청' 기능을 이용해주세요. 이 페이지로 들어온 등록요청은 처리되지 않아요. :(<br>
		2. 브랜드사는 hwahea@hwahea.com 로 수정요청을 해주시면, 별도의 과정을 안내해드립니다.</div>
	</div>
	<hr id="re_hr"> 
	<form action="editSuccess.do" id="edit_form">
	<input type="hidden" name="c_code" value="${cosmetic.c_code }">
	<div id="selectbox">
		<select id="edit_cate">
			<option value="0" selected="selected">카테고리를 선택해주세요.</option>
			<option value="1. 단종됐어요!">1. 단종됐어요!</option>
			<option value="2. 브랜드명 수정해주세요!">2. 브랜드명 수정해주세요!</option>
			<option value="3. 카테고리명 수정해주세요!">3. 카테고리명 수정해주세요!</option>
			<option value="4. 제품명 수정해주세요!">4. 제품명 수정해주세요!</option>
			<option value="5. 가격정보 수정해주세요!">5. 가격정보 수정해주세요!</option>
			<option value="6. 용량정보 수정해주세요!!">6. 용량정보 수정해주세요!!</option>
			<option value="7. 전성분 목록 수정해주세요!">7. 전성분 목록 수정해주세요!</option>
			<option value="8. 이미지 수정해주세요!!">8. 이미지 수정해주세요!!</option>
			<option value="9. 기타">9. 기타</option>
		</select>
	</div>
	<div id="txtarea">
		<textarea id="edit_content" rows="10" cols="100" placeholder="구체적인 수정 요청사항을 적어주시면, 더 원활하게 처리가 가능해요. :)"></textarea>
		<div id="editcount"><span class="count">0/300</span></div> 
	</div>
	<div id="submit">
		<input type="submit" value="화해운영진에게 전송하기">
	</div>
	</form>
</div>
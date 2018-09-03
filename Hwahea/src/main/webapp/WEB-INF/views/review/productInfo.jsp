<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/productInfo.css">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/graph.js"></script>
	<div id="wrap">
		<!-- 제품 사진, 제품 정보 시작 -->
		<div id="info">
			<!-- 제품 사진 시작 -->
			<div id="propic">
				<img src="${pageContext.request.contextPath}/assets/img/sample.jpg">
			</div>
			<!-- 제품 사진 끝 -->
			<!-- 제품 정보 시작 -->
			<div id="proinfo">
				<div id="name">HD 프레스드 파우더</div>
				<div id="brand">
					메이크업 포에버(MAKEUP FOREVER) <input type="button" value="브랜드관">
				</div>
				<hr>
				<div id="spec">
					<div>
						<span id="title">평점</span> 
						<span id="rate"> 
							<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png"> 
							<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png"> 
							<img src="${pageContext.request.contextPath}/assets/img/star.png">
						</span> 
					</div>
					<div> 
						<span id="title">정가 </span> 
						<span> 30g / 35,000원</span>
					</div>
					<div>
						<span id="title">랭킹 </span> 
						<span>파우더/팩트 </span> 
						<span>1위</span> 
					</div>
					<div>
						<span id="title">수상 </span> 
						<span>2017 화해 뷰티어워드 1위 </span>
					</div>
				</div>
				<hr>
				<div id="buttons">
					<input type="button" value="즐겨찾기">
					<input type="button" value="비교함 담기">
				</div>
			</div>
			<!-- 제품 정보 끝 -->
		</div>
		<!-- 제품 사진, 제품 정보 끝 -->
		<hr>
		<!-- 제품 성분 시작 -->
		<div id="ingre">
			<div id="head"><img src="${pageContext.request.contextPath}/assets/img/test.png">성분</div>
			<div id="subhead">
				성분 구성
			</div>
			<div id="chart_div"></div>
			<hr>
			<div id="subhead">
				피부타입별 성분
			</div>
			<div id="type_chart_div"></div>
			<hr>
			<div id="subhead">
				기능성 성분
			</div>
			<div id="option">
				<a><img src="${pageContext.request.contextPath}/assets/img/sun.png"> 자외선 차단 </a>
				<a><img src="${pageContext.request.contextPath}/assets/img/bulb.png"> 미백 개선 </a>
				<a><img src="${pageContext.request.contextPath}/assets/img/cancel.png"> 주름 개선 </a>
			</div>
			<div id="detail_option">
				* 기능성 성분 정보는 화장품의 기능성 여부를 판단하는 기준이 아니며, 해당 성분의 포함 여부만 확인할 수 있습니다.
			</div>
			<hr>
			<div id="caution">
				1) 성분 정보는 성분의 함량과 배합방식, 개개인의 피부와 환경에 따라 다르게 적용될 수 있습니다.<br>
				2) 구매 전에 제조판매업자가 표기한 전성분 표를 한 번 더 확인하시길 권장드립니다.<br>
				3) 화해 정보를 허가없이 상업적으로 활용할 경우, 법적 조치를 받을 수 있습니다.
			</div>
		</div>
		<!-- 제품 성분 끝 -->
		<hr>
		<!-- 리뷰 통계 시작 -->
		<div id="review_stat">
		<div id="head"><img src="${pageContext.request.contextPath}/assets/img/review.png">리뷰</div>
		<div id="all_rate">
			<span id="score">3.88<br></span>
		</div>
		<div id="review_chart"></div>
		<div id="write">
			<input type="button" value="리뷰 쓰기">
			<input type="button" value="모든 리뷰 보기">
		</div>
		
		
		</div>
		<!-- 리뷰 통계 끝 -->
		<!-- 리뷰 전체 시작 -->
		<div id="review_list">
		<!-- 리뷰 1개 시작 -->
		<div class="review">
			<div id="writer">
				<table>
					<tr>
						<td rowspan="3" id="w_profile"><img src="${pageContext.request.contextPath}/assets/img/user.png"></td>
						<td id="nick">닉네임</td>
					</tr>
					<tr>
						<td id="type">나이/피부타입</td>
					</tr>
				</table>
			</div>
			<!-- 별점, 작성일 시작 -->
			<div id="re_rate">
				<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png"> 
				<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png"> 
				<img src="${pageContext.request.contextPath}/assets/img/star.png"> 
				<span id="reg_date"> 2018.08.20</span>
			</div>
			<!-- 별점, 작성일 끝 -->
			<div id="review">
				<div id="good">
					<table>
						<tr>
							<td id="g_icon"><img src="${pageContext.request.contextPath}/assets/img/like.png" alt="좋았던 점"></td>
							<td id="content">우아아아아아아아아아아아ㅏ아아앙<br> 난ㅇ러ㅣㄴ얼ㄴ이ㅏㅇㄹㄴ<br>
							ㅇㄴ란어링너ㅣㄹㅇ닐ㅇㄴㅇㄴㅇㄴㅇ<br> ㅇㅇㅇㅇㅇ<br> **********br 허용하기
							</td>
						</tr>
					</table>
				</div>
			<hr size="1" width="85%" noshade>
				<div id="bad">
					<table>
						<tr>
							<td id="b_icon"><img src="${pageContext.request.contextPath}/assets/img/bad.png"></td>
							<td id="content">우아아아아아아아아아아아ㅏ아아앙ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ<br>
								ㅇ<br>ㅇ<br>ㅇ<br>ㅇ<br>ㅇ<br>ㅇ<br>ㅇ<br>ㅇ<br>
								난ㅇ러ㅣㄴ얼ㄴ이ㅏㅇㄹㄴ<br> ㅇㄴ란어링너ㅣㄹㅇ닐ㅇㄴㅇㄴㅇㄴㅇ<br> ㅇㅇㅇㅇㅇ<br>
								**********br 허용하기
							</td>
						</tr>
					</table>
				</div>
			<hr size="1" width="85%" noshade>
				<div id="tip">
					<table>
						<tr>
							<td id="t_icon"><img src="images/tip.png"></td>
							<td id="content">우아아아아아아아아아아아ㅏ아아앙<br> 난ㅇ러ㅣㄴ얼ㄴ이ㅏㅇㄹㄴ<br>
								ㅇㄴ란어링너ㅣㄹㅇ닐ㅇㄴㅇㄴㅇㄴㅇ<br> ㅇㅇㅇㅇㅇ<br> **********br 허용하기
							</td>
						</tr>
					</table>
				</div>
			<div id="photos">
				<img src="images/photo.PNG"> <img src="images/photo.PNG">
				<img src="images/photo.PNG"> <img src="images/photo.PNG"> <img src="images/photo.PNG">
			</div>
			<div id="like">
				<table>
					<tr>
						<td><img src="images/heart.png"></td>
						<td id="likes">좋아요 ( xx )</td>
						<td><img src="images/chat.png"></td>
						<td>댓글 ( xx )</td>
					</tr>
				</table>
			</div>
		</div>
		<hr id="re_hr">
		</div>
		<!-- 리뷰 1개 끝 -->
		<!-- 리뷰 1개 시작 -->
		<div class="review">
			<div id="writer">
				<table>
					<tr>
						<td rowspan="3" id="w_profile"><img src="images/user.png"></td>
						<td id="nick">닉네임</td>
					</tr>
					<tr>
						<td id="type">나이/피부타입</td>
					</tr>
				</table>
			</div>
			<!-- 별점, 작성일 시작 -->
			<div id="re_rate">
				<img src="images/star.png"> <img src="images/star.png"> 
				<img src="images/star.png"> <img src="images/star.png"> 
				<img src="images/star.png"> 
				<span id="reg_date"> 2018.08.20</span>
			</div>
			<!-- 별점, 작성일 끝 -->
			<!-- 리뷰1 시작 -->
			<div id="review">
				<div id="good">
					<table>
						<tr>
							<td id="g_icon"><img src="images/like.png" alt="좋았던 점"></td>
							<td id="content">우아아아아아아아아아아아ㅏ아아앙<br> 난ㅇ러ㅣㄴ얼ㄴ이ㅏㅇㄹㄴ<br>
							ㅇㄴ란어링너ㅣㄹㅇ닐ㅇㄴㅇㄴㅇㄴㅇ<br> ㅇㅇㅇㅇㅇ<br> **********br 허용하기
							</td>
						</tr>
					</table>
				</div>
			<hr size="1" width="85%" noshade>
				<div id="bad">
					<table>
						<tr>
							<td id="b_icon"><img src="images/bad.png"></td>
							<td id="content">우아아아아아아아아아아아ㅏ아아앙ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ<br>
								ㅇ<br>ㅇ<br>ㅇ<br>ㅇ<br>ㅇ<br>ㅇ<br>ㅇ<br>ㅇ<br>
								난ㅇ러ㅣㄴ얼ㄴ이ㅏㅇㄹㄴ<br> ㅇㄴ란어링너ㅣㄹㅇ닐ㅇㄴㅇㄴㅇㄴㅇ<br> ㅇㅇㅇㅇㅇ<br>
								**********br 허용하기
							</td>
						</tr>
					</table>
				</div>
			<hr size="1" width="85%" noshade>
				<div id="tip">
					<table>
						<tr>
							<td id="t_icon"><img src="images/tip.png"></td>
							<td id="content">우아아아아아아아아아아아ㅏ아아앙<br> 난ㅇ러ㅣㄴ얼ㄴ이ㅏㅇㄹㄴ<br>
								ㅇㄴ란어링너ㅣㄹㅇ닐ㅇㄴㅇㄴㅇㄴㅇ<br> ㅇㅇㅇㅇㅇ<br> **********br 허용하기
							</td>
						</tr>
					</table>
				</div>
			<div id="photos">
				<img src="images/photo.PNG"> <img src="images/photo.PNG">
				<img src="images/photo.PNG"> <img src="images/photo.PNG"> <img src="images/photo.PNG">
			</div>
			<div id="like">
				<table>
					<tr>
						<td><img src="images/heart.png"></td>
						<td id="likes">좋아요 ( xx )</td>
						<td><img src="images/chat.png"></td>
						<td>댓글 ( xx )</td>
					</tr>
				</table>
			</div>
		</div>
		<hr id="re_hr">
		</div>
		<!-- 리뷰 1개 끝 -->
		</div>
		<!-- 리뷰 전체 끝 -->
	</div>
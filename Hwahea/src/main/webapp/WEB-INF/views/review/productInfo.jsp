<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/productInfo.css">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/graph.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/review.js"></script>
	<div id="wrap">
	<div>
		<div class="r_title">
			<div class="r_title1">PRODUCT</div>
			<dl>
				<dt class="r_title2">제품 상세정보</dt>
				<dt class="r_title3">제품의 전체 성분을 확인해보세요!</dt>
			</dl>
		</div>
		<div class="margin-bottom-20">
			<hr class="hr-md">
		</div>
	</div>
	<!-- 제품 사진, 제품 정보 시작 -->
		<div id="info">
			<!-- 제품 사진 시작 -->
			<div id="propic">
				<div>
				<img src="${pageContext.request.contextPath}/assets/img/sample.jpg">
				</div>
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
						<span id="spec_rate"> 
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
					<input type="button" value="비교함 담기" data-target="#comModal" data-toggle="modal">
					<input type="button" value="쇼핑">
				</div>
				<!-- 비교함 모달 시작 -->
				<div class="modal fade" id="comModal" tabindex="-1">
						<div class="modal-dialog">
							<div class="modal-content" id="compare">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
									<h4 class="modal-title comtitle">						
										<img src="${pageContext.request.contextPath}/assets/img/review/searcher.png">
										<strong>제품 비교하기</strong> 
									</h4>
								</div>
								<div class="modal-body">
									<div id="cimg">
										<div id="com_img"><img src="${pageContext.request.contextPath}/assets/img/photo.PNG"><div>제품 이름</div></div>
										<div id="com_img"><img src="${pageContext.request.contextPath}/assets/img/photo.PNG"><div>제품 이름</div></div>
										<div id="com_img"><img src="${pageContext.request.contextPath}/assets/img/photo.PNG"><div>제품 이름</div></div>
									</div>
								</div>
								<div class="modal-footer"> 
									<a href="#" data-dismiss="modal" class="btn">취소</a> 
									<input id="sinbtn" type="button" value="비교하기">
								</div>
							</div>
						</div>
					</div>
				<!-- 비교함 모달 끝 -->
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
			<div>
				<span id="twenty"><img src="${pageContext.request.contextPath}/assets/img/review/20.PNG"> 20가지 주의성분 </span>
				<span id="how">3<span>개</span></span>
				<span id="more"><img id="ingreimg" src="${pageContext.request.contextPath}/assets/img/review/more.png"></span>
			</div> 
			<div>
				<span id="allergy"><img src="${pageContext.request.contextPath}/assets/img/review/allergyon.PNG"> 알러지 주의성분 </span>
				<span id="how">1<span>개</span></span>
				<span id="more"><img id="ingreimg2" src="${pageContext.request.contextPath}/assets/img/review/more.png"></span>
			</div> 
			<hr>
			<div id="subhead">
				피부타입별 성분
			</div>
			<div id="tchart">
				<span id="type_chart_div"></span>
				<span id="tmore"><img id="pibuimg" src="${pageContext.request.contextPath}/assets/img/review/more.png"></span> 
			</div>
			<hr>
			<div id="subhead">
				기능성 성분
			</div>
			<div id="option">
				<img src="${pageContext.request.contextPath}/assets/img/sun.png"> 자외선 차단
				<img src="${pageContext.request.contextPath}/assets/img/bulb.png"> 미백 개선
				<img src="${pageContext.request.contextPath}/assets/img/cancel.png"> 주름 개선
				<span id="dmore"><img id="giimg" src="${pageContext.request.contextPath}/assets/img/review/more.png"></span> 
			</div>
			<div id="detail_option">
				<span>
				* 기능성 성분 정보는 화장품의 기능성 여부를 판단하는 기준이 아니며, <br>  해당 성분의 포함 여부만 확인할 수 있습니다.
				</span>
			</div>
			<hr>
			<div id="caution">
				1) 성분 정보는 성분의 함량과 배합방식, 개개인의 피부와 환경에 따라 다르게 적용될 수 있습니다.<br>
				2) 구매 전에 제조판매업자가 표기한 전성분 표를 한 번 더 확인하시길 권장드립니다.<br>
				3) 화해 정보를 허가없이 상업적으로 활용할 경우, 법적 조치를 받을 수 있습니다.
			</div>
			<div id="edit">
				<div>
					<a href="${pageContext.request.contextPath}/review/editRequest.do"><input type="button" value="정보 수정 요청하기"></a>
				</div>
			</div>
		</div>
		<!-- 제품 성분 끝 -->
		<hr>
		<!-- 리뷰 통계 시작 -->
		<div id="review_stat">
			<div id="head"><img src="${pageContext.request.contextPath}/assets/img/review.png">리뷰</div>
			<div id="all_rate">
				<div id="score">3.88</div> 
					<div id="rate">
						<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png"> 
						<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png"> 
						<img src="${pageContext.request.contextPath}/assets/img/star.png">
					</div>  
			</div>
			<div id="review_chart"></div>
			<div id="write">
				<div>
					<a href="${pageContext.request.contextPath}/review/writeReview.do"><input type="button" value="리뷰 쓰기"></a>
					<input type="button" value="모든 리뷰 보기">
				</div>
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
			<hr id="mid_hr">
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
			<hr id="mid_hr"> 
				<div id="tip">
					<table>
						<tr>
							<td id="t_icon"><img src="${pageContext.request.contextPath}/assets/img/tip.png"></td>
							<td id="content">우아아아아아아아아아아아ㅏ아아앙<br> 난ㅇ러ㅣㄴ얼ㄴ이ㅏㅇㄹㄴ<br>
								ㅇㄴ란어링너ㅣㄹㅇ닐ㅇㄴㅇㄴㅇㄴㅇ<br> ㅇㅇㅇㅇㅇ<br> **********br 허용하기
							</td>
						</tr>
					</table>
				</div>
			<div id="photos">
				<img src="${pageContext.request.contextPath}/assets/img/photo.PNG"> <img src="${pageContext.request.contextPath}/assets/img/photo.PNG">
				<img src="${pageContext.request.contextPath}/assets/img/photo.PNG"> <img src="${pageContext.request.contextPath}/assets/img/photo.PNG"> 
				<img src="${pageContext.request.contextPath}/assets/img/photo.PNG">
			</div>
			<div id="like">   
				<!-- <input type="button" value="좋아요">
				<input type="button" value="댓글 달기" data-target="#modal01" data-toggle="modal">  -->
				<ul>
					<li class="like_like" data-num="1"><img src="${pageContext.request.contextPath}/assets/img/plus/heart2.png" class="ll"> 좋아요</li>
					<li id="like_re" data-target="#modal01" data-toggle="modal"><img src="${pageContext.request.contextPath}/assets/img/plus/comments.png"> 댓글달기</li>
				</ul>
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
			<!-- 리뷰1 시작 -->
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
			<hr id="mid_hr">
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
			<hr id="mid_hr"> 
				<div id="tip">
					<table>
						<tr>
							<td id="t_icon"><img src="${pageContext.request.contextPath}/assets/img/tip.png"></td>
							<td id="content">우아아아아아아아아아아아ㅏ아아앙<br> 난ㅇ러ㅣㄴ얼ㄴ이ㅏㅇㄹㄴ<br>
								ㅇㄴ란어링너ㅣㄹㅇ닐ㅇㄴㅇㄴㅇㄴㅇ<br> ㅇㅇㅇㅇㅇ<br> **********br 허용하기
							</td>
						</tr>
					</table>
				</div>
			<div id="photos">
				<img src="${pageContext.request.contextPath}/assets/img/photo.PNG"> <img src="${pageContext.request.contextPath}/assets/img/photo.PNG">
				<img src="${pageContext.request.contextPath}/assets/img/photo.PNG"> <img src="${pageContext.request.contextPath}/assets/img/photo.PNG"> 
				<img src="${pageContext.request.contextPath}/assets/img/photo.PNG">
			</div>
			<div id="like">    
				<!-- <input type="button" value="좋아요">
				<input type="button" value="댓글 달기">  -->
				<ul>
					<li class="like_like" data-num="1"><img src="${pageContext.request.contextPath}/assets/img/plus/heart2.png" class="ll"> 좋아요</li>
					<li id="like_re"><img src="${pageContext.request.contextPath}/assets/img/plus/comments.png">댓글달기</li>
				</ul>
			</div>
		</div>
		</div>
		<!-- 리뷰 1개 끝 -->
		</div>
		<!-- 리뷰 전체 끝 -->
	</div>
	<!-- 본문 끝 -->
	<!-- 댓글 모달 시작 -->
	<div class="row">
	<div class="modal" id="modal01" tabindex="-1">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<img id="plusLike" src="${pageContext.request.contextPath}/assets/img/plus/modalLeft.png" data-dismiss="modal"> 
					<span id="modalCategory"> <img src="${pageContext.request.contextPath}/assets/img/review/review.png">리뷰 상세보기 </span>
					<button class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body pmodal_c" style="text-align: center;">
					<!-- 제품 사진 -->
					<img class="plusThumbnail3" src="${pageContext.request.contextPath}/assets/img/sample.jpg">
					<div class="brand">메이크업 포에버(MAKEUP FOREVER)</div>
					<div class="pmodal_product">HD 프레스드 파우더</div>
					<hr>
					<!-- 작성자 정보 -->
					<div class="writer">
						<table>
							<tr>
								<td rowspan="3" id="w_profile"><img src="${pageContext.request.contextPath}/assets/img/user.png"></td>
								<td id="nick">닉네임</td>
							</tr> 
							<tr>
								<td id="type">나이/피부타입</td>
							</tr>
							<tr>
								<td id="recnt">리뷰 xx개</td>
								<td id="bookmark"><img src="${pageContext.request.contextPath}/assets/img/user_like.png"></td>
							</tr> 
						</table>
					</div>
					<!-- 별점, 작성일 -->
					<div id="r_rate">
						<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png">
						<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png">
						<img src="${pageContext.request.contextPath}/assets/img/star.png"> 
						<span class="reg_date"> 2018.08.20</span>
					</div>
					<div class="margin-bottom-35">
						<hr class="hr-md">
					</div>
					<!-- 리뷰 시작 -->
					<div id="review">
						<div id="good">
							<table>
								<tr>
									<td id="g_icon"><img src="${pageContext.request.contextPath}/assets/img/like.png"></td>
									<td id="content">우아아아아아아아아아아아ㅏ아아앙<br> 난ㅇ러ㅣㄴ얼ㄴ이ㅏㅇㄹㄴ<br>
										ㅇㄴ란어링너ㅣㄹㅇ닐ㅇㄴㅇㄴㅇㄴㅇ<br> ㅇㅇㅇㅇㅇ<br> **********br 허용하기
									</td>
								</tr>
							</table>
						</div>
						<hr size="1" width="50%" noshade>
						<div id="bad">
							<table>
								<tr>
									<td id="b_icon"><img src="${pageContext.request.contextPath}/assets/img/bad.png"></td>
									<td id="content">우아아아아아아아아아아아ㅏ아아앙ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ<br>
										ㅇ<br>ㅇ<br>ㅇ<br>ㅇ<br>ㅇ<br>ㅇ<br>ㅇ<br>ㅇ<br>
										난ㅇ러ㅣㄴ얼ㄴ이ㅏㅇㄹㄴ<br> ㅇㄴ란어링너ㅣㄹㅇ닐ㅇㄴㅇㄴㅇㄴㅇ<br> ㅇㅇㅇㅇㅇ<br>
										**********br 허용하기
									</td>
								</tr>
							</table>
						</div>
						<hr size="1" width="50%" noshade>
						<div id="tip">
							<table>
								<tr>
									<td id="t_icon"><img src="${pageContext.request.contextPath}/assets/img/tip.png"></td>
									<td id="content">우아아아아아아아아아아아ㅏ아아앙<br> 난ㅇ러ㅣㄴ얼ㄴ이ㅏㅇㄹㄴ<br>
										ㅇㄴ란어링너ㅣㄹㅇ닐ㅇㄴㅇㄴㅇㄴㅇ<br> ㅇㅇㅇㅇㅇ<br> **********br 허용하기
									</td>
								</tr>
							</table>
						</div>
						<div id="photos">
							<img src="${pageContext.request.contextPath}/assets/img/photo.PNG"> <img src="${pageContext.request.contextPath}/assets/img/photo.PNG">
							<img src="${pageContext.request.contextPath}/assets/img/photo.PNG"> <img src="${pageContext.request.contextPath}/assets/img/photo.PNG">
						</div>
					</div>
					<div class="pmodal_ud">
						<input type="button" value="수정"><input type="button" value="삭제">
					</div>
					<div class="pmodal_lrs">
						<ul>
							<li class="pmodal_like"><img src="${pageContext.request.contextPath}/assets/img/plus/heart2.png" id="pmodal_l"> 좋아요</li>
							<li class="pmodal_re"><img src="${pageContext.request.contextPath}/assets/img/plus/comments.png"> 댓글달기</li>
							<li class="pmodal_re" data-target="#myModal" data-toggle="modal"><img src="${pageContext.request.contextPath}/assets/img/review/alarm.png"> 신고하기</li>
						</ul>
					</div>
					<!-- 신고 모달 시작 -->
					<div class="modal fade" id="myModal" tabindex="-1">
						<div class="modal-dialog">
							<div class="modal-content" id="singo">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
									<h4 class="modal-title"><strong>리뷰 신고하기</strong> </h4>
								</div>
								<div class="modal-body">
									<div id="momo">
									<div><input type="radio" name="radio"><label>광고, 홍보 / 거래 시도</label></div>
									<div><input type="radio" name="radio"><label>과도한 오타, 반복적 표현 사용</label></div>
									<div><input type="radio" name="radio"><label>욕설, 음란어 사용</label></div>
									<div><input type="radio" name="radio"><label>제품 미사용 / 리뷰 내용과 다른 제품 선택</label></div>
									<div><input type="radio" name="radio"><label>리뷰 내용과 무관한 사진 첨부</label></div>
									<div><input type="radio" name="radio"><label>개인 정보 노출</label></div>
									<div><input type="radio" name="radio"><label>명예훼손 / 저작권 침해</label></div>
									<div><input type="radio" name="radio"><label>기타 (에티켓 위반 등)</label></div>
									</div>
								</div>
								<div class="modal-footer"> 
									<a href="#" data-dismiss="modal" class="btn">취소</a> 
									<input id="sinbtn" type="button" value="신고하기">
								</div>
							</div>
						</div>
					</div>
					<!-- 신고 모달 끝 -->
					<!-- 화해플러스 모달 댓글 시작-->
					<div class="pmodal_reply">
						<div class="pmodal_wpro">
							<img src="${pageContext.request.contextPath}/assets/img/plus/profile.png"><br>내 아이디
						</div>
						<div class="pmodal_rform">
							<form>
								<%-- <input type="hidden" name="num" value="${board.num}" id="num">
								<input type="hidden" name="id" value="${user_id}" id="user_id"> --%>
								<textarea id="pmodal_rtext" cols="70" rows="4" placeholder="내용을 입력해 주세요."></textarea>
								<input type="submit" value="댓글달기">
							</form>
							<div class="pmodal_rcount"><span class="letter-count">0 / 300</span></div>
						</div>
						<div class="pmodal_reback"></div> <!-- 댓글 출력하는 div -->
						<div class="paging-button" style="display: none;">
							<input type="button" value="다음글 보기">
						</div>
						<div id="loading" style="display: none;">
							<img src="${pageContext.request.contextPath}/assets/img/review/ajax-loader.gif">
						</div>
						<%-- <div class="pmodal_reback">
							<div class="pmodal_rere">
								<div class="pmodal_rpro">
									<img src="${pageContext.request.contextPath}/assets/img/plus/profile.png"> 
									<span class="pmodal_wrere">blue</span>
									<span class="plusGrade"><input type="button" value="VIP"></span>
									<span class="pmodal_drere">2018-08-28</span>
								</div>
								<div class="pmodal_brere">
									<div class="replyview">
										<div class="pmodal_trere">리뷰 이런 식으로 쓰지 마십쇼.</div>
										<a class="pmodal_same" id="rere_write">댓글달기</a>
										<input type="button" value="수정" class="modify-btn">
										<input type="button" value="삭제">
									</div>
								</div>
								<div class="margin-bottom-20"><hr class="hr-md"> </div>
							</div>
						</div> --%>
						<%-- <div class="pmodal_reback">
							<div class="pmodal_rere">
								<div class="pmodal_rpro">
									<img src="${pageContext.request.contextPath}/assets/img/plus/profile.png"> 
									<span class="pmodal_wrere">blue</span>
									<span class="plusGrade"><input type="button" value="VIP"></span>
									<span class="pmodal_drere">1시간 전</span>
								</div>
								<div class="pmodal_brere">
									<div class="replyview">
										<div class="pmodal_trere">두번째 댓그을흐르르를를ㄹ를ㄹ를</div>
										<a class="pmodal_same" id="rere_write">댓글달기</a>
										<input type="button" value="수정" class="modify-btn">
										<input type="button" value="삭제">
									</div>
								</div>
								<div class="margin-bottom-20"><hr class="hr-md"> </div>
							</div>
						</div> --%>
						<!-- 대댓글 -->
						<div class="prere_back">
							<div class="pmodal_rere">
								<div class="pmodal_rpro">
									<span class="prere_depth">┗</span>
									<img src="${pageContext.request.contextPath}/assets/img/plus/profile.png"> 
									<span class="pmodal_wrere">white</span>
									<span class="prere_grade"><input type="button" value="Family"></span>
									<span class="prere_time">1시간 전</span>
								</div>
								<div class="pmodal_brere">
									<div class="replyview">
										<div class="pmodal_trere dadat">대댓글~~~~~~~~~~~~1</div>
										<a class="pmodal_same" id="rere_write">댓글달기</a>
										<input type="button" value="수정" class="modify-btn">
										<input type="button" value="삭제">
									</div>
								</div>
								<div class="margin-bottom-20"><hr class="hr-md"> </div>
							</div>
						</div>
						<div class="prere_back">
							<div class="pmodal_rere">
								<div class="pmodal_rpro">
									<span class="prere_depth">┗</span>
									<img src="${pageContext.request.contextPath}/assets/img/plus/profile.png"> 
									<span class="pmodal_wrere">red</span>
									<span class="prere_grade2"><input type="button" value="Welcome"></span>
									<span class="prere_time">1시간 전</span>
								</div>
								<div class="pmodal_brere">
									<div class="replyview">
										<div class="pmodal_trere dadat">대댓글~~~2222</div>
										<a class="pmodal_same" id="rere_write">댓글달기</a>
										<input type="button" value="수정" class="modify-btn">
										<input type="button" value="삭제">
									</div>
								</div>
								<div class="margin-bottom-20"><hr class="hr-md"> </div>
							</div>
						</div>
					</div>
					<!-- 화해플러스 모달 댓글 끝-->
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 댓글 모달 끝 -->
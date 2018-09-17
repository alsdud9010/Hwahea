<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/productInfo.css">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/graph.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/review.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/review.reply.js"></script>
<!-- <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script> -->
<script src="${pageContext.request.contextPath}/assets/js/rating.js"></script>
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
					<a href="${pageContext.request.contextPath}/review/writeReview.do"><input type="button" value="리뷰 작성하기"></a>
					<!-- <input type="button" value="모든 리뷰 보기"> -->
				</div>
			</div>
		</div>
		<!-- 리뷰 통계 끝 -->
		<!-- 리뷰 전체 시작 -->
		<div id="review_list">
		<c:if test="${count == 0 }">
			<div class="review">등록된 게시물이 없습니다.</div>
		</c:if>
		<c:if test="${count>0 }">
		<div class="review">
		<c:forEach var="review" items="${list }">
		<c:forEach var="member" items="${member }">
			<div id="writer">
				<table>
					<tr>
						<td rowspan="3" id="w_profile"><img src="${pageContext.request.contextPath}/assets/img/user.png"></td>
						<td id="nick">${member.m_id }</td>
					</tr>
					<tr>
						<td id="type">${member.m_age } / 
						<c:if test="${member.m_skintype==0 }">건성</c:if>
						<c:if test="${member.m_skintype==1 }">중성</c:if>
						<c:if test="${member.m_skintype==2 }">지성</c:if>
						<c:if test="${member.m_skintype==3 }">복합성</c:if>
						<c:if test="${member.m_atopy==1 }">/ 아토피</c:if>
						<c:if test="${member.m_pimple==1 }">/ 여드름</c:if>
						<c:if test="${member.m_susceptilbility==1 }">/ 민감성</c:if>
						</td>
					</tr>
				</table>
			</div>
			<!-- 별점, 작성일 시작 -->
			<div id="re_rate">
				<c:if test="${review.re_rate ==1 }">
					<img src="${pageContext.request.contextPath}/assets/img/star.png">
				</c:if>
				<c:if test="${review.re_rate ==2 }">
					<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png">
				</c:if>
				<c:if test="${review.re_rate ==3 }">
					<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png"> 
					<img src="${pageContext.request.contextPath}/assets/img/star.png">
				</c:if>
				<c:if test="${review.re_rate ==4 }">
					<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png"> 
					<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png"> 
				</c:if>
				<c:if test="${review.re_rate ==5 }">
					<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png">
					<img src="${pageContext.request.contextPath}/assets/img/star.png"> <img src="${pageContext.request.contextPath}/assets/img/star.png"> 
					<img src="${pageContext.request.contextPath}/assets/img/star.png">
				</c:if>
				<span id="reg_date"> ${review.re_regdate }</span>
			</div>
			<!-- 별점, 작성일 끝 -->
			<div id="review">
				<div id="good">
					<table>
						<tr>
							<td id="g_icon"><img src="${pageContext.request.contextPath}/assets/img/like.png" alt="좋았던 점"></td>
							<td id="content">${review.re_good }</td>
						</tr>
					</table>
				</div>
			<hr id="mid_hr">
				<div id="bad">
					<table>
						<tr>
							<td id="b_icon"><img src="${pageContext.request.contextPath}/assets/img/bad.png"></td>
							<td id="content">${review.re_bad }</td>
						</tr>
					</table>
				</div>
			<hr id="mid_hr"> 
			<c:if test="${empty review.re_tip}">
			</c:if>
			<c:if test="${!empty review.re_tip}">
				<div id="tip">
					<table>
						<tr>
							<td id="t_icon"><img src="${pageContext.request.contextPath}/assets/img/tip.png"></td>
							<td id="content">${review.re_tip }</td>
						</tr>
					</table>
				</div>
				<hr id="mid_hr"> 
			</c:if>
			<c:if test="${empty review.re_filename1 && empty review.re_filename2 && empty review.re_filename3}">
			</c:if>
			<c:if test="${!empty review.re_filename1}">
				<span id="photos">
					<img src="imageView.do?re_num=${review.re_num }&cnt=1" style="max-width: 500px">
				</span>
			</c:if>
			<c:if test="${!empty review.re_filename2}">
				<span id="photos">
					<img src="imageView.do?re_num=${review.re_num }&cnt=2" style="max-width: 500px">
				</span>
			</c:if>
			<c:if test="${!empty review.re_filename3}">
				<span id="photos">
					<img src="imageView.do?re_num=${review.re_num }&cnt=3" style="max-width: 500px">
				</span>
			</c:if>
			<div id="like">    
				<ul>
					<li class="like_like" data-num="1"><img src="${pageContext.request.contextPath}/assets/img/plus/heart2.png" class="ll"> 좋아요</li>
					<li class="like_re" data-num=${review.re_num } data-target="#modal01" data-toggle="modal"><img src="${pageContext.request.contextPath}/assets/img/plus/comments.png">댓글달기</li>
				</ul>
			</div>
		</div>
		</c:forEach><!-- member  -->
		</c:forEach>
		<hr>
		</div><!-- /review -->
		</c:if>
		<!-- 리뷰 1개 끝 -->
		</div>
		<!-- 리뷰 전체 끝 -->
	</div>
	<!-- 본문 끝 -->
	<!-- 댓글 모달 시작 -->
	<div class="row">
	<div class="modal" id="modal01" tabindex="-1">
		<input type="hidden" name="id" value="${user_id}" id="user_id">
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
					<div id="review_append"></div><!-- 리뷰 1개를 붙일 곳 -->
					<!-- 신고 모달 시작 -->
					<div class="modal fade" id="myModal" tabindex="-1">
						<div class="modal-dialog">
							<div class="modal-content" id="singo">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
									<h4 class="modal-title"><strong>리뷰 신고하기</strong> </h4>
								</div>
								<form>
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
									<input id="sinbtn" type="submit" value="신고하기">
								</div>
								</form>
							</div>
						</div>
					</div>
					<!-- 신고 모달 끝 -->
					<!-- 화해플러스 모달 댓글 시작-->
					<div class="pmodal_reply">
						<div class="pmodal_wpro">
							<img src="${pageContext.request.contextPath}/assets/img/plus/profile.png"><br>내 아이디
						</div>
						<div id="reply_append"></div>
						<!-- 댓글 출력 시작 -->
						<div class="pmodal_reback"></div> <!-- 댓글 출력하는 div -->
						<div class="paging-button" style="display: none;">
							<input type="button" value="다음글 보기">
						</div>
						<div id="loading" style="display: none;">
							<img src="${pageContext.request.contextPath}/assets/img/review/ajax-loader.gif">
						</div>
						<!-- 댓글 출력 끝 -->
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
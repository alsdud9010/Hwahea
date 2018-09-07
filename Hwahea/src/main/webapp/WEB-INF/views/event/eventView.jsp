<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/event.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/event.js"></script>
<!--=== Content Part ===-->
<div class="container content">
	<div class="row magazine-page">
		<div class="col-md-12">
			<!-- 이벤트 타이틀 시작-->
			<div class="magazine-news">
				<div class="r_title">
					<div class="r_title1">EVENT</div>
					<dl>
						<dt class="r_title2">화해 이벤트</dt>
						<dt class="r_title3">차원이 다른 꿀혜택! 화해 이벤트</dt>
					</dl>
				</div>
				<div class="margin-bottom-20">
					<hr class="hr-md">
				</div>
			</div>
			<!-- 이벤트 타이틀 끝 -->
			<!-- 이벤트 상세페이지 -->
			<div class="col-md-12">
			<!-- 이벤트 타이틀 시작 -->
			<div class="event_tit" >
					<span class="event_tit1"><b>화해 쇼핑</b></span>
					<span class="event_tit2">첫 구매 포인트 지급 이벤트</span>
					<span class="event_tit3">18.08.27 ~ </span>
			</div>
			<hr class="hr-md">
			<!-- 이벤트 타이틀 끝 -->
			<!-- 이벤트 컨텐츠 시작 -->
			<div class="event_content2">
				<img src="${pageContext.request.contextPath}/assets/img/event/event_content2.jpg">
			</div>
			<!-- 이벤트 컨텐츠 끝 -->
			<!-- 이벤트 유의사항 시작 -->
			<div class="event_notice">
			<p class="enotice_tit">
				<img src="${pageContext.request.contextPath}/assets/img/event/event_exclamation.png"><br>쿠폰 유의사항</p>
			<ul >
				<li>쿠폰은 지급받은 날로부터 7일 이내에 사용하지 않으면 자동 소멸됩니다.(소멸 후 복구 불가)</li>
				<li>배송비를 제외한 실제 상품결제 금액이 1만원이 넘는 경우에 한해, 결제 금액의 20%까지만 사용 가능합니다.
					<br><span style="font-size:12px">(5,000포인트를 모두 사용하려면 최종 상품 금액이 2만 5천원을 넘어야합니다. *배송비 별도)</span></li>
				<li>해당 이벤트는 당사 사정에 따라 별도의 고지 없이 변경 혹은 종료될 수 있습니다.</li>
				<li>주문한 상품의 부분 취소로 최소 구매금액 조건 미달 시, 포인트 할인 금액 차감 후 환불됩니다.</li>
				<li>사용기한이 만료된 포인트는 판매자 귀책사유로 구매가 취소되는 경우에만 환급해드립니다. (구매자 변심시 포인트 환급 불가)</li>
			</ul>
			</div>
			<div class="margin-bottom-20 padding-top">
					<hr class="hr-lg">
			</div>
			<!-- 이벤트 유의사항 끝 -->
			<!-- 이벤트 버튼 시작 -->
			<div class="event_apply">
				<button type="button" class="e_apply">쿠폰받기</button>
				<button type="button" onclick="location.href='${pageContext.request.contextPath}/shop/shopMain.do'">쇼핑하러가기</button>
			</div>
			<!-- 이벤트 목록으로 -->
			<div class="elist_btn">
				<button type="button" onclick="location.href='${pageContext.request.contextPath}/event/eventMain.do'">목록</button>
			</div >
			<!-- 이벤트 버튼 끝 -->
			<!-- 이벤트 댓글 시작-->
			<h3 class="event_reply_tit">댓글</h3>
			<div class="event_reply_box">
				<textarea class="" id="inpTxBox" placeholder="내용을 입력해주세요. (최대 100자)" data-ref-length="100"></textarea>
				<input type="submit" value="댓글달기" />
			</div>
			<div class="reply_sub_title" >
				<p>전체(3)</p>
				<button  type="button" class="more">내 댓글 보기</button>
			</div>
			<ul class="event_reply_list">
				<li>
					<span class="ereply_no">1</span>
					<p class="ereply_txt">잘 쓰겠습니다.</p>
					<span class="ereply_user">dragon</span>
					<span class="ereply_date">2018-09-03</span>
				</li>
				<li>
					<span class="ereply_no">2</span>
					<p class="ereply_txt">감사합니다.</p>
					<span class="ereply_user">blue</span>
					<span class="ereply_date">2018-09-02</span>
				</li>
				<li>
					<span class="ereply_no">3</span>
					<p class="ereply_txt">ㄳㄳ</p>
					<span class="ereply_user">white</span>
					<span class="ereply_date">2018-08-31</span>
				</li>
			</ul>
			
			<!-- <div class="reply_sub_title">
				<p>내 댓글</p>
				<button  type="button" class="more">전체 보기</button>
			</div> -->
			<!-- <ul class="event_reply_list" id="commentList" style="display:none;"></ul> -->
			<!-- <ul class="event_reply_list" id="myCommentList" style="display:none;"></ul> -->
			
			<!-- 이벤트 댓글 끝 -->

			</div>
			
			</div>
		</div>
	</div><!--/container-->
<!-- End Content Part -->
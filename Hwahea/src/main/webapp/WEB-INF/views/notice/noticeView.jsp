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
						<li class="notice_on" onclick="location.href='${pageContext.request.contextPath}/notice/noticeList.do'">공지사항</li>
						<li onclick="location.href='${pageContext.request.contextPath}/notice/frequent_question.do'">FAQ</li>
						<li onclick="location.href='${pageContext.request.contextPath}/notice/my_question.do'">1:1문의</li>
					</ul>
				</div>
			</div>
			<!-- 공지사항 상단 메뉴바 끝 -->
			
			<!-- 공지사항 본문 시작 -->
			<div class="col-md-12" style="margin-top:17px;">
			<table class="notice_view">
				<tr>
					<td>
						<strong class="NK01">일반</strong>
						<span class="nv_tit">결제서비스 시스템 작업 안내(9/11)</span>
					</td>
					<td class="nv_date">
						2018.09.06
					</td>
				</tr>
				<tr>
				<td class="nv_txt" colspan="2">
					<div>
						안녕하세요, 화해입니다.<br>
						항상 화해의 서비스를 이용해주시는 고객님들께 진심으로 감사 드립니다.<br>
						<br>
						결제대행사의 시스템 작업으로 인하여 아래 시간에 결제/취소가 원활하지 않을 수 있으니 참고 부탁드립니다.<br>
						<br>
						<br>
						<b>1. 작업 일시</b><br>
						2018.09.11 (화) 03:00 ~ 06:00<br>
						<br>
						<b>2. 서비스 이용 영향</b><br>
						해당 시간동안 결제 또는 취소 시 1분 이내의 순단이 있을 수 있습니다.<br>
						<br>
						이용이 원활하지 않으실 경우 작업 시간 이후에 이용 부탁드립니다.<br>
						<br>
						감사합니다.<br>
					</div>
				</td>
				</tr>
			</table>
			<!-- 다음글, 이전글 보기 시작-->
			<ul class="notice_pn">
				<li>
				<button>다음글</button>
				<strong class="NK03">이벤트</strong>
				<a href="#">&lt;8월 출석체크 이벤트&gt; 화해 포인트 당첨자 발표</a>
				</li>
				<li>
				<button>이전글</button>
				<strong class="NK03">이벤트</strong>
				<a href="#">뮤지컬&lt;아이언 마스크&gt; 당첨자 발표</a>
				</li>
			</ul>
			<!-- 다음글, 이전글 보기 끝 -->
			<!-- 목록보기 버튼 -->
			<div class="nv_btn">
				<input type="button" value="목록보기" onclick="location.href='${pageContext.request.contextPath}/notice/noticeList.do'">
			</div>
			</div>
			<!-- 공지사항 본문 끝 -->
		</div>
	</div>
	<!--/white-->
</div>
<!--=== End Content Part ===-->
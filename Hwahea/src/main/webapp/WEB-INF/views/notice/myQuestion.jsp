<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/notice.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/notice.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/notice.reply.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$(".accordion_banner .accordion_sub").hide();
	$(".accordion_banner .accordion_title").click(function() {
        if($(this).next("div").is(":visible")){
        	$(this).next("div").slideUp("fast");
        } else {
            $(".accordion_banner .accordion_sub").slideUp("fast");
            $(this).next("div").slideToggle("fast");
        }
    });
});
</script>
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
					<ul class="notice_menu col-md-12 margin-bottom-20">
						<li onclick="location.href='${pageContext.request.contextPath}/notice/noticeList.do'">공지사항</li>
						<li onclick="location.href='${pageContext.request.contextPath}/notice/frequent_question.do'">FAQ</li>
						<li class="notice_on" onclick="location.href='${pageContext.request.contextPath}/notice/my_question.do'">1:1문의</li>
					</ul>
				</div>
			</div>
			<!-- 공지사항 상단 메뉴바 끝 -->
			<!-- 1:1문의 기간조회 시작 -->
			<fieldset class="myq-period">
				<legend></legend>
				<ul class="myq-select">
					<li class="myq-on">
						<button data-month="-1">1개월</button>
					</li>
					<li>
						<button data-month="-3">3개월</button>
					</li>
					<li>
						<button data-month="-6">6개월</button>
					</li>
					<li>
						<button data-month="-12">12개월</button>
					</li>
				</ul>
				<div class="myq-range">
					<select id="myq-year" title="년도를 선택하세요">
						<option value="2014">2014</option>
						<option value="2015">2015</option>
						<option value="2016">2016</option>
						<option value="2017">2017</option>
						<option value="2018" selected="selected">2018</option>
						<option value="2019">2019</option>
						<option value="2020">2020</option>
					</select>
					<label for="myq-year">년</label>
					<select id="myq-month" title="달월을 선택하세요">
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>
					<label for="myq-month">월</label>
					<select id="myq-day" title="날일을 선택하세요">
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
						<option value="24">24</option>
						<option value="25">25</option>
						<option value="26">26</option>
						<option value="27">27</option>
						<option value="28">28</option>
						<option value="29">29</option>
						<option value="30">30</option>
						<option value="31">31</option>
					</select>
					<label for="myq-day">일</label>
					
					<span>~</span>
					
					<select id="myq-year" title="년도를 선택하세요">
						<option value="2014">2014</option>
						<option value="2015">2015</option>
						<option value="2016">2016</option>
						<option value="2017">2017</option>
						<option value="2018" selected="selected">2018</option>
						<option value="2019">2019</option>
						<option value="2020">2020</option>
					</select>
					<label for="myq-year">년</label>
					<select id="myq-month" title="달월을 선택하세요">
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>
					<label for="myq-month">월</label>
					<select id="myq-day" title="날일을 선택하세요">
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
						<option value="24">24</option>
						<option value="25">25</option>
						<option value="26">26</option>
						<option value="27">27</option>
						<option value="28">28</option>
						<option value="29">29</option>
						<option value="30">30</option>
						<option value="31">31</option>
					</select>
					<label for="myq-day">일</label>
				</div>
				<button class="myq-lookup">조회</button>
			</fieldset>
			<div class="margin-bottom-10">
			</div>
			<!-- 1:1문의 기간조회 끝 -->
			
			<!-- 1:1문의 내용 시작-->
			<div class="myq-list">
				<div class="accordion_banner">
				<c:if test="${count < 0}">
					<ul>
						<li class="myq-nodata">등록하신 1:1 문의가 없습니다.</li>
					</ul> 
				</c:if>
				<c:if test="${count > 0}">
				<c:forEach var="one" items="${list}">
					<div class="accordion_title" data-num="${one.one_num}">
					<ul class="faq_list">
						<li>
							<span class="myq_arrow">
								<span class="myq_open"><img src="${pageContext.request.contextPath}/assets/img/shop/down-arrow.png"></span>
							</span>
							<span class="myq-date">
								${one.one_reg_date}
							</span>
							<span class="myq-status" style="margin: auto 12px;">
								<c:if test="${one.reone_cnt > 0}">
									<strong class="QS02">답변완료</strong>
								</c:if>
								<c:if test="${one.reone_cnt == 0}">
									<strong class="QS01">답변대기</strong>
								</c:if>
							</span>
							<span class="myq_tit">
								<span>
									${one.one_title}
								</span>
							</span>
						</li>
					</ul>
					</div>
					<div class="accordion_sub myq_txt">
						<ul style="margin-left: -40px;">
							<li class="myq-q">
								<span class="myq-qtit"><strong>문의</strong></span>
								${one.one_content}
							</li>
							<li class="one_reply">
							</li>
							<%-- <li class="myq-a">
								<span><strong>답변완료</strong></span>
								<p>
									반갑습니다. 고객님 <br>
									화해 온라인몰 1:1 담당자 홍길동 입니다.<br>
									<br>
									화해를 이용해 주셔서 감사드립니다.<br>
									<br>
									고객님께서 남겨주신 문의글은 미 완성 상태로<br>
									정확한 내용이 확인 되지 않습니다. <br>
									<br>
									다시한번, 본 공간을 통해 문의글을 남겨주시거나 <br>
									화해 온라인몰 고객센터(1234-5678/평일09~18시)로 <br>
									전화주시면 상담이 가능합니다. <br>
									<br>
									늘 화해와 함께 행복한 시간 되시기를 바랍니다. <br>
									감사합니다. <br>
								</p>
								<div class="myq-phr">
									문의에 대한 답변이 부족하거나 추가문의사항이 있으시면 새로운 문의사항으로 등록해주세요.
									<a href="${pageContext.request.contextPath}/notice/my_questionWrite.do" class="go-ask-myq">새로운 문의하기</a>
								</div> 
							</li>--%>
						</ul>
					</div>
				</c:forEach>
				</c:if>
				</div><!-- End of accordion_banner -->
			</div>
			<!-- 1:1문의 내용 끝 -->
			<div class="nv_btn">
					<input type="button" value="1:1문의하기" onclick="location.href='${pageContext.request.contextPath}/notice/my_questionWrite.do'">
			</div>
		</div>
	</div>
	<!--/white-->
</div>
<!--=== End Content Part ===-->
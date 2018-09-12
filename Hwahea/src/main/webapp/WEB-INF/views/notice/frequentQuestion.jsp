<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/notice.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/notice.js"></script>
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
					<ul class="notice_kind col-md-12 margin-bottom-20">
						<li onclick="location.href='${pageContext.request.contextPath}/notice/noticeList.do'">공지사항</li>
						<li class="notice_on" onclick="location.href='${pageContext.request.contextPath}/notice/frequent_question.do'">FAQ</li>
						<li onclick="location.href='${pageContext.request.contextPath}/notice/my_question.do'">1:1문의</li>
					</ul>
				</div>
			</div>
			<!-- 공지사항 상단 메뉴바 끝 -->
			<!-- FAQ 검색 시작 -->
			<div class="magazine-news">
				
			</div>
			<div class="margin-bottom-10">
				<form id="faq_form" name="faq_form">
				<div class="col-md-12">
					<fieldset class="faq_style">
						<legend>FAQ 검색</legend>
						<label for="faq_serach">FAQ 검색</label>
						<div class="faq_input">
							<input type="text" id="faq_search" name="faq_search" placeholder="질문을 검색하세요.">
							<input type="submit" value="검색">
						</div>
					</fieldset>
				</div>
				</form>
			</div>
			<!-- FAQ 검색 끝 -->
			<!-- FAQ 분류 아이콘 시작 -->
			<div class="faq_icon">
				<ul class="faq_iconList">
					<li class="faq_on"><button class="faq_icon1">TOP10</button></li>
					<li><button class="faq_icon2">회원/멤버십</button></li>
					<li><button class="faq_icon3">주문/결제</button></li>
					<li><button class="faq_icon4">배송</button></li>
					<li><button class="faq_icon5">교환/반품/환불</button></li>
					<li><button class="faq_icon6">이벤트</button></li>
					<li><button class="faq_icon7">성분사전</button></li>
				</ul>
			</div>
			<!-- FAQ 분류 아이콘 끝 -->
			
			<!-- FAQ 시작-->
			<div class="faq_detail">
				<div class="faq_inner">
					<div class="accordion_banner">
						<div class="accordion_title">
						<ul class="faq_list">
							<li>
								<span class="faq_arrow">
									<span class="faq_open"><img src="${pageContext.request.contextPath}/assets/img/shop/down-arrow.png"></span>
								</span>
								<span class="faq_q" style="text-align:center;">
									Q
								</span>
								<span class="faq_category">
									<span>
										TOP10	
									</span>
								</span>
								<span class="faq_tit">
									<span>
										증정품이 배송되지 않았어요.
									</span>
								</span>
							</li>
						</ul>
						</div>
						<div class="accordion_sub faq_txt">
							<div>
							증정품의 경우, 한정수량으로 진행됨에 따라 조기 소진 시 배송되지 않을 수 있습니다.<br>
							상품 주문 시 '결제하기' 버튼을 클릭하시면 수령하실 수 있는 증정품에 대한 안내가 팝업으로 노출되며,<br>
							해당 안내가 노출되는 경우 증정품 수령이 가능하지만, 노출되지 않는다면 증정품이 소진되어<br>
							배송이 어려운 경우입니다.<br>
							<br>
							주문 이후, 주문/배송 조회 화면에서 '주문상세보기' 버튼을 눌러 주문상세를 조회하시면<br>
							해당 화면에서도 수령하실 수 있는 증정품에 대한 내역을 확인 하실 수 있습니다.<br>
							<br>
							결제 시 팝업 노출도 되었고, 주문상세조회에서도 증정품 내역을 확인하실 수 있으나 증정품을<br>
							수령하지 못하신 경우라면 올리브영 온라인몰 고객센터(1522-0882)로 연락 주시면<br>
							신속하게 처리 도와 드리겠습니다.<br>
							</div>
						</div>
						<div class="accordion_title">
						<ul class="faq_list">
							<li>
								<span class="faq_arrow">
									<span class="faq_open"><img src="${pageContext.request.contextPath}/assets/img/shop/down-arrow.png"></span>
								</span>
								<span class="faq_q" style="text-align:center;">
									Q
								</span>
								<span class="faq_category">
									TOP10
								</span>
								<span class="faq_tit">
									이벤트에 당첨되었는데 후기는 어디서 작성하나요?
								</span>
							</li>
						</ul>
						</div>
						<div class="accordion_sub faq_txt">
							<div>
							뷰티테스터 당첨 확인 및 후기 작성은 마이페이지 內 마이활동 → 뷰티테스터 참여현황 에서 가능합니다.<br>
							뷰티테스터 참여현황으로 바로 이동 클릭<br>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- FAQ 끝 -->
			
			<div class="faq_none">
				찾으시는 질문이 없다면?
				<div class="nv_btn" style="marign-bottom:20px;">
					<input type="button" value="1:1문의하기" onclick="location.href='${pageContext.request.contextPath}/notice/my_question.do'">
				</div>
			</div>
			
		</div>
	</div>
	<!--/white-->
</div>
<!--=== End Content Part ===-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/event.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/event.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/event.reply.js"></script>
<!--=== Title Part ===-->
<div class="event-background">
	<div class="container content r_title">
       	<ul>
			<li>
				<p class="r_title1">EVENT</p>
			</li>
			<li><span class="r_title2">이벤트</span>
			<span class="r_title3">차원이 다른 꿀혜택! 화해 이벤트</span></li>
		</ul>
	</div>
</div>
<!--=== Content Part ===-->
<div class="container content ev-top">
	<div class="row magazine-page">
		<div class="col-md-12">
			<!-- 이벤트 상세페이지 -->
			<div class="col-md-12">
			<!-- 이벤트 타이틀 시작 -->
			<c:if test="${event.event_status == 0}">
				<!-- 일반 이벤트 타이틀 -->
				<div class="event_tit" >
						<span class="event_tit1"><b>화해 쇼핑</b></span>
						<span class="event_tit2">첫 구매 포인트 지급 이벤트</span>
						<span class="event_tit3">18.08.27 ~ </span>
				</div>
				<hr class="hr-md">
			</c:if>
			<c:if test="${event.event_status > 0}">
				<!-- 이벤트 상단 이미지 시작 -->
				<div class="event_top">
					<img src="${pageContext.request.contextPath}/assets/img/event/event_product.png">
					<p class="event_tname">
						<span><b>코스알엑스(COSRX)</b></span>
						${event.event_name}</p>
					<p class="event_tinfo">
						<span class="event_txt">모집인원 |</span>
						<span class="event_many">30명</span>
						<span class="event_txt">신청인원 |</span>
						<span class="event_many">501명</span>
					</p>
				</div>
				<!-- 이벤트 상단 이미지 끝 -->
				<!-- 이벤트 단계 시작 -->
				<ul class="event_step col-md-12 margin-bottom-15">
					<li <c:if test="${event.event_status==1}">class="event_on"</c:if>>
						<div>
							<span class="step_no">01</span>
							<span class="step_txt">모집기간</span>
							<div class="step_date">${event.event_start} ~ ${event.event_end}</div>
						</div>
					</li>
					<li <c:if test="${event.event_status==2}">class="event_on"</c:if>>
						<div>
							<span class="step_no">02</span>
							<span class="step_txt">당첨자발표
								<c:if test="${event.event_status==2}">
								<span class="step_who"><a href="${pageContext.request.contextPath}/notice/noticeView.do">당첨자 보기</a></span>
								</c:if>
							</span>
							<div class="step_date">${event.event_end}</div>
							<!-- <p class="step_under"></p> -->
						</div>
					</li>
					<li <c:if test="${event.event_status==3}">class="event_on"</c:if>>
						<div>
							<span class="step_no">03</span>
							<span class="step_txt">배송 및 후기작성</span>
							<div class="step_date">${event.event_end}~${event.event_end}</div>
						</div>
					</li>
				</ul><!-- 이벤트 단계 끝 -->
			</c:if>
			<!-- 이벤트 타이틀 끝 -->
			<!-- 이벤트 컨텐츠 시작 -->
			<div class="event_content2">
				<img src="${pageContext.request.contextPath}/assets/img/event/event_content2.jpg">
			</div>
			<!-- 이벤트 컨텐츠 끝 -->
			<!-- 이벤트 유의사항 시작 -->
			<div class="event_notice">
			<p class="enotice_tit">
				<img src="${pageContext.request.contextPath}/assets/img/event/event_exclamation.png"><br>
					<c:if test="${event.event_kind==0}">쿠폰 유의사항</c:if>
					<c:if test="${event.event_kind>0}">유의사항</c:if></p>
			<ul>
				<c:if test="${event.event_kind==0}">
					<li>쿠폰은 지급받은 날로부터 7일 이내에 사용하지 않으면 자동 소멸됩니다.(소멸 후 복구 불가)</li>
					<li>배송비를 제외한 실제 상품결제 금액이 1만원이 넘는 경우에 한해, 결제 금액의 20%까지만 사용 가능합니다.
						<br><span style="font-size:12px">(5,000포인트를 모두 사용하려면 최종 상품 금액이 2만 5천원을 넘어야합니다. *배송비 별도)</span></li>
					<li>해당 이벤트는 당사 사정에 따라 별도의 고지 없이 변경 혹은 종료될 수 있습니다.</li>
					<li>주문한 상품의 부분 취소로 최소 구매금액 조건 미달 시, 포인트 할인 금액 차감 후 환불됩니다.</li>
					<li>사용기한이 만료된 포인트는 판매자 귀책사유로 구매가 취소되는 경우에만 환급해드립니다. (구매자 변심시 포인트 환급 불가)</li>
				</c:if>
				<c:if test="${event.event_kind > 0}">
					<li>본 이벤트 당첨자 발표 및 배송 일정 등은 부득이한 사유로 변동될 수 있습니다.</li>
					<li>이벤트 신청 후에는 배송지 변경이 절대 불가합니다.</li>
					<li>당첨 물품은 신청시 등록하신 주소로 발송되며, 부정확한 정보 기입으로 생긴 배송 문제에 대해서는 재발송이 불가합니다.</li>
					<li>당첨자로 선정되었으나, 리뷰를 미작성하실 경우 향후 당첨자 선정 과정에서 불이익을 받을 수 있습니다.</li>
					<li>이벤트에 참여하는 경우, 위 유의사항에 대해 인지하고 동의하는 것으로 간주합니다.</li>
				</c:if>
			</ul>
			</div>
			<c:if test="${event.event_kind > 0 }">
				<div class="event_agree">
				<div class="event_inner">
					<div class="accordion_banner">
						<div class="accordion_title agree_tit">
						<table>
							<tr>
								<th>
									<div class="agree_tit1">
										<label for="chk_agree1">개인정보 수집 이용 동의</label>
										<span>(필수)</span>
										<input type="checkbox" id="chk_agree1">
										<span class="event_open"><img src="${pageContext.request.contextPath}/assets/img/event/event_open.png"></span>
									</div>
								</th>
								<th>
									<div class="agree_tit2">
										<label for="chk_agree2">개인정보 취급 위탁 동의</label>
										<span>(필수)</span>
										<input type="checkbox" id="chk_agree2">
										<span class="event_open"><img src="${pageContext.request.contextPath}/assets/img/event/event_open.png"></span>
									</div>
								</th>
							</tr>
						</table>
						</div>
						<div class="accordion_sub agree_txt">
							<ul>
								<li>- 수집항목 : 성명, 휴대폰번호, 주소</li>
								<li>- 수집 이용 및 목적 : 이벤트 응모, 추첨, 경품발송(배송)및 이벤트 운영</li>
								<li>- 보유 및 이용기간 : 이벤트 종료 후 3개월 이내 파기</li>
								<li>- 개인정보 수집이용에 동의하지 않을 수 있으나, 미동의 시 이벤트 참여가 불가합니다.</li>
							</ul>
							<ul>
								<li>- 개인정보 처리 위탁사 : (주)버드뷰 </li>
								<li>- 개인정보 위탁 항목 : 성명, 휴대폰번호, 주소 </li>
								<li>- 개인정보 처리 위탁 내용 : 이벤트 대행을 통한 개인정보 처리 및 경품 배송 </li>
								<li>- 개인정보 처리 위탁 기간 : 이벤트 경품 발송 후 3개월 이내 파기 </li>
								<li>- 개인정보 위탁 이용에 동의하지 않을 수 있으나, 미동의 시 이벤트 참여가 불가합니다. </li>
							</ul>
						</div>
					</div>
				</div>
				</div>
			</c:if>
			<div class="margin-bottom-20 padding-top">
					<hr class="hr-lg">
			</div>
			<!-- 이벤트 유의사항 끝 -->
			<!-- 이벤트 버튼 시작 -->
			<div class="event_apply">
				<c:if test="${event.event_kind==0}">
					<button type="button" class="e_apply">쿠폰받기</button>
					<button type="button" onclick="location.href='${pageContext.request.contextPath}/shop/shopMain.do'">쇼핑하러가기</button>
				</c:if>
				<c:if test="${event.event_kind > 0}">
					<button type="button" class="e_apply">내 정보 수정</button>
				</c:if>
			</div>
			<!-- 이벤트 목록으로 -->
			<div class="elist_btn">
				<button type="button" onclick="location.href='${pageContext.request.contextPath}/event/eventMain.do'">목록</button>
			</div >
			<!-- 이벤트 버튼 끝 -->
			<!-- 이벤트 댓글 시작-->
			<h3 class="event_reply_tit">
				<c:if test="${event.event_kind == 0 }">댓글달기</c:if>
				<c:if test="${event.event_kind > 0}">댓글 응모하기</c:if>
			</h3>
			<div class="event_reply_box">
				<form id="ere_form">
				<input type="hidden" value="${user_id}" id="m_id" name="m_id">
				<input type="hidden" value="${event.event_num}" id="event_num" name="event_num">
				<textarea class="event_rtext" id="ere_content" name="ere_content" placeholder="내용을 입력해주세요. (최대 100자)" data-ref-length="100"></textarea>
				<input type="submit" 
					<c:if test="${event.event_kind == 0 }">value="댓글달기"</c:if>
					<c:if test="${event.event_kind > 0}">value="응모하기"</c:if> />
				</form>
			</div>
			<div class="reply_sub_title" >
	            <p>전체(${event.ere_cnt})</p>
	            <button  type="button" class="more">내 댓글 보기</button>
	        </div>
	        <ul class="event_reply_list" id="ere_list">
	            
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
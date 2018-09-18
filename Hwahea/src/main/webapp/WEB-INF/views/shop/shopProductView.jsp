<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/shop.css">
<script src="${pageContext.request.contextPath}/assets/js/shop/shopProductView.js"></script>
<div class="container content">
<c:set var="product" value="${product}"/>
	<div class="col-md-12 shop-productView">
		<div class="shop-productView-category">
			<a href="${pageContext.request.contextPath}/shop/shopMain.do">쇼핑 홈 </a>> 
			<a href="${pageContext.request.contextPath}/shop/shopProduct.do"> 스킨케어 </a>> 
			<a href="#" onclick="history.go(0)"> 스킨/토너</a>
		</div>
		<form>
			<div class="col-md-10 shop-productView-explain">
				<!-- 제품 뷰 상단 시작 -->

				<div class="productView-contents-top">
					<div class="col-md-2 productView-img">
						<img
							src="shopProductImageView.do?p_num=${product.p_num}">
					</div>
					<div class="col-md-8 productView-intro">
						<div class="col-md-4 productView-item-top">
							<div class="productView-item-title-explain">
								<p class="productView-item-title-name">${product.p_name} ${product.p_capacity}ml</p>
								<p class="productView-item-title-brand">
									${product.brand_name}&nbsp;<a href="#"><span>브랜드 바로가기></span></a>
								</p>
							</div>
							<div class="productView-item-wish">
								<button class="wish">
									<img id="like"
										src="${pageContext.request.contextPath}/assets/img/shop/not_wish.png">
								</button>
							</div>
						</div>
						<div class="col-md-12 productView-item-middle">
							<div class="productView-item-etc">
								<div class="productView-item-seller">
									<p>판매자 : ${product.brand_name}</p>
								</div>
								<div class="productView-item-point">
									<p>
										화해포인트 : 최대 <span class="get-point">
										<fmt:formatNumber value="${product.p_price*0.1}" pattern="0"/>P</span> 적립 가능
									</p>
								</div>
								<div class="productView-item-ship">
									<p>
										배송비 : 2,500 원&nbsp;(50,000원 이상 무료)<span> 택배사 | CJ대한통운</span>
									</p>
								</div>
							</div>
							<div class="productView-item-price">
								<div class="productView-item-price-detail">
									<c:set var="discount" value="${((100-product.p_discount)/100)*product.p_price}"/>
									<span class="price-detail-sale">${product.p_discount}%</span> 
									<span class="price-detail-payment"><fmt:formatNumber value="${discount}" type="number"/>원</span>
									<span class="price-detail-original"><fmt:formatNumber value="${product.p_price}" type="number"/>원</span>
									<!-- hidden -->
									<input type="hidden" id="orderPrice" name="orderPrice" value="${discount}">
									<input type="hidden" id="orderProduct" name="orderProduct" value="${product.p_num}">
									<input type="hidden" id="user_id" value="${user_id}">
								</div>
							</div>
							<div class="productView-item-shop-buttons">
								<input type="number" class="item-quantity" id="quantity" name="quantity" min="1" value="1">
								<input class="shop-button item-buy" type="button" value="구매하기">
								<input class="shop-button item-cart" id="item-cart" type="button" value="장바구니 담기"> 
								<input class="shop-button item-review" type="button" value="리뷰 보러가기" onclick="#">
							</div>
						</div>
					</div>
				</div>
				<!-- 제품 뷰 상단 끝 -->
				<!-- 제품 뷰 중간 시작 -->
				<div class="productView-contents-middle">
					<div class="productView-middle-explain">
						<div class="col-md-8 productView-shop-originalItem">
							<img class="col-md-8"
								src="${pageContext.request.contextPath}/assets/img/shop/medals.png">
							<div class="col-md-8 shop-originalItem-title">
								<p class="col-md-4 shop-originalItem-main">
									믿고 구매할 수 있는 <span>화해쇼핑</span>
								</p>
								<p class="col-md-4 shop-originalItem-sub">
									화해쇼핑은 <span>100% 정품</span>만 취급합니다!
								</p>
							</div>
						</div>
						<div class="col-md-8 productView-shop-all-ingredient">
							<img class="col-md-8"
								src="${pageContext.request.contextPath}/assets/img/shop/all_ingredient.png">
							<div class="col-md-4 shop-all-ingredient-title">
								<a href="${pageContext.request.contextPath}/dictionary/dictionary.do"><p>
										전 성분 확인 하기 <span>></span>
									</p></a>
							</div>
						</div>
					</div>
					<div class="productView-middle-select">
						<div class="middle-select-tab">
							<ul>
								<li class="select-tab-intro tab-selected" data-target="intro">상품 소개</li>
								<li class="select-tab-ask"  data-target="ask">상품 문의</li>
								<li class="select-tab-brand" data-target="brand">상품 정보</li>
							</ul>
						</div>
					</div>
					<div class="productView-middle-declare scorll-target" 
					id="select-tab-intro" data-selected="intro">
						<div class="middle-declare-title">필수 표기정보</div>
						<div class="middle-declare-content">
							<table class="declare-table">
								<tr>
									<th>용량 또는 중량</th>
									<td>${product.p_capacity}ml</td>
									<th>제품 주요 사항</th>
									<td>${product.p_main_spec}</td>
								</tr>
								<tr>
									<th>사용 기한</th>
									<td>${product.p_expiry_date}</td>
									<th>사용 방법</th>
									<td>${product.p_how_to}</td>
								</tr>
								<tr>
									<th>제조자</th>
									<td>${product.p_manufacturer}</td>
									<th>제조국</th>
									<td>${product.p_made_in}</td>
								</tr>
								<tr>
									<th>주요 성분</th>
									<td>${product.p_main_ingredient}</td>
									<th>식품의약품안전청<br>심사 필 유무
									</th>
									<td><c:if test="${product.p_test_exist==0}">무</c:if>
									<c:if test="${product.p_test_exist==1}">유</c:if></td>
								</tr>
								<tr>
									<th>사용 시 주의사항</th>
									<td>${product.p_attention}</td>
									<th>품질보증기준</th>
									<td>본 제품 이상 시, 공정거래위원회 고시 '소비자분쟁해결기준'에 의거 보상합니다.</td>
								</tr>
								<tr>
									<th>소비자상담관련<br>전화번호
									</th>
									<td colspan="3">1577-1577</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="productView-middle-preview">
						<span class="middle-preview-content">
							${product.p_content}
						</span>
					</div>
					<div class="productView-middle-ask scorll-target" 
					id="select-tab-ask" data-selected="ask">
						<div class="middle-ask-content">
							<div class="col-md-12 ask-content-top">
								<div class="col-md-8 ask-content-top-left">
									<p class="ask-content-title">상품 문의</p>
									<p class="ask-content-subTitle">문의하신 내용은 판매자가 확인 후 친절히
										답변해드려요 :)</p>
								</div>
								<div class="col-md-4 ask-content-top-right">
									<input id="go-ask-write" type="button" value="문의하기">
								</div>
							</div>
							<div class="col-md-12 ask-content-middle">
							<c:forEach var="ask" items="${boardList}">									
							<c:if test="${user_auth != 5}">
								<div class="col-md-12 ask-question-and-answer accordion_banner"  data-private="${ask.pb_num}" >
									<div class="col-md-12 ask-content-question accordion_title">
										<div class="col-md-8 question-left">
											<p style="margin-bottom: 15px;">
												<c:if test="${ask.pbr_content eq null}"><span class="question-mark" style="background:#E89C0C;">답변대기</span></c:if>
												<c:if test="${ask.pbr_content ne null}"><span class="question-mark">질문</span></c:if> 
												<span class="question-date">
												<fmt:formatDate value="${ask.pb_dateTime}" pattern="yy.MM.dd HH:mm:ss"/></span> | 
												<span class="question-nickName">${ask.pb_id} 님</span>
												<c:if test="${user_id == ask.pb_id}">
													<span class="question-buttons" style="margin-left:5px;">
														<input type="button" value="삭제" class="question-remove" onclick="location.href='#'">
													</span>	
												</c:if>
											</p>
											<c:if test="${ask.pb_lock==0 || (ask.pb_lock==1&&(ask.pb_id==user_id))}">
											<p>
												<span class="question-kind">[${ask.pb_kind}]</span> <span
													class="question-content">${ask.pb_content} </span> 
											</p>
											</c:if>
											<c:if test="${ask.pb_lock==1 && (ask.pb_id!=user_id)}">
												<p id="private-content-${ask.pb_num}" class="private-content">
												<span class="question-kind">[PRIVATE]</span> <span
													class="question-content">비밀글입니다. </span> <img
													src="${pageContext.request.contextPath}/assets/img/shop/board-lock.png">
												</p>
											</c:if>
										</div>
										<img class="question-right"
											src="${pageContext.request.contextPath}/assets/img/shop/down-arrow.png">
									</div>
									<div class="col-md-12 ask-content-answer accordion_sub private-${ask.pbr_head}" id="private-${ask.pbr_head}">
										<div class="col-md-2 answer-left">
											<img
												src="${pageContext.request.contextPath}/assets/img/shop/answer-point.png">
										</div>
										<div class="answer-right">
											<c:if test="${ask.pbr_content eq null}">
												<p style="margin-bottom: 15px;" >
													<span class="answer-mark" style="background:#aaa;">WAITING</span>
												</p>
												<p class="answer-content">답변 대기중 입니다.</p>
											</c:if>
											<c:if test="${ask.pbr_content ne null}">
												<p style="margin-bottom: 15px;">
													<span class="answer-mark">답변완료</span> <span
													class="answer-date"><fmt:formatDate value="${ask.pbr_dateTime}" pattern="yy.MM.dd HH:mm:ss"/></span>
												</p>
												<p class="answer-content">${ask.pbr_content}</p>
											</c:if>
										</div>
									</div>
								</div>
								</c:if>
								<c:if test="${user_auth == 5}">
									<div class="col-md-12 ask-question-and-answer accordion_banner" data-private="${ask.pb_num}" >
									<div class="col-md-12 ask-content-question accordion_title">
										<div class="col-md-8 question-left">
											<p style="margin-bottom: 15px;">
												<c:if test="${ask.pbr_content eq null}"><span class="question-mark" style="background:#E89C0C;">답변대기</span></c:if>
												<c:if test="${ask.pbr_content ne null}"><span class="question-mark">질문</span></c:if>  <span
													class="question-date"><fmt:formatDate value="${ask.pb_dateTime}" pattern="yy.MM.dd HH:mm:ss"/></span> | <span
													class="question-nickName">${ask.pb_id} 님</span>
													<span class="question-buttons" style="margin-left:5px;">
														<input type="button" value="삭제" class="question-remove" onclick="location.href='#'">
													</span>	
											</p>
											<p>
												<span class="question-kind">[<c:if test="${ask.pb_lock==1 && (ask.pb_id!=user_id)}">비밀글:</c:if>${ask.pb_kind}]</span>
											<span class="question-content">${ask.pb_content} </span> 
											</p>
										</div>
										<img class="question-right"
											src="${pageContext.request.contextPath}/assets/img/shop/down-arrow.png">
									</div>
									<div class="col-md-12 ask-content-answer accordion_sub private-${ask.pbr_head}" id="private-${ask.pbr_head}">
										<div class="col-md-2 answer-left">
											<img
												src="${pageContext.request.contextPath}/assets/img/shop/answer-point.png">
										</div>
										<div class="answer-right">
											<c:if test="${ask.pbr_content eq null}">
												<input type="hidden" id="pbr_p_num_${ask.pb_num}" name="pbr_p_num_${ask.pb_num}" value="${product.p_num}">
												<input type="hidden" id="pbr_brand_num_${ask.pb_num}" name="pbr_brand_num_${ask.pb_num}"  value="${product.brand_num}">
												<input type="hidden" id="pbr_id_${ask.pb_num}" name="pbr_id_${ask.pb_num}"  value="${user_id}">
												<input type="hidden" id="pbr_head_${ask.pb_num}" name="pbr_head_${ask.pb_num}"  value="${ask.pb_num}">
												<span class="answer-mark" style="background:#aaa;">WAITING</span>
												<p class="add-edit-form">
													<textarea id="pbr_content_${ask.pb_num}" name="pbr_content_${ask.pb_num}" placeholder="답변 대기중인 문의글입니다."></textarea>
													<span class="letter-count">400/400</span>
												</p>
												<p style="margin-bottom: 15px;" class="question-buttons">
													<input type="button" value="답변등록" class="answer-add" data-private="${ask.pb_num}">
													<input type="button" value="수정" class="answer-edit" onclick="location.href='#'" data-private="${ask.pb_num}" >
												</p>
											</c:if>
											<c:if test="${ask.pbr_content ne null}">
												<p style="margin-bottom: 15px;" class="question-buttons">
													<span class="answer-mark">답변완료</span> <span
													class="answer-date"><fmt:formatDate value="${ask.pbr_dateTime}" pattern="yy.MM.dd HH:mm:ss"/></span>
													<c:if test="${user_id == 'admin'}">
														<input type="button" value="수정" class="question-remove" onclick="location.href='#'">
													</c:if>
												</p>
												<p class="answer-content">${ask.pbr_content}</p>
											</c:if>
										</div>
									</div>
								</div>
								</c:if>
								</c:forEach>
							</div>
							<div class="col-md-12 ask-content-end">
								${pagingHtml}
							</div>
						</div>
					</div>
					<div class="productView-middle-brand scorll-target" 
					id="select-tab-brand" data-selected="brand">
						<div class="brand-info-title">
							<p class="brand-info-ENTitle">PRODUCT INFORMATION</p>
							<p class="brand-info-KRTitle">브랜드 정보 및 교환/반품 안내</p>
						</div>
						<div class="brand-info-content">
							<div class="brand-info"><a href="#">
								<img src="shopBrandImageView.do?brand_num=${product.brand_num}"></a>
								<p class="brand-info-name"><a href="#">${product.brand_name}</a></p>
							</div>
							<div class="classified-brand-product">
								<p>지금 구매 가능한 <span style="font-weight:bold;">브랜드 상품</span></p>
								<div class="brand-products">
									<c:forEach var="brand" items="${brandProduct}">
									<div class="brand-product">
										<ul>
											<li>
												<img src="shopProductImageView.do?p_num=${product.p_num}">
											</li>
											<li class="brand-product-name" style="font-weight:bold;">${brand.p_name}</li>
											<li class="brand-product-price"><fmt:formatNumber value="${brand.p_price}" type="number"/>원</li>
										</ul>
									</div>
									</c:forEach>
									<div class="brand-add-product">
										<ul>
											<li class="brand-product-go">
												<img src="${pageContext.request.contextPath}/assets/img/shop/plus.png"
												onclick="location.href='#'">
											</li>
											<li class="brand-product-name" style="font-weight:bold;">
												<a href="#">더 보기</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="productView-middle-guide">
						<div class="middle-guide-shipping-info">
							<div class="guide-title">배송 정보</div>
							<div class="guide-content">
								<ul>
									<li>배송방식 : 택배배송</li>
									<li>배송비용 : 기본 2,500원. 15,000원 이상 구매 시 배송비용이 없습니다.</li>
									<li>배송예정일 : 결제완료 후 1~3일 후 출고됩니다. 단, 상품의 재고 상황 및 운송업체 사정에 따라 배송이 지연될 수 있습니다.</li>
									<li class="guide-addition">* 제주도를 포함한 도서산간 지역은 추가 배송일과 추가 배송비 입금 요청이 있을 수 있습니다.</li>
								</ul>
							</div>
						</div>
						<div class="middle-guide-cancle-info">
							<div class="guide-title">취소/교환</div>
							<div class="guide-content">
								<ul>
									<li>주문취소 : 상품 출고 이전까지만 가능하며, 출고 이후는 환불 규정에 따라 처리됩니다.</li>
									<li>상품교환 : 기 구매한 상품을 반품/환불 요청 후 새 상품을 재구매해주셔야 합니다.</li>
								</ul>
							</div>
						</div>
						<div class="middle-guide-refund-info">
							<div class="guide-title">반품/환불</div>
							<div class="guide-content">
								<ul>
									<li>환불 가능 기한 : 단순변심에 의한 사유는 상품 수령일(배송완료일)로부터 7일 이내.</li>
									<li>환불 가능 조건 : 재판매가 가능한 상품 및 포장상태로 반품. (개봉 시 환불 불가)</li>
									<li>반품 배송비 : 단순 변심에 의한 환불은 고객이 부담, 상품 불량 및 오배송에 의한 환불은 판매자 부담</li>
									<li>환불 시 반품 배송지 주소 : 서울특별시 중구 남대문로 120 대일빌딩 2층, 3층 </li>
									<li>교환/환불 및 기타문의는 고객센터 혹은 상품문의 게시판으로 문의해주세요.</li>
									<li>단, 상품상세설명에 별도로 기입된 환불 기준이 있을 경우 그 기준이 우선합니다.</li>
									<li class="guide-addition">* 미성년자가 체결한 계약은 법정대리인이 동의하지 않는 경우 본인 또는 법정대리인이 취소할 수 있습니다.</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- 제품 뷰 중간 끝 -->
			</div>
		</form>
	</div>
</div>
<!-- modal -->
<div class="modal fade" id="product_board_form" role="dialog">
    <div class="dialog-m">  
      <!-- Modal content-->
      <div class="content-m-back">
        <div class="header-m">
          <button type="button" class="close-m" data-dismiss="modal">&times;</button>
          <h4 class="h4-m"><span class="glyphicon glyphicon-pencil"></span> 문의하기</h4>
        </div>
        <div class="body-m">
          <form:form commandName="pbcommand" action="${pageContext.request.contextPath}/shop/pbWrite.do" 
          id="pbWrite_form">
	   	  <form:hidden path="pb_id" />
	   	  <form:hidden path="pb_product" value="${product.p_num}"/>
	   	  <form:hidden path="p_num" value="${product.p_num}"/>
	   	  <form:hidden path="brand_num" value="${product.brand_num}"/>
	   	  <form:errors element="div" cssClass="error-color"/>
            <div class="form-group1">
            	<form:select path="pb_kind" class="form-control" id="select-ask-kind">
					  <option value="unselect" selected>문의 유형 선택</option>
					  <form:option value="상품문의">상품문의</form:option>
					  <form:option value="배송문의">배송문의</form:option>
					  <form:option value="반품/취소">반품/취소</form:option>
					  <form:option value="기타">기타</form:option>
				</form:select>
	   	  		<form:errors element="pb_kind" cssClass="error-color"/>	
            </div>
            <div class="form-group2">
              <form:textarea path="pb_content" class="form-control" id="product-ask-content" 
              placeholder="※ 이메일, 연락처와 같은 개인정보 입력 또는 상품과 관련없는 글(비방,광고,도배 등)은 삭제 조치 될 수 있어요 :("></form:textarea>
	   	  	  <form:errors element="pb_content" cssClass="error-color"/>	
              <div class="ask-lock-area">
              	<form:checkbox path="pb_lock" value="1" id="ask-lock" name="ask-lock" class="ask-lock-text" label="비밀글로 문의하기"/>
	   	  		<form:errors element="pb_lock" cssClass="error-color"/>	
              </div>
            </div>
              <input type="button" class="btn-m1 ask-cancle btn-block-m1" value="취소">
              <input type="submit" class="btn-m2 ask-submit btn-block-m2" value="등록">
          </form:form>
        </div>
        <div class="footer-m"></div>
      </div>
    </div>
</div> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/shop.css">
<script type="text/javascript">
	$(document).ready(function() {
		$(".accordion_banner .accordion_sub").hide();
		$(".accordion_banner .accordion_title").click(function() {
			if ($(this).next("div").is(":visible")) {
				$(this).next("div").slideUp("fast");
			} else {
				$(".accordion_banner .accordion_sub").slideUp("fast");
				$(this).next("div").slideToggle("fast");
			}
		});
	});
</script>
<div class="container content">
	<div class="col-md-12 shop-productView">
		<div class="shop-productView-category">
			<a href="#">쇼핑 홈 </a>> <a href="#"> 쇼핑 카테고리 </a>> <a href="#"> 세부
				카테고리</a>
		</div>
		<form>
			<div class="col-md-10 shop-productView-explain">
				<!-- 제품 뷰 상단 시작 -->
				<div class="productView-contents-top">
					<div class="col-md-2 productView-img">
						<img
							src="${pageContext.request.contextPath}/assets/img/main/img1.jpg"
							alt="">
					</div>
					<div class="col-md-8 productView-intro">
						<div class="col-md-4 productView-item-top">
							<div class="productView-item-title-explain">
								<p class="productView-item-title-name">메이케이티드 위치하젤 아스트린젠트
									355ml</p>
								<p class="productView-item-title-brand">
									세이어스&nbsp;<a href="#"><span>브랜드 바로가기></span></a>
								</p>
							</div>
							<div class="productView-item-wish">
								<button>
									<img
										src="${pageContext.request.contextPath}/assets/img/shop/not_wish.png">
								</button>
							</div>
						</div>
						<div class="col-md-12 productView-item-middle">
							<div class="productView-item-etc">
								<div class="productView-item-seller">
									<p>판매자 : 세이어스</p>
								</div>
								<div class="productView-item-point">
									<p>
										화해포인트 : 최대 <span class="get-point">240p</span> 적립
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
									<span class="price-detail-sale">20%</span> <span
										class="price-detail-payment">12,000원</span> <span
										class="price-detail-original">15,000원</span>
								</div>
							</div>
							<div class="productView-item-shop-buttons">
								<input class="item-quantity" type="number" min="1" value="1"
									required> <input class="shop-button item-buy"
									type="button" value="구매하기"
									onclick="location.href='${pageContext.request.contextPath}/shop/orderProduct.do'">
								<input class="shop-button item-cart" type="button"
									value="장바구니 담기"> <input class="shop-button item-review"
									type="button" value="리뷰 보러가기">
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
								<a href="#"><p>
										전 성분 확인 하기 <span>></span>
									</p></a>
							</div>
						</div>
					</div>
					<div class="productView-middle-select">
						<div class="middle-select-tab">
							<ul>
								<li class="select-tab-intro"
									style="border-left: 1px solid #717171;"><a href="#">상품
										소개</a></li>
								<li class="select-tab-ask middle-select-tab-center"><a
									href="#">상품 문의 (212)</a></li>
								<li class="select-tab-brand"
									style="border-right: 1px solid #717171;"><a href="#">브랜드
										정보</a></li>
							</ul>
						</div>
					</div>
					<div class="productView-middle-declare">
						<div class="middle-declare-title">필수 표기정보</div>
						<div class="middle-declare-content">
							<table class="declare-table">
								<tr>
									<th>용량 또는 중량</th>
									<td>100ml</td>
									<th>제품 주요 사항</th>
									<td>모든 피부 타입</td>
								</tr>
								<tr>
									<th>사용 기한</th>
									<td>2021.01.09 까지, 개봉 후 1년</td>
									<th>사용 방법</th>
									<td>세안 시 적당량을 취해 충분히 거품을 낸 다음 얼굴에 마사지하듯 가볍게 손놀림</td>
								</tr>
								<tr>
									<th>제조자</th>
									<td>㈜하나코스</td>
									<th>제조국</th>
									<td>대한민국</td>
								</tr>
								<tr>
									<th>주요 성분</th>
									<td>우유 단백질 추출물</td>
									<th>식품의약품안전청<br>심사 필 유무
									</th>
									<td>무</td>
								</tr>
								<tr>
									<th>사용 시 주의사항</th>
									<td>1) 화장품 사용 시 또는 사용 후 직사광선에 의하여 사용부위가 붉은 반점, 부어오름 또는
										가려움증 등의 이상 증상이나 부작용이 있는 경우 전문의 등과 상담할 것 2) 상처가 있는 부위 등에는 사용을
										자제할 것 3) 보관 및 취급 시의 주의사항 가) 어린이의 손이 닿지 않는 곳에 보관할 것 나) 직사광선을
										피해서 보관할 것</td>
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
						<div class="middle-preview-content">
							<img
								src="${pageContext.request.contextPath}/assets/img/shop/shoppingTest.jpg">
						</div>
					</div>
					<div class="productView-middle-ask">
						<div class="middle-ask-content">
							<div class="col-md-12 ask-content-top">
								<div class="col-md-8 ask-content-top-left">
									<p class="ask-content-title">상품 문의</p>
									<p class="ask-content-subTitle">문의하신 내용은 판매자가 확인 후 친절히
										답변해드려요 :)</p>
								</div>
								<div class="col-md-4 ask-content-top-right">
									<input type="button" value="문의하기" onclick="location.href='#'">
								</div>
							</div>
							<div class="col-md-12 ask-content-middle">
								<div class="col-md-12 ask-question-and-answer accordion_banner">
									<div class="col-md-12 ask-content-question accordion_title">
										<div class="col-md-8 question-left">
											<p style="margin-bottom: 15px;">
												<span class="question-mark">질문</span> <span
													class="question-date">2018/09/05 10:29</span> | <span
													class="question-nickName">홍길동 님</span>
											</p>
											<p>
												<span class="question-kind">[배송문의]</span> <span
													class="question-content">비밀글입니다. </span> <img
													src="${pageContext.request.contextPath}/assets/img/shop/board-lock.png">
											</p>
										</div>
										<img class="question-right"
											src="${pageContext.request.contextPath}/assets/img/shop/down-arrow.png">
									</div>
									<div class="col-md-12 ask-content-answer accordion_sub">
										<div class="col-md-2 answer-left">
											<img
												src="${pageContext.request.contextPath}/assets/img/shop/answer-point.png">
										</div>
										<div class="answer-right">
											<p style="margin-bottom: 15px;">
												<span class="answer-mark">답변</span> <span
													class="answer-date">2018/09/05 10:29</span>
											</p>
											<p class="answer-content">안녕하세요 길동님! 오늘 바로출고되었습니다 감사합니다</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12 ask-content-end">
								페이징구역
							</div>
						</div>
					</div>
					<div class="productView-middle-brand">
						<div class="brand-info-title">
							<p class="brand-info-ENTitle">PRODUCT INFORMATION</p>
							<p class="brand-info-KRTitle">브랜드 정보 및 교환/반품 안내</p>
						</div>
						<div class="brand-info-content">
							<div class="brand-info">
								<img src="${pageContext.request.contextPath}/assets/img/logo2.png">
								<p class="brand-info-name">세이어스</p>
							</div>
							<div class="classified-brand-product">
								<p>지금 구매 가능한 <span style="font-weight:bold;">브랜드 상품</span></p>
								<div>;
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 제품 뷰 중간 끝 -->
			</div>
		</form>
	</div>
</div>
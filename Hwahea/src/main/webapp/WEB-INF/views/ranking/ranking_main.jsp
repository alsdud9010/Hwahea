<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/ranking.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/ranking.js"></script>
<!--=== Title ===-->
<div class="container-background">
	<div class="container content r_title">
		<ul>
			<li>
				<p class="r_title1">RANKING</p>
			</li>
			<li><span class="r_title2">화해 랭킹</span>
			<span class="r_title3">화해유저들이 뽑은 테마별 랭킹을 확인해보세요! :)</span></li>
		</ul>
	</div>
</div>
<!--=== Content Part ===-->
<div class="container content">
	<div class="row magazine-page white">
		<!-- Begin Content -->
		<div class="col-md-12">
			<!-- 랭킹 메뉴 시작 -->
			<div class="col-md-12">
				<ul id="r_menu_1" class="r_menu_1 margin-bottom-35 col-md-12">
					<li><div id="r_category">카테고리별</div></li>
					<li><div id="r_skinType">피부타입&amp;고민별</div></li>
					<li><div id="r_brand">브랜드별</div></li>
					<li><div id="age">연령별</div></li>
					<li><div id="baby">베이비&amp;임산부별</div></li>
					<li><div id="man">남성</div></li>
				</ul>
			</div>
			<!-- 랭킹 메뉴 끝 -->

			<!-- 랭킹 메뉴 -->

			<div class="margin-bottom-35">
				<hr class="hr-md">
			</div>

			<!-- 카테고리별 top5 시작 -->
			<div class="ranking-top5">
				<div class="row">
					<div class="col-md-12 margin-bottom-15">
						<h2>
							<b> 카테고리별 </b>
						</h2>
					</div>
					<div class="col-md-2" onclick="location.href='${pageContext.request.contextPath}/review/productInfo.do'">
							<div class="ranking-top5-img">
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt=""><span class="magazine-badge label-yellow">1</span>
							</div> 
							<div class="r_brandName">정샘물</div>
							<div class="r_productName">
								<strong>컬러피스 아이섀도우 프리즘</strong>
							</div>
							<div class="r_by-author">
								<strong>22,000원</strong> <span>/ 2.6g</span>
							</div>
					</div>
					
					<div class="col-md-2">
						<div class="r_hover">
							<div class="ranking-top5-img">
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt=""><span class="magazine-badge label-yellow">1</span>
							</div>
							<div class="r_brandName">정샘물</div>
							<div class="r_productName">
								<strong>컬러피스 아이섀도우 프리즘</strong>
							</div>
							<div class="r_by-author">
								<strong>22,000원</strong> <span>/ 2.6g</span>
							</div>
							<a href="${pageContext.request.contextPath}/review/productInfo.do" class="product_hover">
							<span>상세보기</span>
							</a>
						</div>
					</div>
					<div class="col-md-2">
						<div class="r_hover">
							<div class="ranking-top5-img">
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt=""><span class="magazine-badge label-yellow">1</span>
							</div>
							<div class="r_brandName">정샘물</div>
							<div class="r_productName">
								<strong>컬러피스 아이섀도우 프리즘</strong></a>
							</div>
							<div class="r_by-author">
								<strong>22,000원</strong> <span>/ 2.6g</span>
							</div>
							<a href="${pageContext.request.contextPath}/review/productInfo.do" class="product_hover">
							<span>상세보기</span>
							</a>
						</div>
					</div>
					<div class="col-md-2">
						<div class="r_hover">
							<div class="ranking-top5-img">
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
									alt=""><span class="magazine-badge label-yellow">1</span>
							</div>
							<div class="r_brandName">정샘물</div>
							<div class="r_productName">
								<strong>컬러피스 아이섀도우 프리즘</strong></a>
							</div>
							<div class="r_by-author">
								<strong>22,000원</strong> <span>/ 2.6g</span>
							</div>
							<a href="${pageContext.request.contextPath}/review/productInfo.do" class="product_hover">
							<span>상세보기</span>
							</a>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">5</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">컬러피스 아이섀도우 프리즘</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
				</div>
			</div>
			<!-- 카테고리별별 top5 끝 -->

			<div class="margin-bottom-35">
				<hr class="hr-md">
			</div>

			<!-- 피부타입&고민별 top5 시작 -->
			<div class="ranking-top5">
				<div class="row">
					<div class="col-md-12 margin-bottom-15">
						<h2>
							<b> 피부타입&amp;고민별 </b>
						</h2>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">1</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">2</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">플렌티 오브 파우트 플럼핑 립스틱</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">3</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">컬러피스 아이섀도우 프리즘</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">4</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">컬러피스 아이섀도우 프리즘</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">5</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">컬러피스 아이섀도우 프리즘</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
				</div>
			</div>
			<!-- 피부타입&고민별 top5 끝 -->

			<div class="margin-bottom-35">
				<hr class="hr-md">
			</div>

			<!-- 브랜드별 top5 시작 -->
			<div class="ranking-top5">
				<div class="row">
					<div class="col-md-12 margin-bottom-15">
						<h2>
							<b> 브랜드별 </b>
						</h2>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">1</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">2</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">플렌티 오브 파우트 플럼핑 립스틱</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">3</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">컬러피스 아이섀도우 프리즘</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">4</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">컬러피스 아이섀도우 프리즘</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">5</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">컬러피스 아이섀도우 프리즘</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
				</div>
			</div>
			<!-- 브랜드별 top5 끝 -->

			<div class="margin-bottom-35">
				<hr class="hr-md">
			</div>

			<!-- 연령별 top5 시작 -->
			<div class="ranking-top5">
				<div class="row">
					<div class="col-md-12 margin-bottom-15">
						<h2>
							<b> 연령별 </b>
						</h2>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">1</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">2</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">플렌티 오브 파우트 플럼핑 립스틱</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">3</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">컬러피스 아이섀도우 프리즘</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">4</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">컬러피스 아이섀도우 프리즘</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">5</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">컬러피스 아이섀도우 프리즘</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
				</div>
			</div>
			<!-- 연령별 top5 끝 -->

			<div class="margin-bottom-35">
				<hr class="hr-md">
			</div>

			<!-- 베이비&임산부별 top5 시작 -->
			<div class="ranking-top5">
				<div class="row">
					<div class="col-md-12 margin-bottom-15">
						<h2>
							<b> 베이비&amp;임산부별 </b>
						</h2>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">1</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">2</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">플렌티 오브 파우트 플럼핑 립스틱</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">3</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">컬러피스 아이섀도우 프리즘</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">4</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">컬러피스 아이섀도우 프리즘</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">5</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">컬러피스 아이섀도우 프리즘</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
				</div>
			</div>
			<!-- 베이비&임산부별 top5 끝 -->

			<div class="margin-bottom-35">
				<hr class="hr-md">
			</div>

			<!-- 남성 top5 시작 -->
			<div class="ranking-top5">
				<div class="row">
					<div class="col-md-12 margin-bottom-15">
						<h2>
							<b> 남성 </b>
						</h2>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">1</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">
							<strong>컬러피스 아이섀도우 프리즘</strong>
						</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">2</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">플렌티 오브 파우트 플럼핑 립스틱</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">3</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">컬러피스 아이섀도우 프리즘</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">4</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">컬러피스 아이섀도우 프리즘</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
					<div class="col-md-2">
						<div class="ranking-top5-img">
							<a href="#"> <img class="img-responsive"
								src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg"
								alt="">
							</a> <span class="magazine-badge label-green">5</span>
						</div>
						<div class="r_brandName">정샘물</div>
						<div class="r_productName">컬러피스 아이섀도우 프리즘</div>
						<div class="r_by-author">
							<strong>22,000원</strong> <span>/ 2.6g</span>
						</div>
					</div>
				</div>
			</div>
			<!-- 남성 top5 끝 -->
			<!-- End Magazine News -->
		</div>
		<!-- End Content -->
	</div>
</div>
<!--/container-->
<!-- End Content Part -->
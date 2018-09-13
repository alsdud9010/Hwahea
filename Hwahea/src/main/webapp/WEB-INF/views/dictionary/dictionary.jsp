<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/dictionary.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/dictionary.js"></script>
<!--=== Content Part ===-->
<div class="container content dictionary_font">
	<div class="row magazine-page">
		<!-- Begin Content -->
		<div class="col-md-12">
			<!-- Begin Magazine News -->
			<div class="magazine-news">
				<!-- 공통 타이틀 시작 -->
				<div class="r_title">
					<div class="r_title1">DICTIONARY</div>
					<dl>
						<dt class="r_title2">화해 성분사전</dt>
						<dt class="r_title3">화해에서 제공하는 성분정보들을 자세히 만나보세요! :)</dt>
					</dl>
				</div>
				<!-- 공통 타이틀 끝 -->
				<div class="margin-bottom-35">
					<hr class="hr-md">
				</div>

				<!-- 성분사전 시작 -->
				<div class="col-md-12">
					<!-- 성분사전 메인 시작 -->
					<div class="navbar-header2">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar custom-icon-bar"></span> <span
								class="icon-bar custom-icon-bar"></span> <span
								class="icon-bar custom-icon-bar"></span>
						</button>
						<span class="navbar-brand2">EWG 등급이란?</span>
					</div>
					<!-- 성분사전 메인 끝-->
					<!-- navbar tap 시작 -->
					<ul class="nav nav-tabs navbar-collapse aa">
						<li class="nav-item"><a href="nav-link" id="warnings" class="active" data-num="1"
							data-toggle="tab" data-target="#tabone">20가지 주의성분</a></li>
						<li class="nav-item"><a class="nav-link" href="" id="allergie"
							data-toggle="tab" data-target="#tabtwo">알레르기 주의성분</a></li>
						<li class="nav-item"><a class="nav-link" href="" id="skinType"
							data-toggle="tab" data-target="#tabthree">피부타입별 성분</a></li>
						<li class="nav-item"><a class="nav-link" href="" id="function"
							data-toggle="tab" data-target="#tabfour">기능성 성분</a></li>
					</ul>
					<!-- navbar tap 끝 -->
					<!-- navbar content 시작 -->
					<div class="tab-content mt-2">
						<div class="tab-pane fade" id="tabone" role="tabpanel">
							<div class="tab-header">
									<span>20가지 주의성분</span>은 화장품 계열 베스트 셀러 도서인<br> '대한민국 화장품의
									비밀'에 수록되어 있는<br> <span>'가장 피해야할 20가지 성분'</span>의 목록입니다.
							</div>
							<div class="tab_left">
								<div class="d_info">
									<div class="notice">
									성분을 선택하시면 정보를 확인하실 수 있습니다 :)
									</div>
									<img src="${pageContext.request.contextPath}/assets/img/dictionary/bear.png" class="bear">
								</div>
								<div class="detail"></div>
							</div>
							<div class="tap_right">
								<div id="loading">
									<img src="${pageContext.request.contextPath}/assets/img/ajax-loader.gif">
								</div>
								<ul class="d_list"></ul>
							</div>
						</div>
						<div class="tab-pane fade" id="tabtwo" role="tabpanel">
							<div class="tab-header">
								<span>20가지 주의성분</span>은 화장품 계열 베스트 셀러 도서인<br> '대한민국 화장품의
									비밀'에 수록되어 있는<br> <span>'가장 피해야할 20가지 성분'</span>의 목록입니다.
							</div>
							<div class="tab_left">
								<div class="d_info">
									<div class="notice">
									성분을 선택하시면 정보를 확인하실 수 있습니다 :)
									</div>
									<img src="${pageContext.request.contextPath}/assets/img/dictionary/bear.png" class="bear">
								</div>
								<div class="detail"></div>
							</div>
							<div class="tap_right">
								<div id="loading">
									<img src="${pageContext.request.contextPath}/assets/img/ajax-loader.gif">
								</div>
								<ul class="d_list"></ul>
							</div>
						</div>
						<div class="tab-pane fade" id="tabthree" role="tabpanel">
							<div class="tab-header col-md-12">
								<span>피부타입별 성분</span>은 대한피부과 의사회에서 2008년 10월 23일에<br>
								발표한 <span>'피부타입별 화장품 선택 가이드'</span>를 기준으로 하였습니다.
							</div>
							
							<div class="tab_left">
								<div class="left_content">
									<ul>
										<li> 
											<span>[지성]</span>
											<div class="oilly" data-type="Y">도움이 되는 성분<span>></span></div> 
											<div class="oilly" data-type="N">주의해야 할 성분<span>></span></div>
										</li>
										<li>
											<span>[건성]</span>
											<div class="dry" data-type="Y">도움이 되는 성분<span>></span></div>
											<div class="dry" data-type="N">주의해야 할 성분<span>></span></div>
										</li>
										<li>
											<span>[민감성]</span>
											<div class="sensitive" data-type="Y">도움이 되는 성분<span>></span></div>
											<div class="sensitive" data-type="N">주의해야 할 성분<span>></span></div>
										</li>
									</ul>
								</div>
								<div class="detail"></div>
							</div> 
							<div class="tap_right">
								<div id="loading">
									<img src="${pageContext.request.contextPath}/assets/img/ajax-loader.gif">
								</div>
								<ul class="d_list"></ul>
							</div>
						</div>
						<div class="tab-pane fade" id="tabfour" role="tabpanel">
							<div class="tab-header">
									<span>20가지 주의성분</span>은 화장품 계열 베스트 셀러 도서인<br> '대한민국 화장품의
									비밀'에 수록되어 있는<br> <span>'가장 피해야할 20가지 성분'</span>의 목록입니다.
							</div>
							<div class="tab_left">
								<div class="d_info">
									<div class="notice">
									성분을 선택하시면 정보를 확인하실 수 있습니다 :)
									</div>
									<img src="${pageContext.request.contextPath}/assets/img/dictionary/bear.png" class="bear">
								</div>
								<div class="detail"></div>
							</div>
							<div class="tap_right">
								<div id="loading">
									<img src="${pageContext.request.contextPath}/assets/img/ajax-loader.gif">
								</div>
								<ul class="d_list"></ul>
							</div>
						</div>
						</div>
					</div>
					<!-- navbar content 끝-->
					<!-- 성분사전 메인 content 시작 -->
				</div>
				<!-- 성분사전 끝 -->

				<!-- EWG 등급이란? 시작 -->
				<div id="EWG">
					<div class="EWG-header">
						<span>EWG</span>등급은 EWG가 연구한 <span>'각 성분의 안전도 등급'</span>입니다.
					</div>
					<div class="EWG-img">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/assets/img/dictionary/danger.PNG"
							alt="">
					</div>
					<div class="EWG-detail">
						EWG등급은 1992년 미국에 설립된 비영리 사회단체인 EWG(Environmental Working Group)가
						만든 SkinDeep(화장품과 여러 생활 용품에 대한 안전성 평가 데이터베이스)에 제시된 화장품 성분의 안전성
						등급입니다. Skin Deep은 ACHIH, EPA, ECB, FDA, CIR 등 각국의 정부 기관에서 발표된 자료와
						연구 학술 논문을 기반으로 위험도 등급(Hazard Score)를 설정하며, 이러한 결과 도출하는 데에 기반이 된
						자료들의 양을 데이터 등급(Data Score)으로 함께 표시합니다. <br>
						<br> 화해에서는 EWG Skin Deep에서 제공하고 있는 표기 방식에 따라 각 성분의 위험도 등급과 그
						등급에 따른 데이터 등급을 제공하고 있습니다. 위험도 등급은 '1-2등급(낮은 위험도)/3-6등급(중간
						위험도)/7-10(높은 위험도)로, 데이터 등급은 '없음(None)/적음(Limited)/
						적당함(Fair)/충분함(good)/매우 많은(Robust)'으로 표시됩니다.
					</div>
				</div>
				<!-- EWG 등급이란? 끝 -->
				
			</div>
			<!-- End Magazine News -->
		</div>
		<!-- End Content -->
	</div>
</div>
<!--/container-->
<!-- End Content Part -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/ingreSpec.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/ingreSpec.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/graph2.js"></script>
<div id="wrap">
<input type="hidden" name="c_code" value="${cosmetic.c_code }">
<div id="navs">
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li class="active">
    	<a href="nav-link" data-target="#ingre" data-toggle="tab" class="ingrebtn">성분구성</a> 
    </li>
    <li>
    	<a href="nav-link" data-target="#pibu" data-toggle="tab" class="pibubtn">피부타입별 구성</a>
    </li>
    <li>
    	<a href="nav-link" data-target="#ginung" data-toggle="tab" class="ginungbtn">기능성 성분 구성</a> 
    </li>
  </ul>
</div>
  <!-- Tab panes -->
	<div class="tab-content">
		<!-- 탭1(성분구성) -->
		<div class="tab-pane active" id="ingre" role="tabpanel"> 
			<div id="subhead">성분 구성</div>
			<div id="chart_div"></div><br>
			<div>
				<span id="twenty">
					<img src="${pageContext.request.contextPath}/assets/img/review/20.PNG">
						20가지 주의성분 
				</span> 
				<span id="how">3<span>개</span></span> 
			</div>
			<div>
				<span id="allergy">
					<img src="${pageContext.request.contextPath}/assets/img/review/allergyon.PNG">
						알러지 주의성분 
				</span> 
				<span id="how">1<span>개</span></span> 
			</div>
			<hr>
			<div id="allgrade">
				<img src="${pageContext.request.contextPath}/assets/img/review/grade.png">
			</div>
			<div id="guide">
				* 전성분 순서대로 기재되어 있습니다.
			</div>
			<hr>
			<div id="ingres">
				<ul>
					<li>
						<div id="ingres_img">
							<img id="grade" src="${pageContext.request.contextPath}/assets/img/review/blue.png">
						</div>
						<div id="ingres_name">
							<div id="name_kr">나비꽃콩추출물</div>
							<div id="name_en">Clitoria Ternatea Flower Extract</div>
						</div>
						<hr>
					</li>
					<li>
						<div id="ingres_img">
							<img id="grade" src="${pageContext.request.contextPath}/assets/img/review/blue.png">
						</div>
						<div id="ingres_name">
							<div id="name_kr">나비꽃콩추출물</div>
							<div id="name_en">Clitoria Ternatea Flower Extract</div>
						</div>
						<hr>
					</li>
					<li>
						<div id="ingres_img">
							<img id="grade" src="${pageContext.request.contextPath}/assets/img/review/yellow.png">
						</div>
						<div id="ingres_name">
							<div id="name_kr">나비꽃콩추출물</div>
							<div id="name_en">Clitoria Ternatea Flower Extract</div>
						</div>
						<hr>
					</li>
					<li>
						<div id="ingres_img">
							<img id="grade" src="${pageContext.request.contextPath}/assets/img/review/red.png">
						</div>
						<div id="ingres_name">
							<div id="name_kr">나비꽃콩추출물</div>
							<div id="name_en">Clitoria Ternatea Flower Extract</div>
						</div>
						<hr>
					</li>
					<li>
						<div id="ingres_img">
							<img id="grade" src="${pageContext.request.contextPath}/assets/img/review/gray.png">
						</div>
						<div id="ingres_name">
							<div id="name_kr">나비꽃콩추출물</div>
							<div id="name_en">Clitoria Ternatea Flower Extract</div>
						</div>
						<hr>
					</li>
					<li>
						<div id="ingres_img">
							<img id="grade" src="${pageContext.request.contextPath}/assets/img/review/blue.png">
						</div>
						<div id="ingres_name">
							<div id="name_kr">나비꽃콩추출물</div>
							<div id="name_en">Clitoria Ternatea Flower Extract</div>
						</div>
						<hr>
					</li>
					<li>
						<div id="ingres_img">
							<img id="grade" src="${pageContext.request.contextPath}/assets/img/review/blue.png">
						</div>
						<div id="ingres_name">
							<div id="name_kr">나비꽃콩추출물</div>
							<div id="name_en">Clitoria Ternatea Flower Extract</div>
						</div>
						<hr>
					</li>
					<li>
						<div id="ingres_img">
							<img id="grade" src="${pageContext.request.contextPath}/assets/img/review/yellow.png">
						</div>
						<div id="ingres_name">
							<div id="name_kr">나비꽃콩추출물</div>
							<div id="name_en">Clitoria Ternatea Flower Extract</div>
						</div>
						<hr>
					</li>
					<li>
						<div id="ingres_img">
							<img id="grade" src="${pageContext.request.contextPath}/assets/img/review/red.png">
						</div>
						<div id="ingres_name">
							<div id="name_kr">나비꽃콩추출물</div>
							<div id="name_en">Clitoria Ternatea Flower Extract</div>
						</div>
						<hr>
					</li>
					<li>
						<div id="ingres_img">
							<img id="grade" src="${pageContext.request.contextPath}/assets/img/review/gray.png">
						</div>
						<div id="ingres_name">
							<div id="name_kr">나비꽃콩추출물</div>
							<div id="name_en">Clitoria Ternatea Flower Extract</div>
						</div>
						<hr>
					</li>
				</ul>
			</div>
			
		</div>
		<!-- 탭2(피부타입별 구성) -->
		<div class="tab-pane" id="pibu" role="tabpanel">
			<div id="subhead">
				피부타입별 성분
			</div>
			<div id="tchart">
				<span id="type_chart_div"></span>
			</div> 
			<hr>
			<div id="subhead">지성피부 관련 성분</div>
			<div id="pibu_ingre">
				<ul>
					<li>
						<span>
							<img src="${pageContext.request.contextPath}/assets/img/review/bad.png">
							<span id="pibu_name">알란토인</span>
							<img src="${pageContext.request.contextPath}/assets/img/review/right.png">
							<span id="pibu_how">수렴 및 진정</span>
						</span>
						<hr>
					</li>
					<li>
						<span>
							<img src="${pageContext.request.contextPath}/assets/img/review/good.png">
							<span id="pibu_name">티타늄다이옥사이드;티타늄디옥사이드(구명칭)</span>
							<img src="${pageContext.request.contextPath}/assets/img/review/right.png">
							<span id="pibu_how">자외선 차단</span>
						</span>
						<hr>
					</li>
				</ul>
			</div>
			<div id="subhead">건성피부 관련 성분</div>
			<div id="pibu_ingre">
				<ul>
					<li>
						<span>
							<img src="${pageContext.request.contextPath}/assets/img/review/good.png">
							<span id="pibu_name">부틸렌글라이콜</span>
							<img src="${pageContext.request.contextPath}/assets/img/review/right.png">
							<span id="pibu_how">강력 보습</span>
						</span>
						<hr>
					</li>
				</ul>
			</div>
			<div id="subhead">민감성피부 관련 성분</div>
			<div id="pibu_ingre">
				<ul>
					<li>
						<span>
							<img src="${pageContext.request.contextPath}/assets/img/review/good.png">
							<span id="pibu_name">알란토인</span>
							<img src="${pageContext.request.contextPath}/assets/img/review/right.png">
							<span id="pibu_how">수렴 및 진정</span>
						</span>
						<hr>
					</li>
					<li>
						<span>
							<img src="${pageContext.request.contextPath}/assets/img/review/good.png">
							<span id="pibu_name">루틴;비타민P</span>
							<img src="${pageContext.request.contextPath}/assets/img/review/right.png">
							<span id="pibu_how">혈관 강화</span>
						</span>
						<hr>
					</li>
				</ul>
			</div>
		</div>
		<!-- 탭3(기능성성분 구성) -->
		<div class="tab-pane" id="ginung" role="tabpanel">
			<div id="gi_subhead">
				기능성 성분
			</div>
			<div id="option">
				<img src="${pageContext.request.contextPath}/assets/img/sun.png"> 자외선 차단
				<img src="${pageContext.request.contextPath}/assets/img/bulb.png"> 미백 개선
				<img src="${pageContext.request.contextPath}/assets/img/cancel.png"> 주름 개선
			</div>
			<div id="caution">
				1) 성분 정보는 성분의 함량과 배합방식, 개개인의 피부와 환경에 따라 다르게 적용될 수 있습니다.<br>
				2) 구매 전에 제조판매업자가 표기한 전성분 표를 한 번 더 확인하시길 권장드립니다.<br>
				3) 화해 정보를 허가없이 상업적으로 활용할 경우, 법적 조치를 받을 수 있습니다.
			</div>
			<hr>
			<div id="gi_subhead">자외선 차단 성분</div>
			<div id="ginung_ingre">
				<ul>
					<li>
						<span>
							<img src="${pageContext.request.contextPath}/assets/img/sun.png">
							<span id="ginung_name">티타늄다이옥사이드;티타늄디옥사이드(구명칭)</span>
							<img src="${pageContext.request.contextPath}/assets/img/review/right.png">
							<span id="ginung_how">착색제;불투명화제;물리적자외선차단</span>
						</span>
						<hr>
					</li>
				</ul>
			</div>
			<div id="gi_subhead">미백 개선 성분</div>
			<div id="ginung_ingre">
				<ul>
					<li>
						<span>
							<img src="${pageContext.request.contextPath}/assets/img/bulb.png">
							<span id="ginung_name">알파-비사보롤;비사볼올</span>
							<img src="${pageContext.request.contextPath}/assets/img/review/right.png">
							<span id="ginung_how">0.5%이상 함유될 경우 미백개선;(기능성화장품);향료;피부컨디셔닝제</span>
						</span>
						<hr>
					</li>
				</ul>
			</div>
			<div id="gi_subhead">주름 개선 성분</div>
			<div id="ginung_ingre">
				<ul>
					<li>
						<div id="none">해당 성분 없음</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
</div>
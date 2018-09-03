<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ranking.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/ranking.js"></script>
<!--=== Content Part ===-->
    <div class="container content">
      <div class="row magazine-page">
        <!-- Begin Content -->
        <div class="col-md-12">
          <div class="magazine-news">
            <div class="r_title">
            	<div class="r_title1">RANKING</div>
            	<dl>
            		<dt class="r_title2">화해 랭킹</dt>
            		<dt class="r_title3">화해유저들이 뽑은 테마별 랭킹을 확인해보세요! :)</dt>
            	</dl>
            	<!-- <p class="r_r_title2">화해 랭킹</p><p>화해유저들이 뽑은 테마별 랭킹을 확인해보세요! :)</p> -->
            </div>
            <div class="margin-bottom-35">
              <hr class="hr-md"> </div>              
            <!-- 카테고리별 top5 시작 -->
            <div class="ranking-top5">
              <div class="row">
                <div class="col-md-12">
                  <h3> 피부타입&amp;고민별 </h3>
                </div>
                <div class="col-md-2">
                  <div class="ranking-top5-img">
                    <a href="#">
                      <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg" alt=""> </a>
                    <span class="magazine-badge label-yellow">1</span>
                  </div>
                  <div class="r_label">
	                  <div class="r_brandName">네이처리퍼블릭</div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                  <div class="r_by-author">
                    <strong>22,000원</strong>
                    <span>/ 2.6g</span>
                  </div>
                </div>
                <div class="col-md-2">
                  <div class="ranking-top5-img">
                    <a href="#">
                      <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg" alt=""> </a>
                    <span class="magazine-badge label-green">2</span>
                  </div>
                  <div class="r_label">
	                  <div class="r_brandName">네이처리퍼블릭</div>
	                  <div class="r_productName"> 플렌티 오브 파우트 플럼핑 립스틱 </div>
                  </div>
                  <div class="r_by-author">
                    <strong>22,000원</strong>
                    <span>/ 2.6g</span>
                  </div>
                </div>
                <div class="col-md-2">
                  <div class="ranking-top5-img">
                    <a href="#">
                      <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg" alt=""> </a>
                    <span class="magazine-badge label-green">3</span>
                  </div>
                  <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                  <div class="r_by-author">
                    <strong>22,000원</strong>
                    <span>/ 2.6g</span>
                  </div>
                </div>
                <div class="col-md-2">
                  <div class="ranking-top5-img">
                    <a href="#">
                      <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg" alt=""> </a>
                    <span class="magazine-badge label-green">4</span>
                  </div>
                  <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                  <div class="r_by-author">
                    <strong>22,000원</strong>
                    <span>/ 2.6g</span>
                  </div>
                </div>
                <div class="col-md-2">
                  <div class="ranking-top5-img">
                    <a href="#">
                      <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/shadow.jpg" alt=""> </a>
                    <span class="magazine-badge label-green">5</span>
                  </div>
                  <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘 2.6g</strong>
	                    <span>/</span>
	                  </div>
                  </div>
                  <div class="r_by-author">
                    <strong>22,000원</strong>
                  </div>
                </div>
              </div>
            </div>
            <!-- 카테고리별 top5 끝 -->
            
            <div class="margin-bottom-35">
              <hr class="hr-md"> </div>
              
          <!-- 랭킹 메뉴 시작 -->
          <div class="col-md-12">
	          <ul id="r_menu_1" class="r_menu_1 margin-bottom-15 col-md-12">
	          	<li><div id="r_category">카테고리별</div></li>
	          	<li><div id="r_skinType">피부타입&amp;고민별</div></li>
	          	<li><div id="r_brand">브랜드별</div></li>
	          	<li><div id="age">연령별</div></li>
	          	<li><div id="baby">베이비&amp;임산부별</div></li>
	          	<li><div id="man">남성</div></li>
	          </ul>
	          <ul class="r_menu_skinType margin-bottom-35">
	          	<li>스킨케어&nbsp;&nbsp;</li>
	          	<li> |&nbsp;&nbsp;복합성&nbsp;&nbsp;</li>
	          	<li> |&nbsp;&nbsp;건성&nbsp;&nbsp; </li>
	          	<li> |&nbsp;&nbsp;지성&nbsp;&nbsp;</li>
	          	<li> |&nbsp;&nbsp;지성&nbsp;&nbsp;</li>
	          	<li> |&nbsp;&nbsp;중성&nbsp;&nbsp;</li>
	          	<li> |&nbsp;&nbsp;민감성&nbsp;&nbsp;</li>
	          	<li> |&nbsp;&nbsp;여드름&nbsp;&nbsp;</li>
	          	<li> |&nbsp;&nbsp;아토피&nbsp;&nbsp;</li>
	          </ul>
          </div>
          <!-- 랭킹 메뉴 끝 -->
          
          <div class="margin-bottom-35">
            <hr class="hr-md"> </div>
            
          <!-- 상품 리스트 시작 -->
          <div class="ranking-top5">
            <div class="row">
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>★★★★☆  4.87</strong>
                  <span>/4,200</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
            </div>
          </div>
          <div class="ranking-top5">
            <div class="row">
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>★★★★☆  4.87</strong>
                  <span>/4,200</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
            </div>
          </div>
          <div class="ranking-top5">
            <div class="row">
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>★★★★☆  4.87</strong>
                  <span>/4,200</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
            </div>
          </div>
          <div class="ranking-top5">
            <div class="row">
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>★★★★☆  4.87</strong>
                  <span>/4,200</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
            </div>
          </div>
          <div class="ranking-top5">
            <div class="row">
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>★★★★☆  4.87</strong>
                  <span>/4,200</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
              <div class="col-md-2">
                <div class="ranking-top5-img">
                  <a href="#">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/assets/img/ranking/brush.jpg" alt=""> </a>
                </div>
                <div class="r_label">
	                  <div class="r_brandName"> 정샘물 </div>
	                  <div class="r_productName">
	                    <strong>컬러피스 아이섀도우 프리즘</strong>
	                    <br> 
	                  </div>
                  </div>
                <div class="r_by-author">
                  <strong>22,000원</strong>
                  <span>/ 2.6g</span>
                </div>
              </div>
            </div>
          </div>
          <!-- 상품 리스트 끝 -->
          <!-- End Magazine News -->
        </div>
        <!-- End Content -->
        </div>
       </div>
    </div>
    <!--/container-->
    <!-- End Content Part -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/othermodal.css">
<script type="text/javascript">
	var state = 0;
	function ChangeImage(){
		if(state == 0){
			document.following.src = "${pageContext.request.contextPath}/assets/img/mypage/heart.png"
			state = 1;
		}else{
			document.following.src = "${pageContext.request.contextPath}/assets/img/mypage/heart(2).png"
			state = 0;
		}
	}

</script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/mypage.css">
<div class="container content">
	<div class="row magazine-page">
		<div class="col-md-12" style="margin-left: 5%;">
				<div class="menu_bar">
					<ul class="list-inline top-v1-contacts">
						<li><div class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_reviewmyreview.do">내 리뷰</a></div></li>
						<li>|</li>
						<li><div class="other_menu"><a href="${pageContext.request.contextPath}/mypage/my_reviewscrap.do">스크랩</a></div></li>
						<li>|</li>
						<li><div class="now_menu"><a href="${pageContext.request.contextPath}/mypage/my_reviewreview.do">리뷰</a></div></li>
					</ul>
				</div>
				<div class="otherreview_form col-md-12" style="margin-left: 5%;">
					<div class="otherreview_info">
						<div class="otherreview_info_first col-md-12">
							<div class="otherreview_info_img">
								<img alt="proflie" src="${pageContext.request.contextPath}/assets/img/mypage/profile.png" data-toggle="modal" data-target="#othermodal">
							</div>
							<div class="user_detail">
								<div class="otherreview_info_name">
									다른사용자 이름
								</div>
								<div class="otherreview_info_detail">
									29세/지성/민감성/아토피
								</div>
								<div class="otherreview_info_review">
									리뷰 : 12개
								</div>
							</div>
						</div>
						<div class="use_brand">
							<div class="use_brand_detail">
								<div class="otherreview_brand">
									삐뽀삐뽀
								</div>
								<div class="otherreview_name" style="font-size: 20px; font-weight: 600;">
									띠용띠용 마스크띠요오옹
								</div>
							</div>
							<div class="otherreview_img">
								<img alt="barnd_img" src="//placeimg.com/250/250/nature">
							</div>
						</div>
					<hr width="90%" style="height: 2px;">
					
					<div class="otherreview_second">
						<div class="review_set1">
							<div class="grade">
								★★★★
							</div>
							<div class="otherreview_date">
								2018.00.00
							</div>
						</div>
						<div class="button">
							<input type="button" value="스크랩 취소">
							<input type="button" value="신고하기">
						</div>
					</div>
					
					<div class="otherreview_thurth">
						<div class="review_like">
							<div class="likeimg">
								<img alt="" src="${pageContext.request.contextPath}/assets/img/mypage/like_img.png">
							</div>
							<div class="otherreview_content">
								쓸쓸한 인간에 남는 것은 영락과 부패 뿐이다 낙원을 장식하는 천자만홍이 어디 있으며 인생을 풍부하게 하는 온갖 과실이 어디 있으랴? 이상! 우리의 청춘이 가장 많이 품고 있는 이상! 이것이야말로 무한한 가치를 가진 것이다
							</div>
						</div>
						<div class="review_like">
							<div class="likeimg">
								<img alt="" src="${pageContext.request.contextPath}/assets/img/mypage/unlike_img.png">
							</div>
							<div class="otherreview_content">
								쓸쓸한 인간에 남는 것은 영락과 부패 뿐이다 낙원을 장식하는 천자만홍이 어디 있으며 인생을 풍부하게 하는 온갖 과실이 어디 있으랴? 이상! 우리의 청춘이 가장 많이 품고 있는 이상! 이것이야말로 무한한 가치를 가진 것이다
							</div>
						</div>
					</div>
					<div class="otherreview_last" style="margin-top: -3em;">
						<img alt="" src="">
						좋아요 12개
						<img alt="" src="">
						댓글 16개
					</div>
				</div>
			</div>
		</div>
		<nav aria-label="Page navigation example"  style="margin-left: 40%;">
		  <ul class="pagination justify-content-center">
		    <li class="page-item disabled">
		      <a class="page-link" href="#" tabindex="-1">Previous</a>
			    </li>
				    <li class="page-item"><a class="page-link" href="#">1</a></li>
				    <li class="page-item"><a class="page-link" href="#">2</a></li>
				    <li class="page-item"><a class="page-link" href="#">3</a></li>
				    <li class="page-item">
		      <a class="page-link" href="#">Next</a>
		    </li>
		  </ul>
		</nav>
	</div>
</div>
<!-- modal -->
<div class="modal fade" id="othermodal" role="dialog">
    <div class="dialog-m2"> 
      <!-- Modal content-->
      <div class="content-m-back2">
        <div class="header-m2">
          <button type="button" class="close-m" data-dismiss="modal">&times;</button>
          <h4 class="h4-m2">프로필</h4>
        </div>
        <div class="body-mp2">
          <form role="form">
            <div class="m-t-7 text-center ">
      			<img class="m-images" src="${pageContext.request.contextPath}/assets/img/mypage/profile.png">
      		</div>
            <div class="form-group2 m-f-g">
              <div class="m-t-4 text-center">
      			<span class="m-l-2">jklp01</span><br>
      		  </div>
      			<div class="m-t-3 text-center">
      				<span  class="badge">26세</span>
      				<span  class="badge">중성</span><br>
      				<div class="m-t-6 text-center"><br>
      					<button type="button" class="button button-toggle button-on">팔로우<img src="${pageContext.request.contextPath}/assets/img/mypage/heart(2).png" class="m-i" name="following" onclick="ChangeImage()"></button>
      				</div>
      			</div>
            </div>
          </form>
        </div>
        <div class="body-m2 b-t-card">
      	<div class="m-t-4f">
      		<div class="tab">
      			<div class="tab-item active">작성글(12)</div>
      		</div> 
      	</div>    	
      	</div>
      	<div class="contenier-m-c">
			<div class="c-m-m">
			    <div class="c-row">
			    	<div class="c-c-m-12">
			    		<div class="c-row-c ">
			    			<a class="c-n-h" href="#">
			    			<div class="c-c-i">
			    				<img class="c-c-i-100" src="https://via.placeholder.com/350x350">
			    			</div>
			    			<div class="c-c-t">
			    				<div class="c-c-t-t">
			    					제목 : 뭘까요?
			    				</div>
			    				<div class="c-c-t-c">
			    					어쩌구 저쩌구 어쩌구 저 쩌구
			    				</div>
			    				<div class="c-c-t-f">
			    					아이디/업데이터 날짜
			    				</div>
			    				
			    			</div>
			    			</a>
			    		</div>
			    	</div>
			    </div>
			  </div>
			 </div>
			 <nav aria-label="Page navigation example">
				  <ul class="modal-pagination pagination">
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				        <span class="sr-only">Previous</span>
				      </a>
				    </li>
					    <li class="page-item"><a class="page-link" href="#">1</a></li>
					    <li class="page-item"><a class="page-link" href="#">2</a></li>
					    <li class="page-item"><a class="page-link" href="#">3</a></li>
					    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				        <span class="sr-only">Next</span>
				      </a>
				   </li>
				</ul>
			</nav>
		</div>
	</div>
</div>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="mypage">
	<br><br>
	<h2>마이페이지</h2>
</div>
<div class="container content">
	<div class="row magazine-page">
		<div class="col-md-12">
			<div class="wrap_tab" data-id="${param.bc}">
				<ul class="list-inline top-v1-contacts" style="margin-left: 5%;">
			       <li id = "my_info">
			           <a href="${pageContext.request.contextPath}/mypage/my_info.do?bc=0" class="link_tab">
			               <span class="txt_menu">내 정보 보기</span>
			           </a>
			       </li>
			       <li id = "my_point">
			           <a href="${pageContext.request.contextPath}/mypage/my_point.do?bc=1" class="link_tab">
			               <span class="txt_menu">포인트 사용 내역</span>
			           </a>
			       </li>
			       <li id = "my_reviewmyreview">
			           <a href="${pageContext.request.contextPath}/mypage/my_reviewmyreview.do?bc=2" class="link_tab">
			                <span class="txt_menu">내 리뷰/스크랩</span>
			           </a>
			       </li>
			       <li id = "my_favoritebrand">
			           <a href="${pageContext.request.contextPath}/mypage/my_favoriteproduct.do?bc=3" class="link_tab">
			                <span class="txt_menu">즐겨찾기</span>
			           </a>
			       </li>
			       <li id = "my_cartorder">
			           <a href="${pageContext.request.contextPath}/mypage/my_cartorder.do?bc=4" class="link_tab">
			                 <span class="txt_menu">화해쇼핑</span>
			           </a>
			       </li>
			       <li id = "my_eventdoing">
			           <a href="${pageContext.request.contextPath}/mypage/my_eventdoing.do?bc=5" class="link_tab">
			                  <span class="txt_menu">화해 이벤트</span>
			           </a>
			       </li>
			       <li id = "my_QnA">
			           <a href="${pageContext.request.contextPath}/mypage/my_QnA.do?bc=6" class="link_tab">
			                  <span class="txt_menu">문의하기</span>
			           </a>
			        </li>
			    </ul>
			</div>
		</div>
	</div>
</div>
<script>
    /**
     * 최초 호출되는 init 함수이다.
     *
     * @method init
     * @para {Integer} age 나이
     */
    (function init () {
        // 선택된 메뉴를 표시한다.
        if (0 !== $('#' + window.location.pathname.split("/")[3].split(".")[0]).length) {
            $('#' + window.location.pathname.split("/")[3].split(".")[0]).addClass("on");
        }
    }());
     
    $(document).ready(function(){
    	if($('.wrap_tab').attr('data-id')==2){
    		$('#my_reviewmyreview').addClass('on');
    	}else if($('.wrap_tab').attr('data-id')==3){
    		$('#my_favoritebrand').addClass('on');
    	}else if($('.wrap_tab').attr('data-id')==4){
    		$('#my_cartorder').addClass('on');
    	}else if($('.wrap_tab').attr('data-id')==5){
    		$('#my_eventdoing').addClass('on');
    	}
    }); 
     
     
</script>
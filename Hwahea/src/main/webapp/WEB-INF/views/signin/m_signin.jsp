<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/mypage.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/daumAPI.js"></script>
<script type="text/javascript">
function maxLengthCheck(object){
    if (object.value.length > object.maxLength){
      object.value = object.value.slice(0, object.maxLength);
    }    
  }
  
</script>
<div class="contentwrap">
  <article class="container">
    <div class="page-header">
	  <h1>회원가입 <small>일반회원가입</small></h1>
    </div>
    <form class="form-horizontal">
	    <div class="form-group">
		    <label for="inputEmail" class="col-sm-2 control-label">이메일</label>
		    <div class="col-sm-6">
		    	<input type="email" class="form-control" id="inputEmail" placeholder="이메일">
		    </div>
	    </div>
	    <div class="form-group">
		    <label for="nickName" class="col-sm-2 control-label">닉네임</label>
		    <div class="col-sm-6">
		    	<input type="text" class="form-control" id="inputEmail" placeholder="닉네임">
		    </div>
	    </div>
	    <div class="form-group">
		    <label for="inputPassword" class="col-sm-2 control-label">비밀번호</label>
		    <div class="col-sm-6">
		    	<input type="password" class="form-control" id="inputPassword" placeholder="비밀번호">
		    	<p class="help-block">숫자, 특수문자 포함 8자 이상</p>
		    </div>
	    </div>
	    <div class="form-group">
		    <label for="inputPasswordCheck" class="col-sm-2 control-label">비밀번호 확인</label>
		    <div class="col-sm-6">
		   		<input type="password" class="form-control" id="inputPasswordCheck" placeholder="비밀번호 확인">
		      	<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
		    </div>
	    </div>
	    <div class="form-group">
		    <label for="inputName" class="col-sm-2 control-label">이름</label>
		    <div class="col-sm-6">
		    	<input type="text" class="form-control" id="inputName" placeholder="이름">
		    </div>
	    </div>
	    <div class="form-group">
			<label for="Gender" class="col-sm-2 control-label">성별 </label>
			<div class="col-sm-6">
				<input name="gender" type="radio" id="woman" class="radio">
				  <label for="woman" class="radio-label">
			    <i class="fa fa-check"></i>
			    <span>여</span>
			  </label>
			  <input name="gender" type="radio" id="man" class="radio">
			  <label for="man" class="radio-label">
			    <i class="fa fa-check"></i>
			    <span>남</span>
			  </label>
			</div>
		</div>
	    <div class="form-group">
			<label for="Age" class="col-sm-2 control-label">연령 </label>
			<div class="col-sm-6">
				<select name="age" class="form-control" style="width: 30%;">
					<% for (int i=2018 ; i>=1950 ; i--) { %>
					<option value="<%= i %>"><%= i %>년도</option>
					<% } %>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label for="Havechlid" class="col-sm-2 control-label">자녀유무  </label> 
			<div class="col-sm-6">
				<input name="havechlid" type="radio"id="havechlid" class="radio"> 
				<label for="havechlid"class="radio-label"> <i class="fa fa-check"></i> <span>유</span></label> 
				<input name="havechlid" type="radio" id="donthave" class="radio">
				<label for="donthave" class="radio-label"> <i class="fa fa-check"></i> <span>무</span></label>
			</div>
		</div>
		<div class="form-group">
			<label for="skintype" class="col-sm-2 control-label">피부타입  </label>
			<div class="col-sm-6">
			  <input name="skintype" type="radio" id="dry" class="radio">
				  <label for="dry" class="radio-label">
				    <i class="fa fa-check"></i>
				    <span>건성</span>
				  </label>
			  <input name="skintype" type="radio" id="middle" class="radio">
				  <label for="middle" class="radio-label">
				    <i class="fa fa-check"></i>
				    <span>중성</span>
				  </label>
			  <input name="skintype" type="radio" id="oily" class="radio">
				  <label for="oily" class="radio-label">
				    <i class="fa fa-check"></i>
				    <span>지성</span>
				  </label>
			  <input name="skintype" type="radio" id="mixed" class="radio">
				  <label for="mixed" class="radio-label">
				    <i class="fa fa-check"></i>
				    <span>복합성</span>
				  </label>
			</div>
		</div>
		<div class="form-group">
			<label for="skintroubble" class="col-sm-2 control-label">피부고민  </label>
			<div class="col-sm-6">
			  <input name="trouble" type="checkbox" id="z" class="checkbox">
			  <label for="z" class="checkbox-label">
			    <i class="fa fa-check"></i>
			    <span>해당없음</span>
			  </label>
			  <input name="trouble" type="checkbox" id="atopic" class="checkbox">
			  <label for="atopic" class="checkbox-label">
			    <i class="fa fa-check"></i>
			    <span>아토피</span>
			  </label>
			  <input name="trouble" type="checkbox" id="pimple" class="checkbox">
			  <label for="pimple" class="checkbox-label">
			    <i class="fa fa-check"></i>
			    <span>여드름</span>
			  </label>
			  <input name="trouble" type="checkbox" id="susceptilbility" class="checkbox">
			  <label for="susceptilbility" class="checkbox-label">
			    <i class="fa fa-check"></i>
			    <span>민감성</span>
			  </label>
			</div>
		</div>
		<div class="form-group">
			<label for="phone" class="col-sm-2 control-label">휴대전화</label>
			<div class="col-sm-6">
				<input type="number" name="phone1" placeholder="010" class="num_phone form-control col-md-3" maxlength="3" oninput="maxLengthCheck(this)">
				<input type="number" name="phone2" placeholder="1234" class="num_phone form-control col-md-3" maxlength="4" oninput="maxLengthCheck(this)">
				<input type="number" name="phone3" placeholder="5678" class="num_phone form-control col-md-3" maxlength="4" oninput="maxLengthCheck(this)">
			</div>
		</div>
		<div class="form-group">
			<label for="phone" class="col-sm-2 control-label">일반전화</label>
			<div class="col-sm-6">
				<input type="number" name="num_phone" placeholder="02" class="num_phone form-control col-md-3" maxlength="3" oninput="maxLengthCheck(this)">
				<input type="number" name="num_phone" placeholder="1234" class="num_phone form-control col-md-3" maxlength="4" oninput="maxLengthCheck(this)">
				<input type="number" name="num_phone" placeholder="5678" class="num_phone form-control col-md-3" maxlength="4" oninput="maxLengthCheck(this)">
			</div>
		</div>
		<div class="form-group">
			<label for="address" class="col-sm-2 control-label">주소지</label>
			<div class="col-sm-6">
				<input type="text" id="sample6_postcode" class="form-control col-md-4" style="width: 70px !important;">
				<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="col-md-4" style="width: 110px !important;">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-6">
				<input type="text" id="sample6_address" placeholder="주소" class="form-control col-md-6" style="margin-left: 35%;">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-6">
				<input type="text" id="sample6_address2" placeholder="상세주소" class="form-control col-md-6" style="margin-left: 35%;">
			</div>
		</div>
		<div class="form-group">
		    <label for="inputName" class="col-sm-2 control-label"></label>
		    <div class="col-sm-6">
		      <button type="submit" class="btn btn-primary">회원가입</button>
		    </div>
	    </div>
    </form>
  </article>
</div>
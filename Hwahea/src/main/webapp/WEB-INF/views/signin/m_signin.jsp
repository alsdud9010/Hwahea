<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/mypage.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/daumAPI.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/signin.js"></script>
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
    <form:form commandName="command" class="form-horizontal" action="m_signin.do" id="register_form">
    	<div class="form-group">
		    <label for="m_id" class="col-sm-2 control-label">아이디</label>
		    <div class="col-sm-6">
				<form:input path="m_id" class="form-control2" id="m_id" placeholder="아이디"/>
				<input type="button" id="confirmId" value="ID중복체크" class="cfid"> <span id="message_id"></span>
		    </div>
	    </div>
	    <div class="form-group">
		    <label for="m_email" class="col-sm-2 control-label">이메일</label>
		    <div class="col-sm-6">
		    	<form:input type="email" path="m_email" class="form-control" id="m_email" placeholder="이메일"/>
		    </div>
	    </div>
	    <div class="form-group">
		    <label for="nickName" class="col-sm-2 control-label">닉네임</label>
		    <div class="col-sm-6">
		    	<form:input path="m_nickname" class="form-control" id="m_nickname" placeholder="닉네임"/>
		    </div>
	    </div>
	    <div class="form-group">
		    <label for="inputPassword" class="col-sm-2 control-label">비밀번호</label>
		    <div class="col-sm-6">
		    	<form:password path="m_passwd" class="form-control" id="m_passwd" placeholder="비밀번호"/>
		    	<p class="help-block">숫자, 특수문자 포함 8자 이상</p>
		    </div>
	    </div>
	    <div class="form-group">
		    <label for="inputPasswordCheck" class="col-sm-2 control-label">비밀번호 확인</label>
		    <div class="col-sm-6">
		   		<input type="password" class="form-control" id="inputPasswordCheck" placeholder="비밀번호 확인"/>
		      	<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
		    </div>
	    </div>
	    <div class="form-group">
		    <label for="inputName" class="col-sm-2 control-label">이름</label>
		    <div class="col-sm-6">
		    	<form:input type="text" path="m_name" class="form-control" id="inputName" placeholder="이름"/>
		    </div>
	    </div>
	    <div class="form-group">
			<label for="Gender" class="col-sm-2 control-label">성별 </label>
			<div class="col-sm-6">
				<form:radiobutton path="m_gender" id="woman" class="radio" value="0"/>
			  	<label for="woman" class="radio-label">
				    <i class="fa fa-check"></i>
				    <span>여</span>
			  	  </label>
				<form:radiobutton path="m_gender" id="man" class="radio" value="1"/>
				<label for="man" class="radio-label">
				    <i class="fa fa-check"></i>
				    <span>남</span>
				</label>
			</div>
		</div>
	    <div class="form-group">
			<label for="Age" class="col-sm-2 control-label">연령 </label>
			<div class="col-sm-6">
				<select name="m_age" class="form-control" style="width: 30%;">
					<c:forEach var="i" begin="0" end="${2018-1950}">
					    <c:set var="year" value="${2018-i}" />
					    <option value="${year}">${year}</option>
					</c:forEach>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label for="havechlid" class="col-sm-2 control-label">자녀유무  </label> 
			<div class="col-sm-6">
			  <form:radiobutton path="m_havechild" id="m_havechild" class="radio" value="0"/> 
				<label for="havechlid"class="radio-label"> 
				  <i class="fa fa-check"></i> 
				  <span>유</span>
				</label> 
			  <form:radiobutton path="m_havechild" id="donthave" class="radio" value="1"/>
				<label for="donthave" class="radio-label">
				  <i class="fa fa-check"></i> 
				  <span>무</span>
				</label>
			</div>
		</div>
		<div class="form-group">
			<label for="skintype" class="col-sm-2 control-label">피부타입  </label>
			<div class="col-sm-6">
			  <form:radiobutton path="m_skintype" id="dry" class="radio" value="0"/>
				  <label for="dry" class="radio-label">
				    <i class="fa fa-check"></i>
				    <span>건성</span>
				  </label>
			  <form:radiobutton path="m_skintype" id="middle" class="radio" value="1"/>
				  <label for="middle" class="radio-label">
				    <i class="fa fa-check"></i>
				    <span>중성</span>
				  </label>
			  <form:radiobutton path="m_skintype" id="oily" class="radio" value="2"/>
				  <label for="oily" class="radio-label">
				    <i class="fa fa-check"></i>
				    <span>지성</span>
				  </label>
			  <form:radiobutton path="m_skintype" id="mixed" class="radio" value="3"/>
				  <label for="mixed" class="radio-label">
				    <i class="fa fa-check"></i>
				    <span>복합성</span>
				  </label>
			</div>
		</div>
		<div class="form-group">
			<label for="skintrouble" class="col-sm-2 control-label">피부고민  </label>
			<div class="col-sm-6">
			  <input type="checkbox" name="trouble" id="z" class="checkbox" value="0">
			  <label for="z" class="checkbox-label">
			    <i class="fa fa-check"></i>
			    <span>해당없음</span>
			  </label>
			  <input type="checkbox" name="m_atopy" id="atopy" class="checkbox" value="1">
			  <label for="atopy" class="checkbox-label">
			    <i class="fa fa-check"></i>
			    <span>아토피</span>
			  </label>
			  <input type="checkbox" name="m_pimple" id="pimple" class="checkbox" value="1">
			  <label for="pimple" class="checkbox-label">
			    <i class="fa fa-check"></i>
			    <span>여드름</span>
			  </label>
			  <input type="checkbox" name="m_susceptilbility" id="susceptilbility" class="checkbox" value="1">
			  <label for="susceptilbility" class="checkbox-label">
			    <i class="fa fa-check"></i>
			    <span>민감성</span>
			  </label>
			</div>
		</div>
		<div class="form-group">
			<label for="phone" class="col-sm-2 control-label">휴대전화</label>
			<div class="col-sm-6">
				<form:input path="m_phone1" type="number" id="inputMobile1" placeholder="010" class="num_phone form-control col-md-3" maxlength="3" oninput="maxLengthCheck(this)"/>
				<form:input path="m_phone2" type="number" id="inputMobile2" placeholder="1234" class="num_phone form-control col-md-3" maxlength="4" oninput="maxLengthCheck(this)"/>
				<form:input path="m_phone3" type="number" id="inputMobile3" placeholder="5678" class="num_phone form-control col-md-3" maxlength="4" oninput="maxLengthCheck(this)"/>
			</div>
		</div>
		<div class="form-group">
			<label for="phone" class="col-sm-2 control-label">일반전화</label>
			<div class="col-sm-6">
				<form:input path="m_zipphone1" type="number" placeholder="02" class="num_phone form-control col-md-3" maxlength="3" oninput="maxLengthCheck(this)"/>
				<form:input path="m_zipphone2" type="number" placeholder="1234" class="num_phone form-control col-md-3" maxlength="4" oninput="maxLengthCheck(this)"/>
				<form:input path="m_zipphone3" type="number" placeholder="5678" class="num_phone form-control col-md-3" maxlength="4" oninput="maxLengthCheck(this)"/>
			</div>
		</div>
		<div class="form-group">
			<label for="address" class="col-sm-2 control-label">주소지</label>
			<div class="col-sm-6">
				<form:input path="m_zipcode" id="sample6_postcode" class="form-control col-md-4" style="width: 70px !important;"/>
				<input type="button" name="m_zipcode" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="zipcood-bt" style="width: 110px !important;">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-6">
				<form:input path="m_address1" id="sample6_address" placeholder="주소" class="form-control col-md-6" style="margin-left: 35%;"/>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-6">
				<form:input path="m_address2" id="sample6_address2" placeholder="상세주소" class="form-control col-md-6" style="margin-left: 35%;"/>
			</div>
		</div>
		<div class="form-group">
		    <label for="inputName" class="col-sm-2 control-label"></label>
		    <div class="col-sm-6">
		      <button type="submit" class="signin" id="join-submit">회원가입</button>
		    </div>
	    </div>
    </form:form>
  </article>
</div>
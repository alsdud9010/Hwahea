 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/mypage.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/daumAPI.js"></script>

<script type="text/javascript">
   
  function maxLengthCheck(object){
    if (object.value.length > object.maxLength){
      object.value = object.value.slice(0, object.maxLength);
    }    
  }
  
  window.onload=function(){
      //파일을 선택할 때
      document.getElementById('ex_file').onchange=function(){
         readImage();   
      };
   };
   function readImage(){
      var file= document.getElementById('ex_file');
      if(file.files && file.files[0]){
         //선택한 파일의 정보 사용 가능
         
         var reader = new FileReader();
         //선택한 이미지 읽기
         reader.readAsDataURL(file.files[0]);
         
         //선택한 이미지 일기 작업이 완료되면 함수 호출
         reader.onload = function(){
            var image = document.getElementById('profile_image');
            image.src = reader.result;//이미지 경로
            //img 태그 노출
            image.style.display='';
            
         };
      }
   };

  
</script>
<style>
.filebox {display:inline-block; float: right; margin-bottom: 32px;}

.filebox label {
  display: inline-block;
  padding: .5em .75em;
  color: #999;
  font-size: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #fdfdfd;
  cursor: pointer;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
  margin-top: 115px;
  margin-right: -121px;
}

.filebox input[type="file"] {  /* 파일 필드 숨기기 */
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;
}

.filebox.bs3-primary label {
  color: #fff;
  background-color: #337ab7;
    border-color: #2e6da4;
}

.filebox.bs3-success label {
  color: #fff;
  background-color: #5cb85c;
    border-color: #4cae4c;
}
</style>
<div class="container content">
   <div class="row magazine-page">
      <div class="col-md-12" style="margin-left: 5%;">
         <form:form action="my_info.do" commandName="command" encType="multipart/form-data">
         <form:hidden path="m_id"/>
         <div class="ranking">
            <b>내 등급  : <c:choose>
					  <c:when test="${user_auth==1}"><span class="grade_welcome"><input type="button"value="welcome"></span></c:when>
					  <c:when test="${user_auth==2}"><span class="grade_family"><input type="button"value="family"></span></c:when>
					  <c:when test="${user_auth==3}"><span class="grade_vip"><input type="button"value="vip"></span></c:when>
					  <c:when test="${user_auth==4}"><span class="grade_vvip"><input type="button"value="vvip"></span></c:when>						  
					</c:choose> </b>
         </div>
         <div class="top_about">
            기본 정보 수정하기
         </div>
         <div class="form_info">
            <div class="myinfo_form">
               <ul>
                  <li><div class="col-md-12"><label>이메일 : </label>
                     <form:input path="m_email" placeholder="${command.m_email}" class="form-control" style=""/>                  
                  </div></li>
                  <li><div class="col-md-12 col-sm-12"><label>닉네임 : </label>
                     <form:input path="m_nickname" placeholder="${command.m_nickname}" class="form-control"/>
                  </div></li>
               </ul>
            </div>
            <div class="info_img">
               <div class="filebox" style="font-style: right;">
               <img  id="profile_image" src="imageView.do?m_id=${command.m_id}">
               
                          <label for="ex_file">프로필 업로드</label> 
                          <input type="file" name="upload" id="ex_file">                           
                    </div>
            </div>
            <div class="choose_me">
               나를 즐겨찾기한 사용자 : 58명
            </div>
         </div>
         <hr width="90%" class="hrtag">
         <div class="top_about">
            기본 타입 수정하기
         </div>
         <div class="second_form_info">
            <div class="form_top">
               <ul>
                  <li>
                     <div class="info_choice col-md-8">
                        <label>성별 : </label>
                       <input name="gender" type="radio" id="woman" class="radio"  <c:if test="${command.m_gender == 0}">checked</c:if>>
                       <label for="woman" class="radio-label">
                         <i class="fa fa-check"></i>
                         <span>여</span>
                       </label>
                       <input name="gender" type="radio" id="man" class="radio"  <c:if test="${command.m_gender == 1}">checked</c:if>>
                       <label for="man" class="radio-label">
                         <i class="fa fa-check"></i>
                         <span>남</span>
                       </label>
                     </div>
                  </li>
                  <li>
                     <div class="info_choice col-md-8">
                        <div class="col-md-3" style="margin-left: -1.2em;margin-top: 0.4em;">
                           <label>연령 : </label>
                        </div>
                        <div class="col-md-9" style="margin-left: -8.7em;margin-bottom: 0.3em">
                           <select name="age" class="form-control" style="width: 30%;">
                              <% for (int i=2018 ; i>=1950 ; i--) { %>
                              <c:set var="idx" value="<%= i %>"/>
                              <option value="<%= i %>"<c:if test="${command.m_age == idx}">selected</c:if>><%= i %>년도</option>
                              <% } %>
                           </select>
                        </div>
                     </div>
                  </li>
                  <li>
                     <div class="info_choice col-md-8">
                        <label>자녀유무 : </label>
                       <input name="havechild" type="radio" id="havechidd" class="radio" value="0" <c:if test="${command.m_havechild == 0}">checked</c:if>>
                       <label for="havechild" class="radio-label">
                         <i class="fa fa-check"></i>
                         <span>유</span>
                       </label>
                       <input name="havechild" type="radio" id="donthave" class="radio" value="1" <c:if test="${command.m_havechild == 1}">checked</c:if>>
                       <label for="donthave" class="radio-label">
                         <i class="fa fa-check"></i>
                         <span>무</span>
                       </label>
                     </div>
                  </li>
                  <li>
                     <div class="info_choice col-md-8">
                        <label>피부타입 : </label>
                       <input name="skintype" type="radio" id="dry" class="radio" value="0" <c:if test="${command.m_skintype == 0}">checked</c:if>>
                       <label for="dry" class="radio-label">
                         <i class="fa fa-check"></i>
                         <span>건성</span>
                       </label>
                       <input name="skintype" type="radio" id="middle" class="radio" value="1" <c:if test="${command.m_skintype == 1}">checked</c:if>>
                       <label for="middle" class="radio-label">
                         <i class="fa fa-check"></i>
                         <span>중성</span>
                       </label>
                       <input name="skintype" type="radio" id="oily" class="radio" value="2" <c:if test="${command.m_skintype == 2}">checked</c:if>>
                       <label for="oily" class="radio-label">
                         <i class="fa fa-check"></i>
                         <span>지성</span>
                       </label>
                       <input name="skintype" type="radio" id="mixed" class="radio" value="3" <c:if test="${command.m_skintype == 3}">checked</c:if>>
                       <label for="mixed" class="radio-label">
                         <i class="fa fa-check"></i>
                         <span>복합성</span>
                       </label>
                     </div>
                  </li>
                  <li>
                     <div class="info_choice col-md-8">
                        <label>피부고민 : </label>
                       <input name="trouble" type="checkbox" id="z" class="checkbox" 
                       	<c:if test="${command.m_atopy == 0 && command.m_pimple == 0 && command.m_susceptilbility == 0}">checked</c:if>>
                       <label for="z" class="checkbox-label">
                         <i class="fa fa-check"></i>
                         <span>해당없음</span>
                       </label>
                       <input name="m_atopy" type="checkbox" id="atopic" class="checkbox" value="1" 
                       	<c:if test="${command.m_atopy == 1}">checked</c:if>>
                       <label for="atopic" class="checkbox-label">
                         <i class="fa fa-check"></i>
                         <span>아토피</span>
                       </label>
                       <input name="m_pimple" type="checkbox" id="pimple" class="checkbox" value="1"
                        <c:if test="${command.m_pimple == 1}">checked</c:if>>
                       <label for="pimple" class="checkbox-label">
                         <i class="fa fa-check"></i>
                         <span>여드름</span>
                       </label>
                       <input name="m_susceptilbility" type="checkbox" id="susceptilbility" class="checkbox" value="1"
                       	<c:if test="${command.m_susceptilbility == 1}">checked</c:if>>
                       <label for="susceptilbility" class="checkbox-label">
                         <i class="fa fa-check"></i>
                         <span>민감성</span>
                       </label>
                     </div>
                  </li>
               </ul>
            </div>
         </div>
         <hr width="90%" class="hrtag">
         <div class="top_about">
            기본 배송지 수정하기
         </div>
         <div class="second_form_info col-md-12" style="height: 270px;">
            <div class="form_top ">
               <ul style="margin-left: -4em;">
                  <li class="col-md-12">
                     <div class="info_choice col-md-12">
                        <label class="col-md-3">수령인 : </label>
                        <div class="col-md-9" style="margin-left: -7.5em; margin-top: -0.5em;">
                           <form:input path="m_takename" name="address_name" placeholder="${command.m_name}" class="form-control getname"/>
                        </div>
                     </div>
                  </li>
                  <li class="col-md-12">
                     <div class="info_choice col-md-12">
                        <label class="col-md-3" style="margin-top:3px;">휴대전화 : </label>
                        <form:input path="m_phone1" name="m_phone1" placeholder="${command.m_phone1}" class="num_phone form-control col-md-3" maxlength="3" oninput="maxLengthCheck(this)" style="margin-left: -5em;"/>
                        <form:input path="m_phone2" name="m_phone2" placeholder="${command.m_phone2}" class="num_phone form-control col-md-3" maxlength="4" oninput="maxLengthCheck(this)"/>
                        <form:input path="m_phone3" name="m_phone3" placeholder="${command.m_phone3}" class="num_phone form-control col-md-3" maxlength="4" oninput="maxLengthCheck(this)"/>
                     </div>
                  </li>
                  <!-- null값 허용 -->
                  <li class="col-md-12">
                     <div class="info_choice col-md-12">
                        <label class="col-md-3" style="margin-top:3px;">일반전화 : </label>
                        <form:input path="m_zipphone1" name="m_zipphone1" placeholder="${command.m_zipphone1}" class="num_phone form-control col-md-3" maxlength="3" oninput="maxLengthCheck(this)" style="margin-left: -5em;"/>
                        <form:input path="m_zipphone2" name="m_zipphone2" placeholder="${command.m_zipphone2}" class="num_phone form-control col-md-3" maxlength="4" oninput="maxLengthCheck(this)"/>
                        <form:input path="m_zipphone3" name="m_zipphone3" placeholder="${command.m_zipphone3}" class="num_phone form-control col-md-3" maxlength="4" oninput="maxLengthCheck(this)"/>
                     </div>
                  </li>
                  <li class="col-md-12" style="margin-left: 14px;">
                     <div class="info_choice col-md-12" style="margin-left: -1em;">
                        <label class="col-md-4">주소 : </label>
                        <form:input path="m_zipcode" name="m_zipcode" id="sample6_postcode" placeholder="${command.m_zipcode}" class="form-control col-md-4"  style="width: 70px !important; margin-left: -8.4em;"/>
                        <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="zipcood-bt" style="width: 110px !important; margin-left: -3em;">
                     </div>
                     <div class="address col-md-12">
                        <div class="info_choice col-md-12">
                           <form:input path="m_address1" name="m_address1" id="sample6_address" placeholder="${command.m_address1}" class="form-control col-md-6"/>
                        </div>
                        <div class="info_choice col-md-12">
                           <form:input path="m_address2" name="m_address2" id="sample6_address2" placeholder="${command.m_address2}" class="form-control col-md-6"/>
                        </div>
                     </div>
                  </li>
               </ul>
            </div>
         </div>
         <div  class="form_top col-md-12">
            <div class="bnt_set_last">
               <input type="submit" value="수정하기" class="zipcood-bt">
               <input type="button" value="탈퇴하기" class="zipcood-bt">
            </div>
         </div>
         </form:form>
      </div>
   </div>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
.table-detail{
	border:1px solid #ddd;
}
.table-detail th{
	background:#ededed;  
}
.tr-44{
	
    width: 100%;
    height: 34px;
     
}
</style> 
 
<div class="right_col" role="main">
	<div class="">
	<div class="page-title">
		<div class="title_left">
			<h1>회원 상세 정보</h1>
		</div>
    
   			 <div class="col-md-12 col-sm-12 col-xs-12" style="text-align:center;"> 
                
                  <div class="x_title">
                    <div class="clearfix"></div>
                  </div>
                  

                    <table class="table table-bordered table-detail">
                    <tbody> 
	                   <tr> 
                          <th>아이디</th>
                          <td>drogon</td>
                          <th>비밀번호</th>
                          <td>Mark123</td>            
                          <th>이름</th>
                          <td>김드래곤</td>
                          <th>닉네임</th>
                          <td>Larry</td>              
                        </tr>
                        <tr>
                          <th rowspan="3">프로필 사진</th>
                          <td rowspan="3">1513515.jpg</td>
                          <th>이메일 주소</th>
                          <td colspan="3">test@test.com</td>
                          <th>연령</th>
                          <td>25세</td>
                        </tr>
                        <tr>
                       	 <th>성별</th>
                          <td>남</td>
                          <th>자녀 유무</th>
                          <td>유</td>
                          <th>피부 타입</th>
                          <td>건성</td>
                        </tr>
                        <tr>
                          <th>아토피</th>
                          <td>무</td>
                          <th>여드름</th>
                          <td>무</td>
                          <th>민감성</th>
                          <td>유</td>
                        </tr>
                        <tr>
                          <th>택배를 받을 성함</th>
                          <td>김스카이</td>
                          <th>이동전화</th>
                          <td>010-1234-5678</td>
                          <th>자택전화</th>
                          <td>02-1234-5678</td>
                          <th>우편번호</th>
                          <td>04531</td>
                        </tr>                        
                        <tr>
                          <th rowspan="2">주소</th>
                          <td rowspan="2">경기도 가평시 152-12</td> 
                          <th>상세주소</th>
                          <td colspan="5">kh아파트 103-202</td> 
                        </tr>
                        <tr>
                        	<th>회원 포인트</th> 
                          <td colspan="2">1500point</td>
                          <th>가입 일자 </th> 
                          <td colspan="2">2018-09-06</td>
                        </tr>
					</tbody>
                   </table>

               <div style="text-align:center;">
                <button type="button" class="btn btn-success btn-lg" onclick="location.href='adminUser.do'">목록보기</button>
                </div>
              </div>
             </div>
            </div>
           </div>
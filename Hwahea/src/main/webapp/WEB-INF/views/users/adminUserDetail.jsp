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
                          <td>${users.m_id }</td>
                          <th>비밀번호</th>
                          <td>${users.m_passwd }</td>            
                          <th>이름</th>
                          <td>${users.m_name }</td>
                          <th>닉네임</th>
                          <td>${users.m_nickname }</td>              
                        </tr>
                        <tr>
                          <th rowspan="3">프로필 사진</th>
                          <td rowspan="3">${users.m_profile}</td>
                          <th>이메일 주소</th>
                          <td colspan="3">${users.m_email }</td>
                          <th>연령</th>
                          <td>${users.m_age}</td>
                        </tr>
                        <tr>
                       	 <th>성별</th>
                          <td>${users.m_gender }</td>
                          <th>자녀 유무</th>
                          <td>${users.m_havechild }</td>
                          <th>피부 타입</th>
                          <td>${users.m_skintype}</td>
                        </tr>
                        <tr>
                          <th>아토피</th>
                          <td>${users.m_atopy }</td>
                          <th>여드름</th>
                          <td>${users.m_pimple }</td>
                          <th>민감성</th>
                          <td>${users.m_susceptilbility }</td>
                        </tr>
                        <tr>
                          <th>택배를 받을 성함</th>
                          <td>${users.m_takename }</td>
                          <th>이동전화</th>
                          <td>${users.m_phone1 }-${users.m_phone2}-${users.m_phone3 }</td>
                          <th>자택전화</th>
                          <td>${users.m_zipphone1 }-${users.m_zipphone2}-${users.m_zipphone3 }</td>
                          <th>우편번호</th>
                          <td>${users.m_zipcode }</td>
                        </tr>                        
                        <tr>
                          <th rowspan="2">주소</th>
                          <td rowspan="2">${users.m_address1 }</td> 
                          <th>상세주소</th>
                          <td colspan="5">${users.m_address2}</td> 
                        </tr>
                        <tr>
                        	<th>회원 포인트</th> 
                          <td colspan="2">${users.m_point}</td>
                          <th>가입 일자 </th> 
                          <td colspan="2">${users.m_reg_date }</td> 
                        </tr>
					</tbody>
                   </table>

               <div style="text-align:center;">
                <button type="button" class="btn btn-success btn-lg" onclick="location.href='adminUserList.do'">목록보기</button>
                </div>
              </div>
             </div>
            </div>
           </div>
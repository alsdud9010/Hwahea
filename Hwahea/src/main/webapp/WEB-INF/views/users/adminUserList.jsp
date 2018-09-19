<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h1>회원 관리</h1>
			</div>
			
                <div class="x_panel">
                  <div class="x_title">
                    <h2>회원 상세 정보 리스트 <small>회원 목록</small></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <table id="datatable" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>아이디</th>
                          <th>이름</th>
                          <th>닉네임</th>
                          <th>성별</th>
                          <th>가입 날짜</th>
                          <th>상세 보기</th>
                        </tr>
                      </thead>


                      <tbody>
                      <c:forEach var="users" items="${list }">
                        <tr>
                          <td>${users.m_id }</td>
                          <td>${users.m_name }</td>
                          <td>${users.m_nickname }</td>
                          <td>${users.m_gender }</td>
                          <td>${users.m_reg_date }</td>
                          <td><button type="button" class="btn btn-success btn-xs" onclick="location.href='adminUserDetail.do?m_id=${users.m_id}'">상세 보기</button>
						</td>
                    </tr>
                   </c:forEach>
                        
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
		</div>
	</div>
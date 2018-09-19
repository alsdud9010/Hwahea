<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h1>공지사항</h1>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">	
				<div class="x_panel">             
                    <div class="table-responsive">
                      <table class="table table-striped jambo_table bulk_action">
                        <thead>
                          <tr class="headings">
                            <th>
                              <input type="checkbox" id="check-all" class="flat">
                            </th>
                            <th class="column-title">Number</th>
                            <th class="column-title">글 분류</th>
                            <th class="column-title">글 제목 </th>
                            <th class="column-title">등록일자 </th>
                            <th class="column-title">등록한 아이디</th>  
                            <th class="column-title">첨부 파일</th>
                            <th class="bulk-actions" colspan="7">
                              <a class="antoo" style="color:#fff; font-weight:500;">선택 ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                            </th>
                          </tr>
                        </thead>

                        <tbody>
                        <c:forEach var="notice" items="${list }">
                          <tr class="even pointer">
                            <td class="a-center ">
                              <input type="checkbox" class="flat" name="table_records">
                            </td>
                            <td class=" ">${notice.notice_num}</td>
                            <td class=" ">
                            <c:if test="${notice.notice_kind == 0 }">
                            	일반
                            </c:if>
                            <c:if test="${notice.notice_kind == 1 }">
                            	블라인드 된 리뷰
                            </c:if>
                            <c:if test="${notice.notice_kind == 2 }">
                            	이벤트(당첨자 발표)
                            </c:if>
                            </td>
                            <td class=" ">${notice.notice_title }</td>
                            <td class=" ">${notice.notice_reg_date }</td>
                            <td class=" ">${notice.notice_id }</td>
                            <td class=" ">${notice.notice_filename }</td>
                          </tr>
                          </c:forEach>
                        </tbody>
                      </table>
                    </div>
				</div>
				
			</div>
		</div>
	</div>
</div>
    
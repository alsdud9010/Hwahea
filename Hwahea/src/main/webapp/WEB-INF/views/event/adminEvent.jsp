<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<h1>관리자 이벤트</h1>
				</div>
				<div class="x_panel">				                 
    				<div class="x_title">
                    <h2>관리자 이벤트<small>유형</small></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                  <c:forEach var="event" items="${list }">
					<div class="col-md-55">
                        <div class="thumbnail">
                          <div class="image view view-first">
                            <img style="width: 100%; display: block;" src="eventImageView.do?event_num=${event.event_num }" alt="image" />
                            <div class="mask no-caption">
                              <div class="tools tools-bottom">
                                <a href="${pageContext.request.contextPath }/event/adminEventUpdate.do"><i class="fa fa-pencil"></i></a>
                                <a href="${pageContext.request.contextPath }/adminEventDelete.do"><i class="fa fa-times"></i></a>
                              </div>
                            </div>
                          </div>
                          <div class="caption">
                            <p><strong>${event.event_name }</strong>
                            </p>
                            <p>${event.event_start } ~ ${event.event_end }</p>
                          </div>
                        </div>
                      </div>
                     </c:forEach>
                  </div>
                  </div>
             
                <div style="text-align:center;"> 
            	    <button type="button" class="btn btn-success btn-lg" onclick="location.href='adminEventRegister.do'">이벤트 등록하기</button>
                </div>
                
              </div>
				</div>
			</div>
		
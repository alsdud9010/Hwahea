<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h1>FAQ</h1>				
			</div>
			
			<div class="col-md-12 col-sm-12 col-xs-12">
			<form action="adminFAQ.do" id="adminFAQ_form" method="get">
			</form>
				<div class="x_panel">                 
    				<div class="accordion" id="accordion1" role="tablist" aria-multiselectable="true">
                      
                      <c:if test="${count == 0 }">
                      	<h4>등록된 FAQ가 없습니다.</h4>
                      </c:if>
                      
                      <c:if test="${count > 0 }">
                      <c:forEach var="FAQ" items="${list }">
                      	<div class="panel">
                        <a class="panel-heading" role="tab" id="headingOne1" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne${FAQ.faq_num }" aria-expanded="false" aria-controls="collapseOne">
                          <h4 class="panel-title"><small>${FAQ.faq_title }</small></h4>
                        </a>
                        <div id="collapseOne1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                          <div class="panel-body">
                            <p><strong>${FAQ.faq_content }</strong>
                            </p>
                          </div>
                        </div>
                      </div>
                      </c:forEach>
                      	
                      </c:if>
                    </div>
				</div>
				<div style="text-align:center;">
					<input type="button" class="btn btn-success btn-lg" value="FAQ등록" onclick="location.href='${pageContext.request.contextPath}/notice/adminFAQRegister.do'">
				</div>
			</div>			
              </div>
 		</div>      
	</div>
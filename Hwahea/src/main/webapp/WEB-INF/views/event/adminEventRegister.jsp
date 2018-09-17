<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/resources/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="${pageContext.request.contextPath}/resources/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="${pageContext.request.contextPath}/resources/vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- jQuery custom content scroller -->
<link href="${pageContext.request.contextPath}/resources/vendors/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css"
	rel="stylesheet" />
<!-- iCheck -->
<link href="${pageContext.request.contextPath}/resources/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
<!-- bootstrap-wysiwyg -->
<link href="${pageContext.request.contextPath}/resources/vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
<!-- Select2 -->
<link href="${pageContext.request.contextPath}/resources/vendors/select2/dist/css/select2.min.css" rel="stylesheet">
<!-- Switchery -->
<link href="${pageContext.request.contextPath}/resources/vendors/switchery/dist/switchery.min.css" rel="stylesheet">
<!-- starrr -->
<link href="${pageContext.request.contextPath}/resources/vendors/starrr/dist/starrr.css" rel="stylesheet">

<!-- Custom Theme Style -->
<link href="${pageContext.request.contextPath}/resources/build/css/custom.min.css" rel="stylesheet">
<!-- jQuery -->
<script src="${pageContext.request.contextPath}/resources/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="${pageContext.request.contextPath}/resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>

<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#content').summernote({
    	height:200,
    	fontNames : [ '맑은고딕', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', ],
		fontNamesIgnoreCheck : [ '맑은고딕' ],
		focus: true,
		callbacks: {
				onImageUpload: function(files, editor, welEditable) {
	            for (var i = files.length - 1; i >= 0; i--) {
	            	sendFile(files[i], this);
	            }
	        }
		} 	
    });  
    function sendFile(file, el) {
		var form_data = new FormData();
      	form_data.append('file', file);
      	$.ajax({
        	data: form_data,
        	type: "POST",
        	url: './imageUploader.do',
        	cache: false,
        	contentType: false,
        	enctype: 'multipart/form-data',
        	processData: false,
        	success: function(img_name) {
          		$(el).summernote('editor.insertImage', img_name);
        	}
      	});
    }
});
</script>
<title>이벤트 등록</title>
<body class="nav-md">
<div class="top_nav">
          <div class="nav_menu">
	 <div class="container body">
      <div class="main_container">
		<div class="">
			<div class="page-title">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<h1>이벤트 등록</h1>
				</div>
					<div class="x_panel">
				<div class="page-main-style">
				<form:form commandName="command" action="adminEventRegister.do"
	    		id="EventRegister_form" enctype="multipart/form-data">	
								
				<label class="control-label" for="event_name">이벤트 이름</label>
				<form:input path="event_name" required="required" class="form-control"/>
				<form:errors path="event_name" cssClass="error-color"/>
			
		
				<label for="event_status">이벤트 상태</label>
				<form:input required="required" class="form-control" path="event_status"/>
				<form:errors path="event_status" 
				             cssClass="error-color"/>
			
				<label for="snote">이벤트 내용</label>
				<input type="text" class="form-control" id="content"/>
			
				<label for="event_image1">이벤트 사진1</label>
				<input type="file" name="upload1" id="event_image1"/>
			
				<label for="event_image2">이벤트 사진2</label>
				<input type="file" name="upload2" id="event_image2"/>
				
				<label for="event_image3">이벤트 사진3</label>
				<input type="file" name="upload3" id="event_image3"/>
				
				<label for="event_image4">이벤트 사진4</label>
				<input type="file" name="upload4" id="event_image4"/>
		
		<div style="text-align:center;">
			<input type="submit" class="btn btn-success btn-lg" value="전송">
			<input type="button" class="btn btn-success btn-lg" value="목록"
			      onclick="location.href='adminEvent.do'">
		</div>
	</form:form>
	</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
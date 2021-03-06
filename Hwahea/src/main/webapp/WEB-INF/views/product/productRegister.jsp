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
<title>쇼핑 상품 등록</title>
<body class="nav-md">
<div class="container body">
<div class="top_nav">
          <div class="nav_menu">
          
		<div class="">
			<div class="page-title">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<h1>쇼핑 상품 등록</h1>
				</div>
					<div class="x_panel">
				<div class="page-main-style">
				<form:form commandName="commandproduct" action="adminProductRegister.do"
	    		id="productRegister_form" enctype="multipart/form-data">	
								
				<label class="control-label" for="p_name">쇼핑 상품 이름</label>
				<form:input path="p_name" required="required" class="form-control"/>
				<form:errors path="p_name" 
				             cssClass="error-color"/>
			
		
				<label for="p_price">쇼핑 상품 가격</label>
				<form:input type="number" required="required" class="form-control" path="p_price"/>
				<form:errors path="p_price" cssClass="error-color"/>
			
		
				<label for="p_capacity">쇼핑 상품 용량</label>
				<form:input type="number" class="form-control" path="p_capacity"/>
			
			
				<label for="p_brand">쇼핑 상품 브랜드</label>
				<form:input type="number" class="form-control" path="p_brand"/>
		
				<label for="p_photo">쇼핑 상품 사진</label>
				<input type="file" name="upload"/>
				
				<label for="p_main_spec">쇼핑 상품 주요 사양</label>
				<form:input type="text" class="form-control" path="p_main_spec"/>
				
				<label for="p_expiry_date">상품 사용 기한</label>
				<form:input type="text" class="form-control" path="p_expiry_date"/>
				
				<label for="p_how_to">상품 사용 방법</label>
				<form:input type="text" class="form-control" path="p_how_to"/>
				
				<label for="p_manufacturer">상품 제조자</label>
				<form:input type="text" class="form-control" path="p_manufacturer"/>
				
				<label for="p_made_in">상품 제조국</label>
				<form:input type="text" class="form-control" path="p_made_in"/>
				
				<label for="p_main_ingredient">상품 주요 성분</label>
				<form:input type="text" class="form-control" path="p_main_ingredient"/>
				
				<label for="p_test_exist">상품 심사 유무</label>
				<form:input type="number" class="form-control" path="p_test_exist"/>
				
				<label for="p_attention">주의 사항</label>
				<form:textarea class="form-control" path="p_attention"/>
				
				<label for="p_category">상품 카테고리</label>
				<form:input type="number" class="form-control" path="p_category"/>
				
				<label for="p_discount">상품 할인율</label>
				<form:input type="number" class="form-control" path="p_discount"/>
				
				<label for="p_content">상품 정보</label>
				<form:textarea class="form-control" path="p_content" id="content"/>
		
		<div style="text-align:center;">
			<input type="submit" class="btn btn-success btn-lg" value="전송">
			<input type="button" class="btn btn-success btn-lg" value="목록"
			      onclick="location.href='adminProductList.do'">
		</div>
	</form:form>
	</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
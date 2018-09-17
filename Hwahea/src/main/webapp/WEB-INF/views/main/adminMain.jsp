<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title><tiles:getAsString name="title"/></title>
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
<!-- Dropzone.js -->
<link href="${pageContext.request.contextPath}/resources/vendors/dropzone/dist/min/dropzone.min.css" rel="stylesheet">
<!-- Datatables -->
    <link href="${pageContext.request.contextPath}/resources/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

<!-- Custom Theme Style -->
<link href="${pageContext.request.contextPath}/resources/build/css/custom.min.css" rel="stylesheet">
</head>
<body class="nav-md">
    <div class="container body">
    	<div class="main_container">
    		
	<div class="menu_fixed">
		<tiles:insertAttribute name="side"/>
	</div>
	<div id="top_navigation">
		<tiles:insertAttribute name="top_nav"/>
	</div>
	<div id="page">
		<tiles:insertAttribute name="page"/>
	</div>
	<div id="adminFooter">
		<tiles:insertAttribute name="adminFooter"/>
	</div>

</div>
</div>



<!-- jQuery -->
<script src="${pageContext.request.contextPath}/resources/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="${pageContext.request.contextPath}/resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/resources/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="${pageContext.request.contextPath}/resources/vendors/nprogress/nprogress.js"></script>
<!-- jQuery custom content scroller -->
<script src="${pageContext.request.contextPath}/resources/vendors/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
<!-- Switchery -->
<script src="${pageContext.request.contextPath}/resources/vendors/switchery/dist/switchery.min.js"></script>
<!-- bootstrap-progressbar -->
<script src="${pageContext.request.contextPath}/resources/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<!-- iCheck -->
<script src="${pageContext.request.contextPath}/resources/vendors/iCheck/icheck.min.js"></script>
<!-- bootstrap-daterangepicker -->
<script src="${pageContext.request.contextPath}/resources/vendors/moment/min/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap-wysiwyg -->
<script src="${pageContext.request.contextPath}/resources/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendors/google-code-prettify/src/prettify.js"></script>
<!-- jQuery Tags Input -->
<script src="${pageContext.request.contextPath}/resources/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
<!-- Switchery -->
<script src="${pageContext.request.contextPath}/resources/vendors/switchery/dist/switchery.min.js"></script>
<!-- Select2 -->
<script src="${pageContext.request.contextPath}/resources/vendors/select2/dist/js/select2.full.min.js"></script>
<!-- Parsley -->
<script src="${pageContext.request.contextPath}/resources/vendors/parsleyjs/dist/parsley.min.js"></script>
<!-- Autosize -->
<script src="${pageContext.request.contextPath}/resources/vendors/autosize/dist/autosize.min.js"></script>
<!-- jQuery autocomplete -->
<script src="${pageContext.request.contextPath}/resources/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
<!-- starrr -->
<script src="${pageContext.request.contextPath}/resources/vendors/starrr/dist/starrr.js"></script>
<!-- Dropzone.js -->
<script src="${pageContext.request.contextPath}/resources/vendors/dropzone/dist/min/dropzone.min.js"></script>
<!-- PNotify -->
<script src="${pageContext.request.contextPath}/resources/vendors/pnotify/dist/pnotify.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendors/pnotify/dist/pnotify.buttons.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendors/pnotify/dist/pnotify.nonblock.js"></script>

<!-- Datatables -->
    <script src="${pageContext.request.contextPath}/resources/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/jszip/dist/jszip.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/pdfmake/build/vfs_fonts.js"></script>

<!-- bootstrap-daterangepicker -->
    <script src="${pageContext.request.contextPath}/resources/vendors/moment/min/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="${pageContext.request.contextPath}/resources/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendors/google-code-prettify/src/prettify.js"></script>

<!-- Custom Theme Scripts -->
<script src="${pageContext.request.contextPath}/resources/build/js/custom.min.js"></script>
    
<!-- Google Analytics -->
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

	ga('create', 'UA-23581568-13', 'auto');
	ga('send', 'pageview');

</script>

</body>
</html>
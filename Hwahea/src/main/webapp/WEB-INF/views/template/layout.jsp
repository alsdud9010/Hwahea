<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<title>화해 - 화장품을 해석하다</title>
<!-- Meta -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">
<!-- Web Fonts -->
<link rel="stylesheet" type="text/css"
	href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin">
 <!-- CSS Global Compulsory -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/bootstrap/css/bootstrap.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
  <!-- CSS Header and Footer -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/headers/header-v4.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footers/footer-v1.css">
  <!-- CSS Implementing Plugins -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/animate.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/line-icons/line-icons.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css">
  <!-- CSS Page Style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/pages/blog_magazine.css">
  <!-- CSS Customization -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/custom.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footers/footer-v1.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footers/footer-v1.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footers/footer-v1.css">
  <link rel="icon" href="${pageContext.request.contextPath}/assets/css/footers/footer-v1.css">
  <!-- CSS shopping page -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shop.css">
<!-- JS Global Compulsory -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/smoothScroll.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/app.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		App.init();
	});
</script>
<!-- ranking&dictionary JS -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/ranking.js"></script>
<!-- ranking&dictionary JS -->
</head>
<body>
	<div class="wrapper">
		<tiles:insertAttribute name="header" />
		<%-- <tiles:insertAttribute name="menu" /> --%>
		<tiles:insertAttribute name="body" />
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>
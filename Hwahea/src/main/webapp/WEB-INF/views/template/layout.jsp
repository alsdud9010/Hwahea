<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:getAsString name="title" /></title>
<!-- Meta -->
<meta charset="utf-8">
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css">
<!-- CSS Page Style -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/pages/blog_magazine.css">
<!-- CSS Customization -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/custom.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footers/footer-v1.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footers/footer-v1.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footers/footer-v1.css">
<link rel="icon" href="${pageContext.request.contextPath}/assets/css/footers/footer-v1.css">
<link rel="stylesheet" href="index.css">
</head>
<body>
	<div id="wrapper">
		<div id="header-v4">
			<tiles:insertAttribute name="header" />
		</div>
		<div id="container content">
			<tiles:insertAttribute name="body" />
		</div>
		<div id="footer-v1">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>
<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Login</title>
<base href="${pageContext.servletContext.contextPath}/">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<!-- Custom Theme files -->
<link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />
<!--js-->
<script src="js/jquery-2.1.1.min.js"></script>
<!--icons-css-->
<link href="css/font-awesome.css" rel="stylesheet">
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Carrois+Gothic'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Work+Sans:400,500,600'
	rel='stylesheet' type='text/css'>
<!--static chart-->
<style type="text/css">
*[id$=errors] {
	color: red;
	font-style: italic;
	display: block;
}
</style>

</head>
<body>
	<div class="login-page">
		<div class="login-main">
			<div class="login-head">
				<h1>Login</h1>
			</div>
			<div class="login-block">
				<form:form action="login.html" modelAttribute="user" method="POST">
					<h2>${message}</h2>
					<label>Email</label>
					<form:errors path="email" />
					<form:input path="email" />

					<label>Password</label>
					<form:errors path="password" />
					<form:input path="password" type="password" />

					<div class="clearfix"></div>

					<input type="submit" name="Sign In" value="Login">
					<h3>
						Chưa có tài khoản?<a href="signup.html"> Đăng kí tại đây!</a>
					</h3>
				</form:form>
			</div>
		</div>
	</div>
	<!--inner block end here-->
	<!--copy rights start here-->


	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	<script src="js/bootstrap.js">
		
	</script>
	<!-- mother grid end here-->
</body>
</html>





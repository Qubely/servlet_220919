<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02</title>

<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

	<style>
		header {height:100px;}
		#logo {font-size:30px;}
		nav {height:50px;}
		.nav-link {font-size:18px;}
		/* #info {height:250px;} */
		footer {height:40px;}
		a, a:hover {text-decoration:none;}
	</style>
	
</head>
<body>
	
	<div id="wrap" class="container">
		<header class="d-flex align-items-center">
			<jsp:include page="header.jsp" />
		</header>
		<nav class="d-flex align-items-center">
			<jsp:include page="menu.jsp" />
		</nav>
		<section>
			<div id="info" class="border border-success d-flex align-items-center">
				<jsp:include page="info.jsp" />
			</div>
			<div id="list" class="mt-3">
				<jsp:include page="list.jsp" />
			</div>
		</section>
		<hr>
		<footer class="d-flex align-items-center">
			<jsp:include page="footer.jsp" />
		</footer>
	</div>
	
</body>
</html>
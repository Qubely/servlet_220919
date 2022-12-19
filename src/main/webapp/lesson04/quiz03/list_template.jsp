<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>

<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

	<style>
		header {height:100px; background-color:#FF7F50;}
		nav {background-color:#FF7F50; font-size:20px;}
		.nav-item:hover {background-color:#FF6347;}
		.box {border:2px solid #FF7F50; width:360px;}
		.box:hover {background-color:#999;}
		.no-image {width:330px; height:220px;}
		.nickname {color:#FF7F50;}
		footer {height:50px;}
	</style>

</head>
<body>
<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select A.*, B.* from `seller` as A join `used_goods` as B on A.id = B.sellerId order by A.id desc;";
	
	ResultSet rs = ms.select(selectQuery);
%>
	<div id="wrap" class="container">
		<header class="d-flex justify-content-center align-items-center">
			<jsp:include page="header.jsp" />
		</header>
		<nav>
			<jsp:include page="menu.jsp" />
		</nav>
		<section class="content mt-3 d-flex flex-wrap">
			<jsp:include page="list_content.jsp" />
		</section>
		<footer class="d-flex justify-content-center align-items-center mt-5">
			<jsp:include page="footer.jsp" />
		</footer>
	</div>
<%
	ms.disconnect();
%>
</body>
</html>
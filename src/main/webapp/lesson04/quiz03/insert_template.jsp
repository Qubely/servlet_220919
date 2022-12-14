<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 - 물건 올리기</title>

<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

	<style>
		header {height:100px; background-color:#FF7F50;}
		nav {background-color:#FF7F50; font-size:20px;}
		.nav-item:hover {background-color:#FF6347;}
		footer {height:50px;}
	</style>

</head>
<body>
<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select * from `seller`;";
	ResultSet rs = ms.select(selectQuery);
%>
	<div id="wrap" class="container">
		<header class="d-flex justify-content-center align-items-center">
			<jsp:include page="header.jsp" />
		</header>
		<nav>
			<jsp:include page="menu.jsp" />
		</nav>
		<section class="content m-4 container">
			<jsp:include page="insert_content.jsp" />
		</section>
		<footer class="d-flex justify-content-center align-items-center mt-5">
			<jsp:include page="footer.jsp" />
		</footer>
	</div>
	
	<script>
		
		$(document).ready(function() {
			
			$("#myForm").submit(function() {
				let id = $("select[name=id]").val();
				let title = $('input[name=title]').val().trim();
				let price = $('input[name=price]').val().trim();
				
				if (id == "-아이디 선택-") {
					alert("닉네임을 선택하세요.");
					return false;
				}
				if (title == "") {
					alert("제목을 입력하세요.");
					return false;
				}
				if (price == "") {
					alert("가격을 입력하세요.");
					return false;
				}
				return true;
				
			})
			
		})
		
	</script>
<%
	ms.disconnect();
%>
</body>
</html>
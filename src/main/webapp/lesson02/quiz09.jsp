<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz09</title>

<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>
<%
	Calendar today = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
	
%>

	<h1>오늘부터 1일</h1>
<!-- 강사님 풀이 -->
<%
	today.add(Calendar.DATE, -1);
	for (int i = 100; i <= 1000; i+= 100) {
		today.add(Calendar.DATE, 100);
%>
	<div class="display-4"><%= i %>일 : <span class="text-danger"><%= sdf.format(today.getTime()) %></span></div>
<%
	}
%>

<!-- 내 풀이 -->
<%-- <%
	today.add(Calendar.DATE, -1);
	for (int i = 1; i <= 10; i++) {
		today.add(Calendar.DATE, i * 100);
%>
	<div class="display-4"><%= i * 100 %>일 : <span class="text-danger"><%= sdf.format(today.getTime()) %></span></div>
<%
		today.add(Calendar.DATE, i * -100);
	}
%> --%>
</body>
</html>
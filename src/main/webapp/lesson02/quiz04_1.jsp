<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz04_1</title>

<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>
	
	<%
		
		double num1 = Double.parseDouble(request.getParameter("num1"));
		double num2 = Double.parseDouble(request.getParameter("num2"));
		String operator = request.getParameter("operator");	
		double result = 0;
		
		if (operator.equals("plus")) {
			result = num1 + num2;
			operator = "+";
		} else if (operator.equals("minus")) {
			result = num1 - num2;
			operator = "-";
		} else if (operator.equals("multiple")) {
			result = num1 * num2;
			operator = "X";
		} else if (operator.equals("divide")) {
			result = num1 / num2;
			operator = "/";
		}
	%>
	
	<div class="container">
		<h1>계산 결과</h1>
		<div class="display-3">
			<%= num1 %>
			<%= operator %>
			<%= num2 %>
			=
			<span class="text-primary"><%= result %></span>
			<br>
			<%
				out.print(num1 + " " + operator + " "  + num2 + " = ");
			%>
			<span class="text-primary"><%= result %></span>
		</div>
	</div>
	
	
</body>
</html>
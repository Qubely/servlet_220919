<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz03_1</title>

<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>
	
	<%
		double height = Double.parseDouble(request.getParameter("height"));
		double weight = Double.valueOf(request.getParameter("weight"));
		
		double bmi = weight / ((height / 100.0) * (height / 100.0));
		String result = null;
		
		if (bmi <= 20) {
			result = "저체중";
		} else if (bmi <= 25) {
			result = "정상";
		} else if (bmi <= 30) {
			result = "과체중";
		} else {
			result = "비만";
		}
		
	%>
	<div class="container">
		<h1>BMI 측정 결과</h3>
		<div class="display-3">당신은 <span class="text-info"><%= result %></span> 입니다.</div>
		<div>BMI 수치 : <%= bmi %></div>
	</div>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz05_1</title>

<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>

	<%
		int cm = Integer.parseInt(request.getParameter("cm"));
		String[] conversionArr = request.getParameterValues("conversion");
		
		/* double inch = cm / 2.54;
		double yd = cm / 91.44;
		double ft = cm / 30.48;
		double m = cm / 100.0; */
		
	%>
	
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%= cm %>cm</h3>
		<hr>
		<!-- 강사님 풀이 -->
		<h2>
			<%
				if (conversionArr != null) {
					for (String type : conversionArr) {
						if (type.equals("inch")) {
							double inch = cm / 2.54;
							out.print(inch + "in<br>");
						} else if (type.equals("yd")) {
							double yd = cm / 91.44;
							out.print(yd + "yd<br>");
						} else if (type.equals("ft")) {
							double ft = cm / 30.48;
							out.print(ft + "ft<br>");
						} else if (type.equals("m")) {
							double m = cm / 100.0;
							out.print(m + "m<br>");
						}
					}
				}
			%>
		</h2>
		
		
		<!-- 내 풀이 -->
		<%-- <hr>
		<h3>
			<%
				if (conversionArr != null) {
					for (String convert : conversionArr) {
						if (convert.equals("inch")) {
							out.print(inch + " in");
						}
					}
				}
			%>
		</h3>
		<h3>
			<%
				if (conversionArr != null) {
					for (String convert : conversionArr) {
						if (convert.equals("yd")) {
							out.print(yd + " yd");
						}
					}
				}
			%>
		</h3>
		<h3>
			<%
				if (conversionArr != null) {
					for (String convert : conversionArr) {
						if (convert.equals("ft")) {
							out.print(ft + " ft");
						}
					}
				}
			%>
		</h3>
		<h3>
			<%
				if (conversionArr != null) {
					for (String convert : conversionArr) {
						if (convert.equals("m")) {
							out.print(m + " m");
						}
					}
				}
			%>
		</h3> --%>
	</div>
	
</body>
</html>
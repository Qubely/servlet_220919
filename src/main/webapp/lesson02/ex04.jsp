<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex04 - 제어문 사용</title>

<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>
	
	<%
		// Map을 테이블로 구성하기
		// {"korean" = 85, "english" = 72, "math" = 90, "science" = 100}
		Map<String, Integer> scoreMap = new HashMap<>();
		scoreMap.put("korean", 85);	
		scoreMap.put("english", 72);	
		scoreMap.put("math", 90);	
		scoreMap.put("science", 100);	
	%>
	
	<table border="1">
	<%
		/* Set<String> keys =  scoreMap.keySet();	// iterator, 향상된 for문
		Iterator<String> iter = keys.iterator(); */
		
		Iterator<String> iter = scoreMap.keySet().iterator();
		while (iter.hasNext()) {
			String key = iter.next();
	%>
		<tr>
			<th><%-- <%= key %> --%>
			<%
				if (key.equals("korean")) {
					out.print("국어");
				} else if (key.equals("english")) {
					out.print("영어");
				} else if (key.equals("math")) {
					out.print("수학");
				} else if (key.equals("science")) {
					out.print("과학");
				}
			%>
			</th>
			<td><%= scoreMap.get(key) %></td>
		</tr>
	<%
		}
	%>	
	</table>	
	
	
</body>
</html>
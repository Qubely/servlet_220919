<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz07_1</title>

<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>
	
	<%
		List<Map<String, Object>> list = new ArrayList<>();
	    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	    list.add(map);
	    
	    String keyword = request.getParameter("keyword");
	    boolean exclude = request.getParameter("startPointFilter") != null;
	    String startPointFilter = request.getParameter("startPointFilter");
	%>
	
	<div class="container">
		<h1 class="text-center">검색 결과</h1>
		
		<table class="table text-center">
			<thead>
				<th>메뉴</th>
				<th>상호</th>
				<th>별점</th>
			</thead>
			<tbody>
			<!-- 강산님 풀이 -->
			<%
				for (Map<String, Object> item : list) {
					String menu = (String)item.get("menu");
					if (menu.contains(keyword)) {
						if (exclude && (double)item.get("point") <= 4.0) {
							continue;
						}
			%>
				<tr>
					<td><%= item.get("name") %></td>
					<td><%= item.get("menu") %></td>
					<td><%= item.get("point") %></td>
				</tr>
			<%
					}
				}
			%>
			
			<!-- 내 풀이 -->
			<%-- <%
				for (int i = 0; i < list.size(); i++) {
					if (startPointFilter != null) {
						if (list.get(i).get("menu").equals(keyword) && (double)list.get(i).get("point") > 4.0) {
			%>
				<tr>
					<td><%= list.get(i).get("name") %></td>
					<td><%= list.get(i).get("menu") %></td>
					<td><%= list.get(i).get("point") %></td>
				</tr>
			<%
						}
					} else {
						if (list.get(i).get("menu").equals(keyword)) {
			%>
				<tr>
					<td><%= list.get(i).get("name") %></td>
					<td><%= list.get(i).get("menu") %></td>
					<td><%= list.get(i).get("point") %></td>
				</tr>
			<%
						}
					}
				}
			%> --%>
			</tbody>
		</table>
	</div>
	
</body>
</html>
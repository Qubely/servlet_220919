<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select A.*, B.* from `seller` as A join `used_goods` as B on A.id = B.sellerId order by A.id desc;";
	
	ResultSet rs = ms.select(selectQuery);

	while (rs.next()) {
%>
	<div class="box m-1">
<%
	if (rs.getString("pictureUrl") != null) {
%>
		<div class="d-flex justify-content-center mt-2">
			<img src="<%= rs.getString("pictureUrl") %>" alt="상품 사진" width="330" height="220">
		</div>
<%
	} else {
%>
		<div class="d-flex justify-content-center align-items-center mt-2 no-image">
			<h4 class="text-secondary"><b>이미지 없음</b></h4>
		</div>
<%
	}
%>
		<div class="ml-3 mt-2"><b><%= rs.getString("title") %></b></div>
		<div class="ml-3 mt-1 text-secondary"><b><%= rs.getInt("price") %>원</b></div>
		<div class="ml-3 mt-1 mb-3 nickname"><b><%= rs.getString("nickname") %></b></div>
	</div>
<%
	}
	ms.disconnect();
%>
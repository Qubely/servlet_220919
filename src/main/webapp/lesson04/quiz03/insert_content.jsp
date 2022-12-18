<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="display-4 mt-5 mb-5">물건 올리기</div>
<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select * from `seller`;";
	ResultSet rs = ms.select(selectQuery);
%>
<form method="post" action="/lesson04/quiz03">
	<div class="d-flex justify-content-around align-items-center mb-3">
		<select class="form-control col-3" name="id">
			<option>-아이디 선택-</option>
<%
			while (rs.next()) {
%>
				<option value="<%= rs.getInt("id") %>"><%= rs.getString("nickname") %></option>
<%
			}
%>
		</select>
		<input type="text" class="form-control col-5" placeholder="제목" name="title">
		<div class="input-group col-3">
			<input type="text" class="form-control" placeholder="가격" name="price">
			<div class="input-group-append">
				<span class="input-group-text">원</span>
			</div>
		</div>
	</div>
				
	<textarea class="form-control mb-3" rows="6" name="description"></textarea>
	
	<div class="input-group mb-3">
		<div class="input-group-append">
			<span class="input-group-text">이미지 url</span>
		</div>
		<input type="text" class="form-control" name="pictureUrl">
	</div>
		
	<button type="submit" class="btn btn-secondary w-100">저장</button>
			</form>
<%
	
%>
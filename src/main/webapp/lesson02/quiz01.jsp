<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>

<%! 
	// 1.
	public int getSum(int n) {
		int sum = 0;
		for (int i = 1; i <= n; i++) {
			sum += i;
		}
		return sum;
	}
%>
<h1>1 부터 50 까지의 합은 <%= getSum(50) %> 입니다.</h1>



<%
	// 2. 주어진 점수들의 평균을 구하세요.
	int[] scores = {80, 90, 100, 95, 80};
	int sum1 = 0;	
	for (int i = 0; i < scores.length; i++) {
		sum1 += scores[i];
	}
	double avg = sum1 / (double)scores.length;
%>
<h1>평균 점수는 <%= avg %> 입니다.</h1>



<%
	// 3. 아래 채점표로 시험점수가 몇점인지 구하세요.
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score = 0;
	for (int i = 0; i < scoreList.size(); i++) {
		if (scoreList.get(i).equals("O")) {
			score += (100 / scoreList.size());
		}
	}
%>
<h1>채점 결과는 <%= score %>점 입니다.</h1>



<%
	// 4. 주어진 생년월일을 가진 사람의 나이를 구하세요.
	String birthDay = "20010820";
	Integer year = Integer.valueOf(birthDay.substring(0, 4));
	//out.println(year);
	Integer age = 2022 - year + 1;
%>
<h1><%= birthDay %>의 나이는 <%= age %>세 입니다.</h1>



</body>
</html>
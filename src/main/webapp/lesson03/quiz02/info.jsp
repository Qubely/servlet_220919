<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// 아티스트 정보 
    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


 // 아이유 노래 리스트 
     List<Map<String, Object>> musicList = new ArrayList<>();

     Map<String, Object> musicInfo = new HashMap<>();
     musicInfo.put("id", 1);
     musicInfo.put("title", "팔레트");
     musicInfo.put("album", "Palette");
     musicInfo.put("singer", "아이유");
     musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
     musicInfo.put("time", 217);
     musicInfo.put("composer", "아이유");
     musicInfo.put("lyricist", "아이유");
     musicList.add(musicInfo);

     musicInfo = new HashMap<>();
     musicInfo.put("id", 2);
     musicInfo.put("title", "좋은날");
     musicInfo.put("album", "Real");
     musicInfo.put("singer", "아이유");
     musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
     musicInfo.put("time", 233);
     musicInfo.put("composer", "이민수");
     musicInfo.put("lyricist", "김이나");
     musicList.add(musicInfo);

     musicInfo = new HashMap<>();
     musicInfo.put("id", 3);
     musicInfo.put("title", "밤편지");
     musicInfo.put("album", "palette");
     musicInfo.put("singer", "아이유");
     musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
     musicInfo.put("time", 253);
     musicInfo.put("composer", "제휘,김희원");
     musicInfo.put("lyricist", "아이유");
     musicList.add(musicInfo);

     musicInfo = new HashMap<>();
     musicInfo.put("id", 4);
     musicInfo.put("title", "삐삐");
     musicInfo.put("album", "삐삐");
     musicInfo.put("singer", "아이유");
     musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
     musicInfo.put("time", 194);
     musicInfo.put("composer", "이종훈");
     musicInfo.put("lyricist", "아이유");
     musicList.add(musicInfo);

     musicInfo = new HashMap<>();
     musicInfo.put("id", 5);
     musicInfo.put("title", "스물셋");
     musicInfo.put("album", "CHAT-SHIRE");
     musicInfo.put("singer", "아이유");
     musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
     musicInfo.put("time", 194);
     musicInfo.put("composer", "아이유,이종훈,이채규");
     musicInfo.put("lyricist", "아이유");
     musicList.add(musicInfo);

     musicInfo = new HashMap<>();
     musicInfo.put("id", 6);
     musicInfo.put("title", "Blueming");
     musicInfo.put("album", "Love poem");
     musicInfo.put("singer", "아이유");
     musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
     musicInfo.put("time", 217);
     musicInfo.put("composer", "아이유,이종훈,이채규");
     musicInfo.put("lyricist", "아이유");
     musicList.add(musicInfo);
%>

<div class="d-flex m-3">
<!-- request 예외처리 방법 -->
<%-- <%
	if (request.getParameter("id") != null) {
		int id = Integer.parseInt(request.getParameter("id"));
	}
%> --%>

<!-- 가수 정보 -->
<%
	String id = request.getParameter("id");
	String input = request.getParameter("input");
	if (id == null && input == null) {
%>
		<img src="<%= artistInfo.get("photo") %>" alt="가수 이미지" height="220px">
		<div class="ml-3">
			<h2 class="font-weight-bold"><%= artistInfo.get("name") %></h2>
			<h5><%= artistInfo.get("agency") %></h5>
			<h5><%= artistInfo.get("debute") %> 데뷔</h5>
		</div>

<!-- 곡 정보 -->
<%	
	} else {
		for (Map<String, Object> item : musicList) {
			if (id != null && Integer.valueOf(id) == (int)item.get("id") || input != null && item.get("title").equals(input)) {
%>
				<div>
					<img src="<%= item.get("thumbnail") %>" alt="앨범 이미지" height="220px">
				</div>
				<div class="ml-3">
					<h1><%= item.get("title") %></h1>
					<h5 class="text-success font-weight-bold mt-3 mb-3"><%= item.get("singer") %></h5>
					<table class="border-collapse text-secondary">
						<tr>
							<td class="pr-4">앨범</td>
							<td><%= item.get("album") %></td>
						</tr>
						<tr>
							<td class="pr-4">재생시간</td>
							<td><%= (int)item.get("time") / 60 %> : <%= (int)item.get("time") % 60 %></td>
						</tr>
						<tr>
							<td class="pr-4">작곡가</td>
							<td><%= item.get("composer") %></td>
						</tr>
						<tr>
							<td class="pr-4">작사가</td>
							<td><%= item.get("lyricist") %></td>
						</tr>
					</table>
				</div>
<%
			} 
		}
	}
%>
</div>
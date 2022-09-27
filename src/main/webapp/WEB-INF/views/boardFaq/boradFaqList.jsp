<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function registerPopup() {
	var url = "/boardFaq/boardFaqWriteForm";
	var name = "boardFaqForm";
	var option = "width = 500, height = 500, top = 100, left = 200, location = no";
	
	window.open(url, name, option);
}
</script>

</head>
<body>
		<h1>FAQboardList 입니다  </h1>
		
		<table border="1">
			<tr>
				<td>글번호</td>
				<td>제목</td>
				<td>내용</td>
				<td>날짜</td>
				<td>작성자</td>
			</tr>
		
		</table>

	<a onclick="javascript:registerPopup()">글쓰기</a>
</body>
</html>
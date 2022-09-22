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
		<h1>boardList 입니다  </h1>

	<a onclick="javascript:registerPopup()">글쓰기</a>
</body>
</html>
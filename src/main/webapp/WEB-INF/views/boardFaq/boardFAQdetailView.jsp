<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	function FAQmodify() {
		var boardNo = ${FAQDetail.FAQBoardNo};
		alert('testtt : ' + boardNo);
		var boardTitle = '${FAQDetail.FAQTitle}';
		var boardContent = '${FAQDetail.FAQContent}';
		var boardWriter = '${FAQDetail.FAQWriter}';
		$('input[name=boardTitle]').attr('value',boardTitle);
		$('input[name=boardContent]').attr('value',boardContent);
		$('input[name=boardWriter]').attr('value',boardWriter);
		sendModify.submit();
	}
</script>
</head>
<body>

<h1>FAQ board 상세보기 페이지</h1>

<table border="1">
	<tr>
		<th>타입  </th>
		<td>${FAQDetail.FAQBoardType}</td>
	</tr>
	<tr>
		<th>제목 </th>
		<td>${FAQDetail.FAQTitle}</td>
	</tr>
	<tr>
		<th>날짜  </th>
		<td>${FAQDetail.FAQSysdate}</td>
	</tr>
	<tr>
		<th>내용 </th>
		<td>${FAQDetail.FAQContent}</td>
	</tr>
	
			
</table>
<button type="button" onclick="javascript:FAQmodify()">수정 </button>
<button type="button" onclick="">삭제 </button>
	<form id="sendModify" action="${contextPath }/boardFaq/FAQmodfiyForm" method="post">
		<input type="hidden" name="boardNo" id="boardNo" value="">
		<input type="hidden" name="boardTitle" id="boardTitle" value="">
		<input type="hidden" name="boardContent" id="boardContent" value="">
		<input type="hidden" name="boardWriter" id="boardWriter" value="">
	</form>
</body>
</html>
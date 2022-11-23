<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<style>
	.hero {
		padding-top: 60px;
		background-color: #F6F6F6;
	}
	.board {
		height: 100px;
	}
</style>
    <!-- Metas -->
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="author" content="Graphberry" />
    <!-- Links -->
    <link rel="icon" type="image/png" href="${contextPath}/resources/images/favicon.png" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,600&display=swap" rel="stylesheet">
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${contextPath}/resources/css/style.css" rel="stylesheet" />
    
    <!-- Document Title -->
    <title>BoardList</title>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!-- Scripts -->
    <script src="${contextPath}/resources/js/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/popper.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${contextPath}/resources/js/main.js"></script>
    <!-- Scripts Ends -->
</head>
<body>
<jsp:include page="../common/headerDetail.jsp"/>
<div class="hero">
	<div class="container">
		<section id="appartments" class="appartments">
	      <div class="container">
	        <div class="row">
	          <div class="col-12">
	            <h2>${boardData.boardTitle}</h2>
	          </div>
	        </div>
	        <div class="row">
	        <!-- Appartment  -->
			  <div class="col-12 col-md-6 col-lg-4">
			  <p>기분은</p>
			  	<p>
                   <c:choose>
                    <c:when test="${boardData.boardFeel == '매우좋음'}">
                    	<h4>엄청 좋아! &#128525;</h4>
                    </c:when>
                    <c:when test="${boardData.boardFeel == '좋음'}">
                    	<h4>좋아! &#128515;</h4>
                    </c:when>
                    <c:when test="${boardData.boardFeel == '보통'}">
                    	<h4>그냥 그래 &#128528;</h4>
                    </c:when>
                    <c:when test="${boardData.boardFeel == '나쁨'}">
                    	<h4>별로야 &#128549;</h4>
                    </c:when>
                    <c:when test="${boardData.boardFeel == '최악'}">
                    	<h4>최악! &#128545;</h4>
                    </c:when>
                   </c:choose>
	            </p>
	            <hr>
				<c:if test="${fileData.fileStored != 'NONE'}">
					<br>
					<img src="${contextPath}/boardList/download.?file=${fileData.fileStored}">
					<br><br>
				</c:if>
				<p>${boardData.boardContent}</p>
				<br>
	          </div>
	        </div>
	      </div>
	    </section>
	  </div>
	</div>
  </body>
</html>
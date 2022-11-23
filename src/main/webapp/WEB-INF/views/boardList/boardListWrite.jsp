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
	            <h2>&#x1F4DD 행복 기록을 작성합니다.</h2>
	          </div>
	        </div>
	        <div class="row">
	        <!-- Appartment  -->
			  <div class="col-12 col-md-6 col-lg-4">
				<form method="post" action="${contextPath}/boardList/boardWriteSave" enctype="multipart/form-data">
				<h4>(임시)작성자</h4>
				<input type="text" name="writer">
				<br><br>
				<h4>제목</h4> <!--  23자 이상 못 적게 -->
				<input type="text" name="title" maxlength='23'>
				<br><br>
				<h4>기분</h4>
				<input type="text" name="feel" list="feelList" placeholder="기분을 선택해 주세요.">
					<datalist id="feelList">
						<option value="매우좋음">
						<option value="좋음">
						<option value="보통">
						<option value="나쁨">
						<option value="최악">
					</datalist>
				<br><br>
				<h4>내용</h4>
				<textarea style="resize:none;" rows="10" cols="40" name="content" placeholder="내용을 입력해 주세요."></textarea>
				<br><br>
				<h4>파일</h4>
				            <div id="image_container">
				           		<script>
				           			function setThumbnail(event) { 
				           				var reader = new FileReader(); 
				           				reader.onload = function(event) { 
				           					var img = document.createElement("img"); 
				           					img.setAttribute("src", event.target.result); 
				           					document.querySelector("div#image_container").appendChild(img); 
				           				}; 
				           				reader.readAsDataURL(event.target.files[0]); 
				           			}
				            	</script>
				            </div>
				<br><br>
				<input type="file" name="boardImgPath" accept="image/*" onchange="setThumbnail(event);"/>
				<br><br>
				<input type="submit" value="등록">
				</form>
	          </div>
	        </div>
	      </div>
	    </section>
	  </div>
	</div>
  </body>
</html>
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
	.notice {
		height: 40px;
		background-color: #ED9DA6;
		padding-top: 7px;
		padding-left: 20px;
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
	            <h2>&#x1F4DD 행복 기록 리스트</h2>
	            <div class="notice">
					<a href="#" style="color: #FFFFFF; font-size: 14px;">&#x1F4E2&emsp;<b>이용하기 전, 반드시 읽어주세요 !</b></a>
				</div>
	          </div>
	        </div>
	        <div class="row">
	        <!-- Appartment  -->
			  <div class="col-12 col-md-6 col-lg-4">
	            <div class="appartment-box">
	              <div class="appartment-image">
	                <!-- Appartment Image  -->
	              </div>
	              <div class="appartment-info">
	                <div class="appartment-title">
	                  <!-- Appartment Address  -->
	                  <p>퇴근이 기다려지는 하루다.</p>
	                </div>
	                <div class="appartment-details">
	                  <div class="price left">
	                    <!-- Appartment Price  -->
	                    <p>HAPPY !</p>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	        <div class="row">
	          <div class="col-12">
	            <div class="search lux-shadow search-appartments">
	              <!-- Search -->
	              <input class="left" type="text" placeholder="Search Location">
	              <button class="search-btn left">Search</button>
	            </div>
	            <div class="search-all">
	              <button class="search-btn left search-all-btn">View All Appartments</button>
	            </div>
	          </div>
	        </div>
	      </div>
	    </section>
	  </div>
	</div>
  </body>
</html>
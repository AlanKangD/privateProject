<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


 <!------------------------------------------------ HEADER SECTION -->
    <header id="home">
      <nav class="animate">
        <div class="container">
          <div class="logo left">
            <!-- Logo -->
            <a href="#home">luxestate</a>
          </div>
          <div class="menu-button hide right pointer">
            <span></span>
            <span></span>
            <span></span>
          </div>
          <div class="menu left">
            <div class="page-menu left">
              <!-- Navigation -->
              <li><a href="#home">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#appartments">Appartments</a></li>
              <li><a href="#works">How It Works</a></li>
              <li><a href="#agents">Agents</a></li>
              <li><a href="#contact">Contact Us</a></li>
            </div>
            <div class="registration flex-center">
              <div class="join-us">
                <!-- Join Us Button -->
                <li class="pointer animate">
                <c:if test="${userSession == null }">
                	<a onclick="javascript:registerPopup();">Join Us</a>
                </c:if>
                <c:if test="${userSession != null }">
                	<pre>
                		
                		${userSession } 님 환영합니다! 
                	</pre>
                </c:if>
                <c:if test="${adminSession != null }">
                	<pre>
                		<!--  관리자 일 경우에 차별을 주기 위해서 화면이 깨질수 있음  -->
                		관리자님 환영합니다.!
                	</pre>
                	<a href="${contextPath }/member/logout">logout</a>
                </c:if>
                	
                </li>
              </div>
              <div class="getting-started">
                <!-- Get Started Button -->
                <li class="main-btn pointer text-center animate">
                
                	<a onclick='javascript:loginForm()'>
                		<c:choose>
                			<c:when test="${userSession == null }">
	                			Get Started
                			</c:when>
                			<c:otherwise>
                				Get My Info
                			</c:otherwise>
                		</c:choose>
                	</a>
                </li>
             </div>
            </div>
          </div>
              <div class="loginModal" id="loginModal" style="display : none; background-color: white; ">
              	
              	<c:if test="${userSession == null }">
	              	<input type="text" id="loginId" value="" placeholder="아이디를 입력해주세요!">
	              	<input type="password" id="loginPw" value="" placeholder="비밀번호를 입력해주세요!">
	              	<button type="button" onclick="javascript:login()">login</button>
              	</c:if>
              	<c:if test="${userSession != null }">
              		<a href="${contextPath }/member/logout">logout</a>
              		<button type="button" onclick="javascript:loginStatus()">로그인상태확인</button>
              	</c:if>
              </div>
        </div>
      </nav>
      <div class="hero">
        <div class="container">
          <div class="hero-wrapper">
            <div class="title">
              <!-- Hero Title -->
              <h1>Find Your New<br>Modern Apartment </h1>
              <div class="search lux-shadow">
                <!-- Search -->
                <input class="left" type="text" id="searchKeyMenu" placeholder="Search Location">
                <button class="search-btn left" onclick="javascript:textGoMenu()">Search</button>
              </div>
            </div>
            <div class="hero-image">
              <div class="hero-image-info yellow-bg flex-center">
                
                
              </div>
            </div>
            <div class="slide-down text-center pointer">
              <a href="#about">
                <p>Scroll Down</p>
                <img src="${contextPath}/resources/images/scroll.svg" alt="">
              </a>
            </div>
          </div>
        </div>
      </div>
    </header>
</body>
</html>
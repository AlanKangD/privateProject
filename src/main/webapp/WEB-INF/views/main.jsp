<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<html lang="en">
  <head>
    <!-- Metas -->
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="author" content="Graphberry" />
    <!-- Links -->
    <link rel="icon" type="image/png" href="${contextPath }/resources/images/favicon.png" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,600&display=swap" rel="stylesheet">
    <link href="${contextPath }/resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${contextPath }/resources/css/style.css" rel="stylesheet" />
    <!-- Document Title -->
    <title>Luxestate  </title>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- jquery를 사용할 때 소스 -->
    <script>
	    function registerPopup() {
	    	var url = "${contextPath }/member/registerForm";
	    	var name = "registerForm";
	    	var option = "width = 500, height = 500, top = 100, left = 200, location = no";
	    	
	    	window.open(url, name, option);
	    }
	    function login() {
	    	var loginId = $("#loginId").val();
	    	var loginPw = $("#loginPw").val();
	    	//alert(loginId + "tttt" + loginPw);
	    	var form  = {
	    			sendId : loginId,
	    			sendPw : loginPw
	    	}
	    	
	    	
	    	$.ajax({
	    		url : "/member/loginChk",
	    		type : "POST",
	    		data : JSON.stringify(form),  // 해당 디팬던시에 어떤 결과가 있는가? 이걸 넣엇을 때 성공으로 넘어갔음..
	    		dataType : 'json',
	    		contentType : "application/json; charset=utf-8",
	    		success : function(result) {
	    			alert('성공');
	    			console.log(result);
	    			if(result == "2") {
	    				//$("#loginModal").load(window.location.href + "#loginModal");
	    				console.log("ok");
	    				location.reload();
	    			}
	    		},
	    		error : function() {
	    			alert('오류가 발생했습니다. 관리자에게 문의하세요!');
	    		}
	    		
	    	})
	    }
	    
	    
	    function loginForm() {
	    	if($("#loginModal").css("display") == "none") {
	    		$("#loginModal").show();
	    	}else {
	    		$("#loginModal").hide();
	    	}
	    	
	    	
	    }
	    
	    function loginStatus() {
	    	var login = $("#loginStatus").val();
	    	console.log(login);
	    }
    </script>
    
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
                <input class="left" type="text" placeholder="Search Location">
                <button class="search-btn left">Search</button>
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
    <!------------------------------------------------ STATISTIC SECTION -->
    <section class="statistic" id="about">
      <div class="container">
        <div class="row">
          <div class="col-12 col-lg-6">
            <h3>Our’s Company<br>Statistics</h3>
            <p>In this space market-facing, yet UI work flows , or bake it in. Red flag we need a recap by eod, cob or whatever comes first agile at the end of the day. Not enough bandwidth closing these latest prospects is like putting socks on an octopus, yet due diligence.</p>
            <p>We need to get all stakeholders up to speed and in the right place hard stop, or technologically savvy or pre launch. Pro-sumer software commitment to the cause offline this discussion and wiggle room blue sky. Beef up teams were able to drive adoption and awareness. Screw the pooch killing it.</p>
          </div>
          <div class="col-12 col-lg-6 statistic-wrapper">
            <div class="statistic-box text-center">
              <p>3854</p>
              <p>Clients</p>
            </div>
            <div class="statistic-box text-center">
              <p>748</p>
              <p>Appartments</p>
            </div>
            <div class="statistic-box text-center">
              <p>14</p>
              <p>Awards</p>
            </div>
            <div class="statistic-box text-center">
              <p>24</p>
              <p>Employees</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!------------------------------------------------ APPARTMENTS SECTION -->
    <section id="appartments" class="appartments">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <h2>More Then 500+<br>Appartments For Rent</h2>
          </div>
        </div>
        <div class="row">
          <!-- Appartment  -->
          <div class="col-12 col-md-6 col-lg-4">
            <div class="appartment-box">
              <div class="appartment-image">
                <!-- Appartment Image  -->
                <img src="images/appartment.png" alt="">
              </div>
              <div class="appartment-info">
                <div class="appartment-title">
                  <!-- Appartment Address  -->
                  <p>Random Street, Apt B453, New York</p>
                </div>
                <div class="appartment-details">
                  <div class="price left">
                    <!-- Appartment Price  -->
                    <p>$3,500</p>
                  </div>
                  <div class="bedrooms right flex-center">
                    <img src="${contextPath}/resources/images/bed.svg" class="left" alt="">
                    <!-- Appartment Number Of Bedrooms  -->
                    <p class="left">2 BD</p>
                  </div>
                  <div class="bathrooms right flex-center">
                    <img src="${contextPath}/resources/images/shower.svg" class="left" alt="">
                    <!-- Appartment Number of Bathrooms  -->
                    <p class="left">2 BA</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Appartment  -->
          <div class="col-12 col-md-6 col-lg-4">
            <div class="appartment-box">
              <div class="appartment-image">
                <!-- Appartment Image  -->
                <img src="${contextPath}/resources/images/appartment.png" alt="">
              </div>
              <div class="appartment-info">
                <div class="appartment-title">
                  <!-- Appartment Address  -->
                  <p>Random Street, Apt B453, New York</p>
                </div>
                <div class="appartment-details">
                  <div class="price left">
                    <!-- Appartment Price  -->
                    <p>$3,500</p>
                  </div>
                  <div class="bedrooms right flex-center">
                    <img src="${contextPath}/resources/images/bed.svg" class="left" alt="">
                    <!-- Appartment Number Of Bedrooms  -->
                    <p class="left">2 BD</p>
                  </div>
                  <div class="bathrooms right flex-center">
                    <img src="${contextPath}/resources/images/shower.svg" class="left" alt="">
                    <!-- Appartment Number of Bathrooms  -->
                    <p class="left">2 BA</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Appartment  -->
          <div class="col-12 col-md-6 col-lg-4">
            <div class="appartment-box">
              <div class="appartment-image">
                <!-- Appartment Image  -->
                <img src="images/appartment.png" alt="">
              </div>
              <div class="appartment-info">
                <div class="appartment-title">
                  <!-- Appartment Address  -->
                  <p>Random Street, Apt B453, New York</p>
                </div>
                <div class="appartment-details">
                  <div class="price left">
                    <!-- Appartment Price  -->
                    <p>$3,500</p>
                  </div>
                  <div class="bedrooms right flex-center">
                    <img src="${contextPath}/resources/images/bed.svg" class="left" alt="">
                    <!-- Appartment Number Of Bedrooms  -->
                    <p class="left">2 BD</p>
                  </div>
                  <div class="bathrooms right flex-center">
                    <img src="${contextPath}/resources/images/shower.svg" class="left" alt="">
                    <!-- Appartment Number of Bathrooms  -->
                    <p class="left">2 BA</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Appartment  -->
          <div class="col-12 col-md-6 col-lg-4">
            <div class="appartment-box">
              <div class="appartment-image">
                <!-- Appartment Image  -->
                <img src="${contextPath}/resources/images/appartment.png" alt="">
              </div>
              <div class="appartment-info">
                <div class="appartment-title">
                  <!-- Appartment Address  -->
                  <p>Random Street, Apt B453, New York</p>
                </div>
                <div class="appartment-details">
                  <div class="price left">
                    <!-- Appartment Price  -->
                    <p>$3,500</p>
                  </div>
                  <div class="bedrooms right flex-center">
                    <img src="${contextPath}/resources/images/bed.svg" class="left" alt="">
                    <!-- Appartment Number Of Bedrooms  -->
                    <p class="left">2 BD</p>
                  </div>
                  <div class="bathrooms right flex-center">
                    <img src="${contextPath}/resources/images/shower.svg" class="left" alt="">
                    <!-- Appartment Number of Bathrooms  -->
                    <p class="left">2 BA</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Appartment  -->
          <div class="col-12 col-md-6 col-lg-4">
            <div class="appartment-box">
              <div class="appartment-image">
                <!-- Appartment Image  -->
                <img src="${contextPath}/resources/images/appartment.png" alt="">
              </div>
              <div class="appartment-info">
                <div class="appartment-title">
                  <!-- Appartment Address  -->
                  <p>Random Street, Apt B453, New York</p>
                </div>
                <div class="appartment-details">
                  <div class="price left">
                    <!-- Appartment Price  -->
                    <p>$3,500</p>
                  </div>
                  <div class="bedrooms right flex-center">
                    <img src="${contextPath}/resources/images/bed.svg" class="left" alt="">
                    <!-- Appartment Number Of Bedrooms  -->
                    <p class="left">2 BD</p>
                  </div>
                  <div class="bathrooms right flex-center">
                    <img src="${contextPath}/resources/images/shower.svg" class="left" alt="">
                    <!-- Appartment Number of Bathrooms  -->
                    <p class="left">2 BA</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Appartment  -->
          <div class="col-12 col-md-6 col-lg-4">
            <div class="appartment-box">
              <div class="appartment-image">
                <!-- Appartment Image  -->
                <img src="${contextPath}/resources/images/appartment.png" alt="">
              </div>
              <div class="appartment-info">
                <div class="appartment-title">
                  <!-- Appartment Address  -->
                  <p>Random Street, Apt B453, New York</p>
                </div>
                <div class="appartment-details">
                  <div class="price left">
                    <!-- Appartment Price  -->
                    <p>$3,500</p>
                  </div>
                  <div class="bedrooms right flex-center">
                    <img src="images/bed.svg" class="left" alt="">
                    <!-- Appartment Number Of Bedrooms  -->
                    <p class="left">2 BD</p>
                  </div>
                  <div class="bathrooms right flex-center">
                    <img src="images/shower.svg" class="left" alt="">
                    <!-- Appartment Number of Bathrooms  -->
                    <p class="left">2 BA</p>
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
    <section id="works" class="how-it-works">
      <div class="container">
        <div class="row">
          <div class="col-12 works-title">
            <h3>How it works?</h3>
            <p>In this space market-facing, yet UI work flows , or bake it in.<br>Red flag we need a recap by eod, cob or whatever comes<br>first agile at the end of the day. </p>      
          </div>
        </div>
        <div class="row">
          <div class="col-12 col-md-12 col-lg-4">
            <div class="work-box animate">
              <div class="work-box-number">
                <p>01</p>
              </div>
              <div class="work-box-title">
                <p class="left">01</p>
                <p class="left">Find Your Location</p>
              </div>
              <div class="work-box-text">
                <p>In this space market-facing, yet UI work flows , or bake it in. Red flag we neef the day. </p>
              </div>
              <div class="work-box-link">
                <a href="#">Find Location</a>
              </div>           
            </div>
          </div>
          <div class="col-12 col-md-12 col-lg-4">
            <div class="work-box animate">
              <div class="work-box-number">
                <p>02</p>
              </div>
              <div class="work-box-title">
                <p class="left">02</p>
                <p class="left">Find Appartment</p>
              </div>
              <div class="work-box-text">
                <p>In this space market-facing, yet UI work flows , or bake it in. Red flag we neef the day. </p>
              </div>
              <div class="work-box-link">
                <a href="#">Find Location</a>
              </div>           
            </div>
          </div>
          <div class="col-12 col-md-12 col-lg-4">
            <div class="work-box animate">
              <div class="work-box-number">
                <p>03</p>
              </div>
              <div class="work-box-title">
                <p class="left">03</p>
                <p class="left">Make Contact</p>
              </div>
              <div class="work-box-text">
                <p>In this space market-facing, yet UI work flows , or bake it in. Red flag we neef the day. </p>
              </div>
              <div class="work-box-link">
                <a href="#">Find Location</a>
              </div>           
            </div>
          </div>
        </div>
        <!-- Services Area -->
        <div class="row work-services">
          <div class="col-12 work-services-title">
            <h3>Services</h3>
            <p>In this space market-facing, yet UI work flows , or bake it in.<br>Red flag we need a first agile at the end of the day. </p>
          </div>
        </div>
        <div class="row">
          <div class="col-12 col-md-7">
            <div class="work-service-image">
            </div>
          </div>
          <div class="col-12 col-md-5 work-service-info">
            <h4>Renting</h4>
            <p>In this space market-facing, yet UI work flows , or bake it in. Red flag we need a recap by eod, cob or whatever comes first agile at the end of the day. Not enough bandwidth closing these latest prospects is like putting socks on an octopus, yet due diligence</p>
          
            <h4>Selling</h4>
            <p>In this space market-facing, yet UI work flows , or bake it in. Cob or whatever comes first agile at the end of the day. Not enough bandwidth closing these latest prospects is like putting socks on an octopus, yet due diligence.Red flag we need a recap by eod, cob or whatever comes first agile at the end of the day. Not enough bandwidth closing these latest prospects is like putting socks on an octopus, yet due diligence</p>
            
            <h4>Building</h4>
            <p>In this space market-facing, yet UI work flows , or bake it in. Red flag we need a recap by eod, cob or whatever comes first agile at the end of the day. Not enough bandwidth closing these latest prospects is like putting socks on an octopus, yet due diligence</p>
          </div>
        </div>
      </div>
    </section>
    <!------------------------------------------------ AGENTS SECTION -->
    <section id="agents" class="agents">
      <div class="container">
        <div class="row agents-services">
          <div class="col-12 agents-title">
            <h3>Meet Our Agents</h3>
            <p>In this space market-facing, yet UI work flows , or bake it in.<br>Red flag we need a recap by eod, cob or whatever comes<br>first agile at the end of the day. </p>
          </div>
        </div>
        <div class="row">
          <!-- Agent  -->
          <div class="col-12 col-md-12 col-lg-4">
            <div class="appartment-box">
              <div class="appartment-image">
                <!-- Agent Image  -->
                <img src="${contextPath}/resources/images/agent.png" alt="">
              </div>
              <div class="appartment-info">
                <div class="appartment-title">
                  <!-- Agent Title  -->
                  <p>Agent</p>
                </div>
                <div class="appartment-details">
                  <div class="price left agent-name">
                    <!-- Agent name  -->
                    <p>Mr. Luke Skywalker</p>
                  </div>
                  <div class="agent-social right flex-center">
                    <a href="#"><img src="${contextPath}/resources/images/facebook.svg" alt=""></a>
                    <a href="#"><img src="${contextPath}/resources/images/twitter.svg" alt=""></a>
                    <a href="#"><img src="${contextPath}/resources/images/dribble.svg" alt=""></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Agent  -->
          <div class="col-12 col-md-12 col-lg-4">
            <div class="appartment-box">
              <div class="appartment-image">
                <!-- Agent Image  -->
                <img src="images/agent.png" alt="">
              </div>
              <div class="appartment-info">
                <div class="appartment-title">
                  <!-- Agent Title  -->
                  <p>Agent</p>
                </div>
                <div class="appartment-details">
                  <div class="price left agent-name">
                    <!-- Agent name  -->
                    <p>Mr. Luke Skywalker</p>
                  </div>
                  <div class="agent-social right flex-center">
                    <a href="#"><img src="${contextPath}/resources/images/facebook.svg" alt=""></a>
                    <a href="#"><img src="${contextPath}/resources/images/twitter.svg" alt=""></a>
                    <a href="#"><img src="${contextPath}/resources/images/dribble.svg" alt=""></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Agent  -->
          <div class="col-12 col-md-12 col-lg-4">
            <div class="appartment-box">
              <div class="appartment-image">
                <!-- Agent Image  -->
                <img src="${contextPath}/resources/images/agent.png" alt="">
              </div>
              <div class="appartment-info">
                <div class="appartment-title">
                  <!-- Agent Title  -->
                  <p>Agent</p>
                </div>
                <div class="appartment-details">
                  <div class="price left agent-name">
                    <!-- Agent name  -->
                    <p>Mr. Luke Skywalker</p>
                  </div>
                  <div class="agent-social right flex-center">
                    <a href="#"><img src="${contextPath}/resources/images/facebook.svg" alt=""></a>
                    <a href="#"><img src="${contextPath}/resources/images/twitter.svg" alt=""></a>
                    <a href="#"><img src="${contextPath}/resources/images/dribble.svg" alt=""></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!------------------------------------------------ ADD SECTION -->
    <section class="add">
      <div class="container">
        <div class="row">
          <div class="col-12 col-md-7">
            <div class="add-image add1">
              <!-- image added via css -->
              <div class="add-image-info flex-center">
                <img src="${contextPath}/resources/images/pointer.svg" class="left" alt="">
                <!-- image location -->
                <p>Melbourne,Australia</p>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-5 flex-center">
            <div class="add-info">
              <!-- Add title -->
              <h4>Super Awesome Add</h4>
              <!-- Add Info -->
              <p>In this space market-facing, yet UI work flows , or bake it in. Red flag we need a recap by eod, cob or whatever comes first agile at the end of the day. Not enough bandwidth closing these latest prospects is like putting socks on an octopus, yet due diligence</p>
            </div>
          </div>
          <div class="col-12 col-md-5 flex-center">
            <div class="add-info add2-info">
              <!-- Add title -->
              <h4>Super Awesome Add</h4>
              <!-- Add info -->
              <p>In this space market-facing, yet UI work flows , or bake it in. Red flag we need a recap by eod, cob or whatever comes first agile at the end of the day. Not enough bandwidth closing these latest prospects is like putting socks on an octopus, yet due diligence</p>
            </div>
          </div>
          <div class="col-12 col-md-7">
            <div class="add-image right add2">
              <!-- image added via css -->
              <div class="add-image-info add-image-info2 flex-center">
                <img src="${contextPath}/resources/images/pointer.svg" class="left" alt="">
                <!-- image location -->
                <p>Melbourne,Australia</p>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-7">
            <div class="add-image add3">
              <!-- image added via css -->
            </div>
          </div>
          <div class="col-12 col-md-5 flex-center">
            <div class="add-info add3-info">
              <!-- Add title -->
              <h4>Super Awesome Add</h4>
              <!-- Add info -->
              <p>In this space market-facing, yet UI work flows , or bake it in. Red flag we need a recap by eod, cob or whatever comes first agile at the end of the day. Not enough bandwidth closing these latest prospects is like putting socks on an octopus, yet due diligence</p>
              <button class="search-btn left show-more-btn">Show Me More</button>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!------------------------------------------------ FOOTER SECTION -->
    <footer id="contact">
      <div class="container">
        <div class="row footer-top">
          <div class="col-12 col-md-6">
            <!-- logo -->
            <h3>luxestate</h3>
            <h3>Explore Real Estate</h3>
          </div>
          <div class="col-12 col-md-6 Newsletter">
            <input type="text" placeholder="Subscribe To Our Newsletter" class="left">
            <button class="newsletter-btn left"></button>
          </div>
        </div>
        <div class="row footer-bottom">
          <div class="col-sm-12 col-md-4 footer-logo">
            <h4>luxestate</h4>
            <p>© 2019 - luxestate,<br>All Right Reserved</p>
          </div>
          <div class="col-sm-3 col-md-2 footer-column">
            <h5>LUXESTATE</h5>
            <a href="#">Agents</a>
            <a href="#">Hunters</a>
          </div>
          <div class="col-sm-3 col-md-2 footer-column">
            <h5>COMPANY</h5>
            <a href="#">About</a>
            <a href="#">FAQ</a>
            <a href="#">Contact</a>
            <a href="#">Social</a>
          </div>          
          <div class="col-sm-3 col-md-2 footer-column">
            <h5>PRODUCT</h5>
            <a href="#">Appartments</a>
            <a href="#">How It Works</a>
          </div>
          <div class="col-sm-3 col-md-2 footer-column">
            <h5>SERVICES</h5>
            <a href="#">Renting</a>
            <a href="#">Selling</a>
            <a href="#">Building</a>
          </div>
        </div>
      </div>
    </footer>
    <!-- Scripts -->
    <script src="${contextPath}/resources/js/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/popper.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${contextPath}/resources/js/main.js"></script>
    <!-- Scripts Ends -->
	
	<input type="hidden" id="loginStatus" name="loginStatus" value="${userSession }">
  </body>
</html>

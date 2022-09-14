<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REGISTER FORM __ freedom</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- jquery를 사용할 때 소스 -->
<script>
	/** 회원가입 전에 보내는 데이터를 가공하기 위한 함 **/
	function sendData() {
		var id = $("#inputId").val();
		var nick = $("#inputNick").val();
		var pw = $("#inputPw").val();
		var pwChk = $("#inputChkPw").val();
		var select = $("#inputSelect").val();
		//alert("input check ==" + id + " nick [ " + nick + "] pw  [ " + pw + "] checkpw [ " + pwChk + "] select [ " + select " ]" );
		//console.log("id :: [ " +id +" ]");
		//console.log("nick :: [ " + nick + " ] ");
		//console.log("pw :: [ "+ pw + " ]");
		//console.log("pwChk :: [ "+ pwChk + " ]");
		//console.log("select :: [ "+ select + " ]");
		if(id == "") {
			alert("아이디를 입력해주시요!");
		} else if(nick == "") {
			alert("닉네임을 입력해주시요!");
		} else if(pw == "") {
			alert("비밀번호를 입력해주세요!");
		} else if(pwChk == "") {
			alert("비밀번호를 확인해주세요!");
		} else if(pw != pwChk) {
			alert("입력하신 비밀번호가 맞지 않습니다. 다시 확인해주세요!");
		} else if(select == "defualt") {
			alert("내가 지향하는 자유를 선택해주세요!");
		} else {
			/*
			$("#sendId").val() = id;
			$("#sendNick").val() = nick;
			$("#sendPw").val() = pw;
			$("#sendFreedom").val() = select;
			*/
			//console.log("sendId :: " + $("sendId").val());
			$('input[name=id]').attr('value',id);
			$('input[name=nick]').attr('value',nick);
			$('input[name=pw]').attr('value',pw);
			$('input[name=select]').attr('value',select);
			
			var idchk = $("#idChk").val();
			
		   if(idchk == "1") {
				alert('아이디 중복체크를 해주세요! ');
			}else if(idchk == "0"){
				alert('register ready');
				registerData.submit();
				//window.open("about:blank","_self").close();
			}
		
		}
	}
	
	 
	function checkId() {
		var id = $("#inputId").val();
		//console.log(chkId);
		if(id != "") {			
			$.ajax({
				url : "/member/memberCheck?id="+id,
				type : 'GET',
				success : function(result) {
					console.log(result);
					if(result == "1") {
						$('input[name=idChk]').attr('value',result);
						alert("중복된 아이디입니다.");
					}else {	
						$('input[name=idChk]').attr('value',result);
						alert("사용할 수 있는 아이디 입니다!");
					}
				}, 
				error : function () {
					alert('문제발생!!!');
				} 
			})
		} else {
			alert('아이디를 입력해주세요!');
		}
		
	}
	
</script>
</head>
<body>

<h1 align="center">REGISTER FORM </h1>
<div class="registerForm">
<table border="1" >
	<tr>
		<td>
			아이디 : <input type="text" id="inputId" placeholder="아이디를 입력하세요 ">   <button type="button" onclick="javascript:checkId()">아이디 중복검사</button>
		</td>
	</tr>
	<tr>
		<td>
		    닉네임  : <input type="text" id="inputNick" placeholder="사용하실 닉네임을 입력하세요 ">  
		</td>
	</tr>
	<tr>
		<td>
			비밀번호  : <input type="password" id="inputPw" placeholder="비밀번호를 입력해주세요  "> 
		</td>
	</tr>
	<tr>
		<td>
			비밀번호 확인  : <input type="password" id="inputChkPw" placeholder="비밀번호를 다시 입력해주새요  "> 
		</td>
     </tr>
     <tr>
		<td>
			나의 자유 
				<select id="inputSelect">
					 <option value="defualt" selected>--- 기본 ---</opntion>
					 <option value="mental">정신적인 자유</opntion>
					 <option value="money">자본적인 자유 </opntion>
					 <option value="body">육체적인 자유</opntion>
  				</select>
		</td>
	</tr>
</table>
</div>
<div class="registerButton" align="center">
<button type="button" onclick="javascript:sendData()">회원가입</button>
</div>

<form id="registerData" action="${contextPath }/member/register" method="post">
	<input type="hidden" id="sendId" name="id" value="">
	<input type="hidden" id="sendNick" name="nick" value="">
	<input type="hidden" id="sendPw" name="pw" value="">
	<input type="hidden" id="sendFreedom" name="select" value="">
	<input type="hidden" id="idChk" name="idChk" value="">
</form>


</body>
</html>
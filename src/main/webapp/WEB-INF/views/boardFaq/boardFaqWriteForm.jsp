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
<!-- jquery를 사용할 때 소스 -->
<script>

	$(document).ready(function () {  //비밀글 체크 하고 패쓰워드 show hide ok
		const buttonEl = document.querySelector("#checkSecrit");
		console.log(buttonEl);
		buttonEl.onclick = function (event) {
			var chk = $('#checkSecrit').is(':checked');
			console.log('ddd' + chk);
			var chkvalue = $('#checkSecrit').val();
			
				if($("#secritPw").css("display") == "none") {
					$('input[name=checkSecrit]').attr('value', "on");
					$("#secritPw").show();
				}else {
					$('input[name=checkSecrit]').attr('value', "off");
					$('input[name=sendPw]').attr('value', "");
					$("#secritPw").hide();
				}
				console.log(chkvalue);
			}
			  
		})

	function sendData() {
		var selectType = $("#selectType").val();
		var title = $("#title").val();
		var content = $("#content").val();
		var scriptCheck = $("#clickSecrit").val();
		var pw = $("#pw").val();
		
		console.log('selectType : ' + selectType);
		console.log('title : '+ title);
		console.log('content : ' + content);
		console.log('scriptCheck : ' + scriptCheck);
		console.log('pw : ' + pw);
		
		
		
		if(title == "") {
			alert('제목을 입력해주세요!');
		}else if(content == "") {
			alert('내용을 입력해주세요!')
		}else {
			$('input[name=sendSelectType]').attr('value', selectType);
			$('input[name=sendTitle]').attr('value', title);
			$('input[name=sendContent]').attr('value', content);
			if(scriptCheck == "on") {
				$('input[name=sendPw]').attr('value', pw);
				 if(pw == ""){
						alert('비밀글의 비밀번호를 입력해주세요!');
					}
			}
			
			FAQform.submit();
		}
		
		
		
	//	$('input[name=sendContent]').attr('value', content);
		
		
	}
</script>
</head>
<body>
	<h1>FQA 글쓰기 영역</h1>
	<table border="1">
		<tr>
			<td>
				글 타입 :   <select id="selectType">
								<option value="default">문의하기 </option>
								<option value="fix">개선사항 </option>
								<option value="idea">아이디어 </option>
								<option value="add">광고문의 </option>
							</select>
			</td>
		</tr>
		<tr>
			<td>
				제목 :      <input type="text" id="title" placeholder="제목을 입력해주세요!">
			</td>
		</tr>
		<tr>
			<td>
				글내용 :     <textarea id="content" rows="" cols=""></textarea>
			</td>
		</tr>
		<tr>
			<td>
				비밀글  		<input type="checkbox" id="checkSecrit" value="">
						<div id="secritPw" style="display: none;">
							<input type="password" id="pw" placeholder="비밀번호를 입력해주세요!">  
						</div>
			</td>
		</tr>
	</table>
	<button type="button" onclick="javascript:sendData()">글쓰기</button>
<form id="FAQform" action="${contextPath }/boardFaq/boardFaqWrite" method="post">
	<input type="hidden" name="writer" id="writer" value="${userSession }">
	<input type="hidden" name="checkSecrit" id="clickSecrit" value="">
	<input type="hidden" name="sendSelectType" id="sendSelectType" value="">
	<input type="hidden" name="sendTitle" id="sendTitle" value="">
	<input type="hidden" name="sendContent" id="sendContent" value="">
	<input type="hidden" name="sendPw" id="sendPw" value="">
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<script>
function login(){
	var idObj = document.getElementById("id");
	alert(idObj.value);
	var pwdObj = document.getElementById("pwd");
	alert(pwdObj.value);
}
</script>
<body>
안녕하세요. <br>
처음 만든 웹프로젝트의 index.html 파일입니다.<br>
이건 제 index.html이랍니다.<br/>

<form action="login.jsp">

아이디 : <input type="text" name="id" id="id"><br>
비밀번호 : <input type="password" name="pwd" id="pwd"><br>
<input type="submit" value="로그인">

</form>

</body>
</html>
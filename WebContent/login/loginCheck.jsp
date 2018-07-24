<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
alert("ID PW 를 다시 입력해주세요");
var path = '/' + location.pathname.split('/')[1];
location.href= path+"/login.JejuTravel";
</script>
</body>
</html>
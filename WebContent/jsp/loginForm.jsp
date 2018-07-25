<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="<%=request.getContextPath()%>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Form</title>
<link rel = "stylesheet" type = "text/css" href = "${path}/css/loginStyle.css">
</head>
<body>
	<div class = "loginbox">
		<img src = "${path}/img/symbol.jpg" class = "avatar">
		<h1>로그인</h1>
		<form action = "${path}/emp/userLogin" method = "post">
			<p>Employee ID</p>
			<input type = "text" name = "UID" placeholder = "Enter ID" autofocus>
			<p>Password</p>
			<input type = "password" name = "UPW" placeholder = "Enter Password">
			<input type = "submit" value = "Login">
		</form>
	</div>
</body>
</html>
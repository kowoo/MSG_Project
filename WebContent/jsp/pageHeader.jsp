<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setAttribute("contextPath", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/main.css?ver=7">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header id="main_header"> 
		<hgroup id="title"> 
			<img src="${contextPath}/img/msgLogo.png">
		</hgroup> 
		
		<nav id="main_lnb">
			<ul id="ul1">
				<li><a>게시판</a></li>
				<li><a>메일</a></li>
				<li><a>전자결제</a></li>
				<li><a>메신저</a></li>
				<li><a>비품대여</a></li>
			</ul>
			<div id="imgBox">
				<h4 id="place" style="display: inline-block;"></h4>
				<h4 id="temp" style="display: inline-block;"></h4>
			</div>
		</nav> 
	</header>
</body>
</html>
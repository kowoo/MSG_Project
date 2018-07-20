<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setAttribute("contextPath", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src = "${contextPath}/js/main.js"></script>
</head>
<body>
	<input type="hidden" id="path" value="${contextPath}"> 
	<header id="main_header">
		<hgroup id="title">
			<img src="${contextPath}/img/msgLogo.png" onclick="location.href='${contextPath}/page/main'">
		</hgroup> 
		
		<nav id="main_lnb">
			<ul id="ul1">
				<li><a>게시판</a></li>
				<li><a>메일</a></li>
				<li><a>전자결재</a></li>
				<li><a href="${contextPath}/page/messengerMain">메신저</a></li>
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
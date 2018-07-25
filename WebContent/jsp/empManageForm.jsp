<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setAttribute("contextPath", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous">
</script>
</head>
<link rel = "stylesheet" type = "text/css" href = "${contextPath}/css/main.css">
<link rel = "stylesheet" type = "text/css" href = "${contextPath}/css/empManage.css?ver=2">
<script type = "text/javascript" src = "${contextPath}/js/main.js"></script>
<script type = "text/javascript" src = "${contextPath}/js/empMng.js"></script>
<body>
	<jsp:include page = "/jsp/pageHeader.jsp"></jsp:include>
	<div id = "content">
		<div id = "menuBox1">
			<br>
			<h2 align = "center">관리자</h2>
			<br><hr id = "hr1"><br>
			<ul id = "menuBoxUI" style = "padding-left : 30px;">
				<li><a href = "#">공지사항</a></li><br>
				<li>
					<a href = "javascript:showDetail();" id = "mngTitle">사원관리</a>
					<ul id = "mngDetail">
						<li><a href = "${contextPath}/emp/empList">사원목록</a></li>
						<li><a href = "${contextPath}/emp/empChartForm">조직도 관리</a></li>
					</ul>
				</li>
				<br>
			</ul>
		</div>
		<div id = "menuBox2">
			<p style = "margin : 20px">
				<a href = "#" style = "font-size: 20px;">관리자 페이지</a>
			</p>
			<hr id = "hr3">
			<hr id = "hr4">
		</div>
	</div>
	<jsp:include page = "/jsp/pageFooter.jsp"></jsp:include>
</body>
</html>
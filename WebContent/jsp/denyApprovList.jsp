<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setAttribute("contextPath", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous">
</script>
</head>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/main.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/denyDocList.css">
<script type="text/javascript" src="${contextPath}/js/main.js"></script>
<body>
	<jsp:include page="/jsp/pageHeader.jsp"></jsp:include>
	<div id="content">
		<div id="menuBox1">
			<br>
			<h2 align="center">전자결재</h2>
			<br>
			<hr id="hr1">
			<br>
			<ul id="menuBoxUI" style="padding-left: 30px;">
				<li><a href="${contextPath}/page/approvalStore">결재함</a></li>
				<br>
				<li><a href="${contextPath}/page/approvalWriteMain">결재문서 작성</a></li>
				<br>
			</ul>
			<hr id="hr2">
		</div>
		<div id="menuBox2">
			<p style="margin: 20px">
				<a href="#" style="font-size: 20px;">반려 결재함</a>
			</p>
			<hr id="hr3">
			<hr id="hr4">
		</div>
	</div>
	<jsp:include page="/jsp/pageFooter.jsp"></jsp:include>
</body>
</html>
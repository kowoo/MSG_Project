<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setAttribute("contextPath", request.getContextPath()); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/main.css?ver=7">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/approvWriteMain.css">
<script type="text/javascript" src = "${contextPath}/js/main.js"></script>
<body>
	<jsp:include page="/jsp/pageHeader.jsp"></jsp:include>
	<div id = "content">
		<div id = "menuBox1">
			<br>
			<h2 align = "center">전자결재</h2>
			<br><hr id = "hr1"><br>
			<ul id = "menuBoxUI" style = "padding-left : 30px;">
				<li><a href = "${contextPath}/approval/approvalStore">결재함</a></li><br>
				<li><a href = "${contextPath}/approval/approvalWriteMain">결재문서 작성</a></li><br>
			</ul>
			<hr id = "hr2">
		</div>
		<div id = "menuBox2">
			<p style = "margin : 20px">
				<a href = "#" style = "font-size: 20px;">결재문서 작성</a>
			</p>
			<hr id = "hr3">
			<hr id = "hr4">
		</div>
		<div id = "writeBox">
			<form action = "${contextPath}/approval/reqDoc" id = "typeForm" align = "center" method = "post">
				<fieldset>
					<legend>문서양식 선택</legend>
					<label for = "docType">문서양식 : </label>
					<select id = "docType" name = "docType">
						<option value = "kian">기안서</option>
						<option value = "spend">지출 결의서</option>
						<option value = "vac">휴가계획서</option>
					</select>
					<input type = "submit" id = "submit_Btn" value = "문서작성 >">
				</fieldset>
			</form>
		</div>
	</div>
	<jsp:include page="/jsp/pageFooter.jsp"></jsp:include>
</body>
</html>
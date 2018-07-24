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
<link rel = "stylesheet" type = "text/css" href = "${contextPath}/css/vacation.css">
<script type = "text/javascript" src = "${contextPath}/js/main.js"></script>
<body>
	<jsp:include page = "/jsp/pageHeader.jsp"></jsp:include>
	<div id = "content">
		<div id = "menuBox1">
			<br>
			<h2 align = "center">전자결재</h2>
			<br>
			<hr id = "hr1"><br>
			<ul id = "menuBoxUI" style = "padding-left : 30px;">
				<li><a href = "${contextPath}/page/approvalStore">결재함</a></li><br>
				<li><a href = "${contextPath}/page/approvalWriteMain">결재문서 작성</a></li><br>
			</ul>
			<hr id = "hr2">
		</div>
		<div id="wrap" align="center">
			<div id="header">
				<div id="left">
					<img src="${contextPath}/img/msgLogo.png">
				</div>
				<div id="center">
					<h1>휴가 계획서</h1>
				</div>
				<div id="right">
					<table id="top_info">
						<tr>
							<td class="top_title">문서번호</td>
							<td class="top_con">${DOCNO}</td>
						</tr>
						<tr>
							<td class="top_title">작성자</td>
							<td class="top_con">${WRITER}</td>
						</tr>
						<tr>
							<td class="top_title">작성일자</td>
							<td class="top_con">${WRITEDATE}</td>
						</tr>
					</table>
				</div>
			</div>	
	
			<div id="line" align="center">
				<div id="selectLine">
					<button onclick = "createLine();" style = "width : 100%; height : 30px;">결재선 선택</button>
				</div>
				<div id="myLine">
				
				</div>
			</div>
	
			<div id="doc_content" align = "center">
				<form action="#">
					<table style = "width : 100%">
						<tr>
							<th rowspan="2" class = "ta_header">기안자</th>
							<th>사번</th><td class = "info">${user.empNo}</td>
							<th>소속</th><td class = "info">${user.deptName}</td>
						</tr>
						<tr>
							<th class = "ta_header">직급</th><td class = "info">${user.empPos}</td>
							<th class = "ta_header">성명</th><td class = "info">${user.empName}</td>
						</tr>
						<tr>
							<th class = "ta_header">휴가구분</th>
							<td colspan = "4">
								<input type = "text" value = "${vacType}" name = "vacType">
							</td>
						</tr>
						<tr>
							<th class = "ta_header">기간</th>
							<td colspan = "4">
								<input type = "text" class = "input_val" name = "period" style = "width : 90%; border : 0;">
							</td>
						</tr>
						<tr>
							<th class = "ta_header">사유</th>
							<td colspan = "4">
								<textarea cols="50" rows="5" name="DETAIL" id="DETAIL" style = "width : 98%; padding : 5px;"></textarea>
							</td>
						</tr>
						<tr>
							<th style = "height : 90px;">비고</th>
							<td colspan = "4">
								<textarea cols="50" rows="5" name="ETC" id="ETC" style = "width : 97%; margin : 5px; padding : 5px;"></textarea>
							</td>
						</tr>
						<tr>
							<td colspan = "5" style = "text-align: right;" id = "btm">
								<input type = "button" value = "취소" class = "btns" onclick = "history.go(-1);">
								<input type = "button" value = "임시저장" class = "btns">
								<input type = "submit" value = "등록" class = "btns">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page = "/jsp/pageFooter.jsp"></jsp:include>
</body>
</html>
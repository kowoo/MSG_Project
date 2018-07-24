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
<link rel = "stylesheet" type = "text/css" href = "${contextPath}/css/empList.css">
<script type = "text/javascript" src = "${contextPath}/js/main.js"></script>
<script type = "text/javascript" src = "${contextPath}/js/empMng.js"></script>
<script type = "text/javascript" src = "${contextPath}/js/empList.js"></script>
<body>
	<div id = "mask"></div>
	<div id = "empView" style = "display : none;">
		<ul id = "showUL" align = "center">
			<li id = "empPic">
				
			</li>
			<li>
				<span id = "empNo"></span>
			</li>
			<li>
				<span id = "empName"></span>
			</li>
			<li>
				<span id = "empDept"></span>
			</li>
			<li>
				<span id = "empPos"></span>
			</li>
			<li>
				<span id = "empTel"></span>
			</li>
			<li>
				<span id = "empEmail"></span>
			</li>
			<li>
				<span id = "empSd"></span>
			</li>
			<li>
				<span id = "empOd"></span>
			</li>
		</ul>
	</div>
	<input type = "hidden" id = "path" value = "${contextPath}">
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
						<li><a href = "${contextPath}/page/empList">사원목록</a></li>
						<li><a href = "${contextPath}/page/empChartForm">조직도 관리</a></li>
					</ul>
				</li>
				<br>
			</ul>
		</div>
		<div id = "menuBox2">
			<p style = "margin : 20px">
				<a href = "#" style = "font-size: 20px;">사원목록</a>
			</p>
			<hr id = "hr3">
			<br><br>
			<hr id = "hr4">
		</div>
		
		<div id = "empList">
			<table>
				<caption>사원번호, 사원이름, 사원부서, 사원직급, 연락처,  수정, 삭제</caption>
				<colgroup>
					<col style = "width : 10%">
					<col style = "width : 10%">
					<col style = "width : 15%">
					<col style = "width : 10%">
					<col style = "width : 5%">
					<col style = "width : 15%">
					<col style = "width : 5%">
					<col style = "width : 5%">
				</colgroup>
				<thead>
					<tr>
						<th>사원번호</th>
						<th>사원이름</th>
						<th>부서</th>
						<th>직급</th>
						<th>연락처</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody id = "table_Content">
		
				</tbody>
			</table>
		</div>
		<div id = "paging" align = "center">[1] [2] [3] [4] [5] [6] [7] [8] [9]</div>
		<div id = "search" align = "center">
			<select name = "searchType">
				<option value = "empName">이름</option>
				<option value = "empDept">부서</option>
				<option value = "empPos">직급</option>
			</select>
			<input type = "text">
			<input type = "button" value = "검색">
		</div>
	</div>
	<jsp:include page = "/jsp/pageFooter.jsp"></jsp:include>
</body>
</html>
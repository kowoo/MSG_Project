<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setAttribute("contextPath", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script
	src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous">
</script>
</head>
<link rel = "stylesheet" type = "text/css" href = "${contextPath}/css/main.css">
<link rel = "stylesheet" type = "text/css" href = "${contextPath}/css/approvStore.css">
<script type = "text/javascript" src = "${contextPath}/js/main.js?ver=3"></script>
<body>
	<jsp:include page = "/jsp/pageHeader.jsp"></jsp:include>
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
				<a href = "#" style = "font-size: 20px;">내 결재</a>
			</p>
			<hr id = "hr3">
			<hr id = "hr4">
		</div>
		
		<div id = "appbox1">
			<div id = "wait">
				<p id = "wait_title">
					<a href = "${contextPath}/approval/denyDocForm" class = "bigTitle">반려 결재목록</a>
				</p>
				<ul>
					<li class = "list_li">
						<span class = "title"><a href = "#">MSG 신 사업 프로젝트 기안서</a></span><span class = "date">2018.06.09</span>
					</li>
					<li class = "list_li">
						<span class = "title"><a href = "#">xx그룹 프로젝트 최종보고서</a></span><span class = "date">2018.06.17</span>
					</li>
					<li class = "list_li">
						<span class = "title"><a href = "#">IT부서 회식 경비신청서</a></span><span class = "date">2018.07.11</span>
					</li>
					<li class = "list_li">
						<span class = "title"><a href = "#">하계 휴가 신청서</a></span><span class = "date">2018.07.17</span>
					</li>
					<li class = "list_li">
						<span class = "title"><a href = "#">병가 신청서</a></span><span class = "date">2018.07.18</span>
					</li>
				</ul>
			</div>
			
			<div id = "req">
				<p id = "req_title">
					<a href = "${contextPath}/approval/curDocForm" class = "bigTitle">진행 결재목록</a>
				</p>
				<ul>
					<li class = "list_li">
						<span class = "title"><a href = "#">영업부서 협업 신청서</a></span><span class = "date">2018.07.15</span>
					</li>
					<li class = "list_li">
						<span class = "title"><a href = "#">xx그룹 프로젝트 결과보고서</a></span><span class = "date">2018.07.15</span>
					</li>
					<li class = "list_li">
						<span class = "title"><a href = "#">xx프로젝트 설계보고서</a></span><span class = "date">2018.07.19</span>
					</li>
				</ul>
			</div>
			
			<div id = "finish">
				<p id = "finish_title">
					<a href = "${contextPath}/approval/comDocForm" class = "bigTitle">완료 결재목록</a>
				</p>	
				<ul>
					<li class = "list_li">
						<span class = "title"><a href = "#">외근 경비 신청서</a></span><span class = "date">2018.05.30</span>
					</li>
					<li class = "list_li">
						<span class = "title"><a href = "#">비품 구매 신청서</a></span><span class = "date">2018.06.11</span>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<jsp:include page = "/jsp/pageFooter.jsp"></jsp:include>
</body>
</html>
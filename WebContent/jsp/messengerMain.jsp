<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setAttribute("contextPath", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/messenger.css?ver=7">
<title>Messenger Main</title>
</head>
<body>
<jsp:include page="/jsp/pageHeader.jsp"></jsp:include>
	
	<div id="content">
		<div id="nameBox">
			<p>쪽지</p>
			<hr id="hr1">
		</div>
		<div id="menuBox1">
			<p>쪽지</p>			
			<ul id="menuBox1Ul">
				<li>
					<a>쪽지</a>
				</li>
				<li>
					<a>채팅</a>
				</li>
				
			</ul>
		</div>
	</div>
	
<jsp:include page="/jsp/pageFooter.jsp"></jsp:include>
</body>
</html>
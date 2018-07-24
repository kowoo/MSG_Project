<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setAttribute("contextPath", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/mail.css">  
<script src='${contextPath}/fullcalendar/jquery.min.js'></script>
<title>E-Mail 임시보관함 상세보기</title>
</head>
<script type="text/javascript" src = "${contextPath}/js/main.js"></script>
<body>
<jsp:include page="/jsp/pageHeader.jsp"></jsp:include>
<!-------------------------------------헤더--------------------------------------------------------->
		<div id="content">
			<p id="p_header2">
				<a href="groupmain">홈</a>&nbsp;>
				<a href="mail_main_form">전자메일</a>&nbsp;>
				<a href="mail_draftsInbox_form">임시보관함</a>&nbsp;>
				<a href="mail_draftsInbox_view_form">상세보기</a>
			</p>
			<div id="menuBox1">
			<br>
			<h2 align="center">전자메일</h2>
			<br><hr id="hr1"><br>
			
			<ul id="menuBox1Ul">
				<li><a href="mail_receiveInbox_form">받은편지함&nbsp;<small style=color:red;>(8)</small></a></li><br>		
				<li><a href="mail_sendInbox_form">보낸편지함&nbsp;<small style=color:red;>(2)</small></a></li><br>
				<li><a href="mail_myWriteInbox_form">내게쓴메일함&nbsp;<small style=color:red;>(1)</small></a></li><br>
				<li><a href="mail_draftsInbox_form">임시보관함&nbsp;<small style=color:red;>(1)</small></a></li><br>
				<li><a href="mail_Write_form">메일쓰기</a></li><br>
				<li><a href="mail_myWrite_form">내게쓰기</a></li><br>
				<li><a href="mail_deleteInbox_form">지운편지함&nbsp;<small><a href="mail_delete_notice_form" style=color:red;>비우기</a></small></a></li><br>
			</ul>
				<hr id="hr2">
			
			</div>
			<div id="menuBox2">
			<p style="margin:20px">
				<a href="mail_draftsInbox_view_form" style="font-size: 20px;">임시보관함</a>	
			</p>
			<hr id="hr3">
				<div id="button_send1">
				<input type="button" name="보내기" value="보내기" id="mail_send_view">
				<input type="button" name="삭제" value="삭제" id="mail_delete_view">
				</div>
				<div id="button_send2">
				<br>
				<label>이준성 사원</label><br>
				<label>첨부자료  </label>	
				</div>
				<hr id="hr4" style="margin-top:80px;">
				<br>
				<h3>임시 보관함</h3>
				<br>
				<hr id="hr3">
				<br>
				임시보관함.........
				<hr id="hr5">
		</div>
			
		</div>
	
	

	<!-------------------------------------바디---------------------------------------------------------------------------->
	<jsp:include page="/jsp/pageFooter.jsp"></jsp:include>
</body>
</html>
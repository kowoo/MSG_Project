<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%request.setAttribute("contextPath", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<link rel="stylesheet" type="text/css" href="${contextPath}/css/mail.css">  
<link rel="stylesheet" type="text/css" href="${contextPath}/js/mail.js"> 

<script src='${contextPath}/fullcalendar/jquery.min.js'></script>
<script src='${contextPath}/fullcalendar/moment.min.js'></script>
<script src='${contextPath}/fullcalendar/fullcalendar.js'></script>
<script src='${contextPath}/fullcalendar/ko.js'></script>
<title>메인</title>
</head>
<script type="text/javascript" src = "${contextPath}/js/main.js"></script>

<body>

	<jsp:include page="/jsp/pageHeader.jsp"></jsp:include>
	<!-------------------------------------헤더--------------------------------------------------------->
	<input type = "hidden" id = "path" value = "${contextPath}">
	<div id="content">
			<p id="p_header0">
				<a href="group_Main">홈</a>&nbsp;>
				<a href="mail_main_form">전자메일</a>
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
				<a href="mail_receiveInbox_form" style="font-size: 20px;">최근 메일 목록 | 받은편지함 : 8통</a>
				
				
			</p>
			<hr id="hr3">
			<br>
				<h3><a href="mail_receiveInbox_form">받은편지함</a></h3>
				<br>
				<hr id="hr4">
				<br>
				<table>
				<tr>			
				<th width="200px">보낸이</th>
				<th width="400px">제목</th>
				<th width="200px">시간</th>
				</tr>
				<tr>
				<td width="200px">김진수 과장</td>
				<td width="400px"><a href="mail_receiveInbox_view_form">기획안 다시 보내주세요</a></td>
				<td width="200px">2018/7/16</td>
				</tr>			
				<tr>
				<td width="200px">김진수 과장</td>
				<td width="400px"><a href="mail_receiveInbox_view_form">기획안 다시 보내주세요</a></td>
				<td width="200px">2018/7/16</td>
				</tr>
				</table>
				<br>
				<hr id="hr4">
				<br>
				<p style="margin:20px">
				<a href="mail_sendInbox_form" style="font-size: 20px;">최근 메일 목록 | 보낸편지함 : 2통</a>
				</p>
				<hr id="hr3">
				<br>
				<h3><a href="mail_sendInbox_form">보낸편지함</a></h3>
				<br>
				<hr id="hr4">
				<br>
				<table>
				<tr>			
				<th width="200px">보낸이</th>
				<th width="400px">제목</th>
				<th width="200px">시간</th>
				</tr>
				<tr>
				<td width="200px">김진수 과장</td>
				<td width="400px"><a href="mail_sendInbox_view_form">기획안 다시 보내주세요</a></td>
				<td width="200px">2018/7/16</td>
				</tr>			
				<tr>
				<td width="200px">김진수 과장</td>
				<td width="400px"><a href="mail_sendInbox_view_form">기획안 다시 보내주세요</a></td>
				<td width="200px">2018/7/16</td>				
				</tr>	
				</table><br>
				<hr id="hr4">
				<br>
		</div>
		</div>


	<!-------------------------------------바디---------------------------------------------------------------------------->
	<jsp:include page="/jsp/pageFooter.jsp"></jsp:include>
</body>
</html>
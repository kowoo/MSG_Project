<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%request.setAttribute("contextPath", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/main.css?ver=7">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/messenger.css?ver=7">
<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
<script type="text/javascript" src = "${contextPath}/js/messenger.js"></script>
<title>Chat List</title>
</head>
<body>
<jsp:include page="/jsp/pageHeader.jsp"></jsp:include>
	<div id="content">
		<!-- 사이드 -->
		<div id="menuBox1">
			<h3 id="menuBox1_title">메신저</h3>
			<br>
			<hr id="msg_hr">
			<br>
			<ul>
				<li id="sideList_msg">
					<a>쪽지</a>
					<ul id="msg_sub" class="sideBox_sub">
						<li><a class="sideList" href="${contextPath}/page/messageWriteForm">쪽지 쓰기</a></li>
						<li><a class="sideList" href="${contextPath}/page/messageFormByCondition?key=receive">받은 쪽지함</a></li>
						<li><a class="sideList" href="${contextPath}/page/messageFormByCondition?key=send">보낸 쪽지함</a></li>
						<li><a class="sideList" href="${contextPath}/page/messageFormByCondition?key=delete">휴지통</a></li>
					</ul>
				</li>
				<li><br></li>
				<li id="sideList_chat">
					<a>채팅</a>
					<ul id="chat_sub" class="sideBox_sub">
						<li><a class="sideList" href="${contextPath}/page/chatList">내 채팅방 목록</a></li>
						<li><a class="sideList" href="${contextPath}/page/chatFormByCondition?key=invite">채팅 초대 목록</a></li>
						<li><a class="sideList" href="${contextPath}/page/chatFormByCondition?key=add">채팅방 만들기</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div id="menuBox2">
			<a>참여 중인 채팅방 목록</a>
			<hr width="500px;">
			<table id="chatRoom-list">
				<tr id="tr1">
					<th id="th1" colspan="2">채팅 방 제목</th>
					<th id="th2">참여자 수</th>
				</tr>
				<c:forEach items="chatList" var="chat">
					<tr>
						<td class="chatList-tr">
							<a class="chatList-title">${chat}.title</a> 
							<!-- 안읽은 채팅개수 -->
							<span>(${chat}.count)</span>
						</td>
						<td>
							<!-- 마지막 채팅 내용(10자 초과시 ...) -->
							<span>(${chat}.content)</span>
						</td>
							<!-- 여기에 참여자 수 -->
						<td>${chat}.members</td>
					</tr>
					<tr>
						<td colspan="3"><hr></td>
					</tr>
					<tr>
						<td class="chatList-tr">
							<a class="chatList-title">${chat}.title</a>
							<!-- 안읽은 채팅개수 -->
							<span>(${chat}.count)</span>
						</td>
						<td>
							<!-- 마지막 채팅 내용(10자 초과시 ...) -->
							<span>(${chat}.content)</span>
						</td>
							<!-- 여기에 참여자 수 -->
						<td>${chat}.members</td>
					</tr>
					<tr>
						<td colspan="3"><hr></td>
					</tr>

				</c:forEach>
			</table>
		</div>
	</div>
<jsp:include page="/jsp/pageFooter.jsp"></jsp:include>
</body>
</html>

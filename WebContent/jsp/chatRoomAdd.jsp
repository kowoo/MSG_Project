<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Add Chat Room</title>
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
					<ul id="chat_sub" class="sideBox_sub" style="display: inline;">
						<li><a class="sideList" href="${contextPath}/page/chatList">내 채팅방 목록</a></li>
						<li><a class="sideList" href="${contextPath}/page/chatFormByCondition?key=invite">채팅 초대 목록</a></li>
						<li><a class="sideList" href="${contextPath}/page/chatFormByCondition?key=add">채팅방 만들기</a></li>
					</ul>
				</li>
			</ul>
		</div>
		
		<div id="menuBox2">
			<a>채팅 방 만들기</a>
			<hr width="400px;">
			<form action="${contextPath}/chat/addChatRoom" onsubmit="return checkRoomName()" id="msg_sendBox" method="post">
				<p>채팅 방 제목</p>
				<input type="text" name="title" id="chat-title">
				<br>
				<br>
				<input type="submit" value="만들기">
				<input type="button" value="취소" onclick="history.go(-1)">
			</form>
		</div>
	</div>
<jsp:include page="/jsp/pageFooter.jsp"></jsp:include>
</body>
</html>
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
<title>Chat Invite List</title>
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
						<li><a class="sideList" href="${contextPath}/messenger/messageWriteForm">쪽지 쓰기</a></li>
						<li><a class="sideList" href="${contextPath}/messenger/messageFormByCondition?key=receive">받은 쪽지함</a></li>
						<li><a class="sideList" href="${contextPath}/messenger/messageFormByCondition?key=send">보낸 쪽지함</a></li>
						<li><a class="sideList" href="${contextPath}/messenger/messageFormByCondition?key=delete">휴지통</a></li>
					</ul>
				</li>
				<li><br></li>
				<li id="sideList_chat">
					<a>채팅</a>
					<ul id="chat_sub" class="sideBox_sub">
						<li><a class="sideList" href="${contextPath}/messenger/chatList">내 채팅방 목록</a></li>
						<li><a class="sideList" href="${contextPath}/messenger/chatFormByCondition?key=invite">채팅 초대 목록</a></li>
						<li><a class="sideList" href="${contextPath}/messenger/chatFormByCondition?key=add">채팅방 만들기</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div id="menuBox2">
			<a>채팅 초대 목록</a>
			<hr width="550px;">
			<table id="chat-invite-table">
				<tr>
					<th>방 제목</th>
					<th>초대자 id</th>
					<th></th>
				</tr>
				<tr>
					<td>이장님과 함께 농사지읍시다.</td>
					<td>이장님</td>
					<td>
						<button id="chat-join">참여</button>
						<button id="chat-reject">거절</button>
					</td>
				</tr>
				<tr>
					<td>인사 2팀</td>
					<td>인사돌</td>
					<td>
						<button>참여</button>
						<button>거절</button>
					</td>
				</tr>
			</table>
		</div>
	</div>
<jsp:include page="/jsp/pageFooter.jsp"></jsp:include>
</body>
</html>
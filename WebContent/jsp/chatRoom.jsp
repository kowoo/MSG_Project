<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%request.setAttribute("contextPath", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/chat.css?ver=7">
<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
<script type="text/javascript" src = "${contextPath}/js/chat.js"></script>
<title>채팅방 제목</title>
</head>
<body>
	<div id="chat-wrap">
		<div id="topDiv">
			<button id="btn-notice">공지사항</button>
			<button id="btn-chatRoomMenu">
				<img alt="목록" src="${contextPath}/img/chatMenuList.png">
			</button>
		</div>
		<div id="chatField" ondrop="drop(event)" ondragover="allowDrop(event)">
<!-- 가능하다면 드래그앤 드롭.. -->		
		</div> 					<!-- 첨부 파일 내용 나오게 하는 곳.-->
<!-- 		<input type="text" id="fileName" class="file_input_textbox" readonly > -->
		<div class="file_input_div">
		    <img src="${contextPath}/img/fileClip.png" class="file_input_img_btn" alt="open"/>
		    <input type="file" name="file_1" class="file_input_hidden"
		    onchange="javascript: document.getElementById('fileName').value = this.value"/>
		</div>
		
		<div id="sendField">
			<textarea id="textBox"></textarea>
			<input type="submit" value="보내기" id="btn-send">
		</div>
	</div>
	
	<div id="chatRoomMenu">
		<ul id="chatMenuBar">
			<li><button id="chat-List">참여자 목록</button></li>		
			<li><button id="chat-invite">초대하기</button></li>
			<li><button id="chat-exit">나가기</button></li>
		</ul>
	</div>
	
	<!-- 공지사항 div가 아니라 jsp로 만들어야할듯... div 너무 조잡하다. -->
	<div id="chatNotice">
		<textarea id="noticeArea" cols="30" rows="5"></textarea>
		<button id="chat-noticeUpdate">공지 수정</button>
		<button id="chat-noticeCancle">취소</button>
	</div>
	
</body>
</html>

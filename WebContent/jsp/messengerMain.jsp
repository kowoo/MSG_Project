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
<title>Messenger Main</title>
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
		
		<!-- 본문 -->
		<div id="menuBox2">

			<a>받은 쪽지함</a> <button id="msg-deleteBtn">삭제</button>

			<hr>
			<table id="messageTable">
				<tr>
					<th class="msg_th"><input type="checkbox" id="allCheck"></th>
					<th class="msg_th" width="12%">보낸 사람</th>
					<th class="msg_th" width="70%">제목</th>
					<th class="msg_th" width="25%">날짜</th>
				</tr>
				<tr>

					<td><input type="checkbox"></td>
					<td><a class="replyModal">이장님</a></td>

										<!-- 쪽지 삭제를 위한 값(시퀀스를 가져오거나 쪽지번호를 가져오자) -->
					<td><input type="checkbox" value="1"></td>
					<td>
						<a class="replyModal">이장님</a>
						<input type="hidden" value="이장아이디" class="reply-id">
					</td>

					<td><a class="messageTitle">프로젝트 디자인 너무 힘듬</a>
					</td>
					<td>18-07-19 [14:01]</td>
				</tr>
				<tr>

					<td><input type="checkbox"></td>
					<td><a>예비군</a></td>

					<td><a class="messageTitle">원용이가 예비군을 가버렸습니다. ㅋㅋㅋ</a></td>
					<td>18-07-19 [14:01]</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td><a>고우혁</a></td>
					<td><a>안녕하세요 집에가고 싶어요</a></td>
					<td>18-07-19 [14:01]</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td><a>양동호</a></td>
					<td><a>1</a></td>
					<td>18-07-19 [14:01]</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td><a>덤덤</a></td>
					<td><a>테스트</a></td>
					<td>18-07-19 [14:01]</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td><a>정원용</a></td>
					<td><a>집갈래</a></td>
					<td>18-07-19 [14:01]</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td><a>류광민</a></td>
					<td><a>그게 무슨 소리에요</a></td>
					<td>18-07-19 [14:01]</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td><a>노종현</a></td>
					<td><a>아 왜 안돼</a></td>
					<td>18-07-19 [14:01]</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td><a>이준성</a></td>
					<td><a></a></td>
					<td>18-07-19 [14:01]</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td><a>문진욱</a></td>
					<td><a>1234</a></td>
					<td>18-07-19 [14:01]</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td><a>덤</a></td>
					<td><a>더미더미더미더미더미</a></td>
					<td>18-07-19 [14:01]</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td><a>을지문덕</a></td>
					<td><a>살수대첩</a></td>
					<td>18-07-19 [14:01]</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td><a>강아지</a></td>
					<td><a>왈왈왈 왈 공자왈...</a></td>
					<td>18-07-19 [14:01]</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td><a>덤</a></td>
					<td><a>show me the money</a></td>
					<td>18-07-19 [14:01]</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td><a>덤</a></td>
					<td><a>흐끄루르루르르ㅡ르</a></td>
					<td>18-07-19 [14:01]</td>
				</tr>
			</table>
		</div>
		<div id="pagingBox">

			<p id="paging">[1] [2] [3] [4] [5] [6] [7] [8] [9] [10] [다음]</p>
		</div>
		<div id="msg_searchBox">
			<br>
			<select id="searchType" name="type">
				<option>제목</option>
				<option>작성자</option>
				<option>내용</option>
				<option>제목+내용</option>
			</select>
			<input type="text" id="searchText">
			<input type="button" value="검색" onclick="search();">
		</div>
	</div>

	<div id="modal-reply" style="display:none;">
		<div>
			<!-- 얘가 원래  modal-replyContent-->
			<input type="hidden" id="modal-sender">
		</div>
		<div>
			<input type="button" id="btn-reply" value="쪽지 쓰기">
			<input type="button" id="btn-close" value="닫기">
		</div>
	</div>

	<div id="replyBox" style="display:none;">
		<div>
			<!-- 얘가 원래  modal-replyContent-->
			<input type="hidden" id="reply-id">
		</div>
		<div>
			<input type="button" id="btn-reply" value="쪽지 보내기" onclick="msgReply();">
			<input type="hidden" id="contextPath" value="${contextPath}">
		</div>
	</div>

		
<jsp:include page="/jsp/pageFooter.jsp"></jsp:include>
</body>
</html>
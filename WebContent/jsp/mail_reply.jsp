<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setAttribute("contextPath", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/mail_write.css">
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
	rel="stylesheet">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script type="text/javascript" src="${contextPath}/js/main.js"></script>
<script type="text/javascript" src="${contextPath}/lang/summernote-ko-KR.js"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#summernote').summernote({
			height : 300, // set editor height
			minHeight : null, // set minimum height of editor
			maxHeight : null, // set maximum height of editor
			lang : 'ko-KR',
			focus : true
		// set focus to editable area after initializing summernote
		});
	});
</script>
<title>E-Mail 답장</title>
</head>
<script type="text/javascript" src = "${contextPath}/js/main.js"></script>
<body>
	<jsp:include page="/jsp/pageHeader.jsp"></jsp:include>
	<!-------------------------------------헤더--------------------------------------------------------->
	<div id="content">
		
		<div id="menuBox1">
			<br>
			<h2 align="center">전자메일</h2>
			<br>
			<hr id="hr1">
			<br>

			<ul id="menuBox1Ul">
			<li><a href="${contextPath}/mail/mail_receiveInbox_form">받은편지함&nbsp;<small style=color:red;>(8)</small></a></li><br>		
				<li><a href="${contextPath}/mail/mail_sendInbox_form">보낸편지함&nbsp;<small style=color:red;>(2)</small></a></li><br>
				<li><a href="${contextPath}/mail/mail_myWriteInbox_form">내게쓴메일함&nbsp;<small style=color:red;>(1)</small></a></li><br>
				<li><a href="${contextPath}/mail/mail_draftsInbox_form">임시보관함&nbsp;<small style=color:red;>(1)</small></a></li><br>
				<li><a href="${contextPath}/mail/mail_Write_form">메일쓰기</a></li><br>
				<li><a href="${contextPath}/mail/mail_myWrite_form">내게쓰기</a></li><br>
				<li><a href="${contextPath}/mail/mail_deleteInbox_form">지운편지함&nbsp;<small><a href="${contextPath}/mail/mail_delete_notice_form" style=color:red;>비우기</a></small></a></li><br>
			</ul>
				<hr id="hr2">

		</div>
		<div id="menuBox2">
			<p style="margin: 20px">
				<a style="font-size: 20px;">답장</a>
			</p>
			<hr id="hr3">
			<br>
			<div id="button_send" style="float: left">
				<input type="button" id="button_send_send" name="전송" value="전송">
				<input type="button" name="임시저장" value="임시저장"> <img
					src="${contextPath}/img/recycle.png"><a href="${contextPath}/mail/mail_myWrite_form"><small
					style="color: #fb2525;">내게쓰기</small></a> <br>
				<table>
					<tr>
						<td><input type="button" name="receive_emp" value="받는사람"></td>
						<td><input type="text" name="receive_emp_text" value="김진수 과장"></td>
						<td><input type="button" name="receive_emp" value="참조인"></td>
						<td><input type="text" name="receive_emp_text" value=""></td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: left !important;"><label id="label">첨부파일</label>
							&nbsp;&nbsp;<input type="button" name="receive_file" value="내PC"></td>
						<td><label id="label">제목</label></td>
						<td><input type="text" name="receive_title" value=""></td>
					</tr>
				</table>
				<hr class="hr4">
				<br>
				<textarea id="summernote" rows="30" cols="111"></textarea>
				<br> <br>
			</div>
		</div>

	</div>



	<!-------------------------------------바디---------------------------------------------------------------------------->
	<jsp:include page="/jsp/pageFooter.jsp"></jsp:include>
</body>
</html>
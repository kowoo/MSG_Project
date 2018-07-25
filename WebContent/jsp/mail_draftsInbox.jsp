<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setAttribute("contextPath", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/mail.css">  
<script src='${contextPath}/fullcalendar/jquery.min.js'></script>
<title>E-Mail 임시보관함</title>
</head>
<script type="text/javascript" src = "${contextPath}/js/main.js"></script>
<body>
<jsp:include page="/jsp/pageHeader.jsp"></jsp:include>
<!-------------------------------------헤더--------------------------------------------------------->
		<div id="content">
		
			<div id="menuBox1">
			<br>
			<h2 align="center">전자메일</h2>
			<br><hr id="hr1"><br>
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
			<p style="margin:20px">
				<a href="${contextPath}/mail/mail_draftsInbox_form" style="font-size: 20px;">최근 메일 목록 | 임시보관함 : 1통</a>
				
				
			</p>
			<hr id="h3">
			<br>
				<h3>임시보관함</h3>
				<br>
				<table>
				<tr>
				
				<th width="200px">보낸이</th>
				<th width="400px">제목</th>
				<th width="200px">시간</th>
				<th><input type="checkbox" name="deletebox" value="deletebox"></th>
				</tr>
				<tr>
				<td width="200px">이준성 대리</td>
				<td width="400px">기획안 다시 보내드립니다~~</td>
				<td width="200px">2018/7/16</td>
				<td><input type="checkbox" name="deletebox" value="deletebox"></td>
				</tr>
				<tr>
				<td width="200px">김진수 과장</td>
				<td width="400px">기획안 다시 보내주세요</td>
				<td width="200px">2018/7/16</td>
				<td><input type="checkbox" name="deletebox" value="deletebox"></td>
				</tr>
					<tr>
				<td width="200px">이준성 대리</td>
				<td width="400px">기획안 다시 보내드립니다~~</td>
				<td width="200px">2018/7/16</td>
				<td><input type="checkbox" name="deletebox" value="deletebox"></td>
				</tr>
				<tr>
				<td width="200px">이준성 대리</td>
				<td width="400px">기획안 다시 보내드립니다~~</td>
				<td width="200px">2018/7/16</td>
				<td><input type="checkbox" name="deletebox" value="deletebox"></td>
				</tr>
					<tr>
				<td width="200px">이준성 대리</td>
				<td width="400px">기획안 다시 보내드립니다~~</td>
				<td width="200px">2018/7/16</td>
				<td><input type="checkbox" name="deletebox" value="deletebox"></td>
				</tr>
				<tr>
				<td width="200px">이준성 대리</td>
				<td width="400px">기획안 다시 보내드립니다~~</td>
				<td width="200px">2018/7/16</td>
				<td><input type="checkbox" name="deletebox" value="deletebox"></td>
				</tr>
					<tr>
				<td width="200px">이준성 대리</td>
				<td width="400px">기획안 다시 보내드립니다~~</td>
				<td width="200px">2018/7/16</td>
				<td><input type="checkbox" name="deletebox" value="deletebox"></td>
				</tr>
				<tr>
				<td width="200px">이준성 대리</td>
				<td width="400px">기획안 다시 보내드립니다~~</td>
				<td width="200px">2018/7/16</td>
				<td><input type="checkbox" name="deletebox" value="deletebox"></td>
				</tr>
					<tr>
				<td width="200px">이준성 대리</td>
				<td width="400px">기획안 다시 보내드립니다~~</td>
				<td width="200px">2018/7/16</td>
				<td><input type="checkbox" name="deletebox" value="deletebox"></td>
				</tr>
				<tr>
				<td width="200px">이준성 대리</td>
				<td width="400px">기획안 다시 보내드립니다~~</td>
				<td width="200px">2018/7/16</td>
				<td><input type="checkbox" name="deletebox" value="deletebox"></td>
				</tr>
				
				</table>
			<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;페이징처리 1 페이징처리
				<br>
				<br>
				<div id="search_id">
				<select name="search" id="search_id2">
    			<option value="제목">제목</option>
    			<option value="작성자">작성자</option>
    			<option value="제목+작성자">제목+작성자</option>
				</select>
				<input type="text" id="input_text">
				<button type="button" id="sch_smit">검색</button>	
		</div>
			
		</div>
		</div>
	

	<!-------------------------------------바디---------------------------------------------------------------------------->
	<jsp:include page="/jsp/pageFooter.jsp"></jsp:include>
</body>
</html>
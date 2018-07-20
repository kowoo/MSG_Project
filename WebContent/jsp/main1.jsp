<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%request.setAttribute("contextPath", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/main.css?ver=7">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/fullcalendar/fullcalendar.css">

<link rel="stylesheet" type="text/css"
	href="${contextPath}/fullcalendar/fullcalendar.min.css">

<script src='${contextPath}/fullcalendar/jquery.min.js'></script>
<script src='${contextPath}/fullcalendar/moment.min.js'></script>
<script src='${contextPath}/fullcalendar/fullcalendar.js'></script>
<script src='${contextPath}/fullcalendar/ko.js'></script>
<title>메인</title>
</head>

<script type="text/javascript" src = "${contextPath}/js/main.js"></script>
<script type="text/javascript" src = "${contextPath}/js/calendar.js"></script>

<body>
	<div id = "mask"></div>
	<jsp:include page="/jsp/pageHeader.jsp"></jsp:include>
	<!-------------------------------------헤더--------------------------------------------------------->
	
	<input type = "hidden" id = "path" value = "${contextPath}">
	<div id="content">

		<div id="box1">

			<div id="imageBox1">
				<img id="image1" alt="basicImage" src="${contextPath}/img/default.jpg">
				<br>
				<br>
				<a href = "#" style = "font-size : 13px; margin-left : 45px; font-weight: normal;">MyPage</a>
			</div>
			<div id="userInfo">
				<ul>
					<li>IT부 사원</li>
					<li>홍길동님</li>
					
				</ul>
				<br>
				<br>
				<a href = "#" style = "font-size : 13px; margin-left : 47px; font-weight: normal;">Logout</a>
			</div>
			<br>
			<br>
		</div>

		<div id="box2">
			<div id="colorBox1"></div>
			<p id = "box2_title">
				<a href="#" style="font-size: 16px;">공지사항</a>
			</p>

		</div>

		<div id="box3">
			<div id="colorBox2"></div>
			<p id = "box3_title">
				<a href="#" style="font-size: 16px;">프로젝트 진행상황</a>
			</p>
		</div>
		
		<div id="box11">
			<p style="margin-left: 20px; margin-top: 5px;">
				<img src = "${contextPath}/img/mail.png" width = "40px" height = "40px">
				<a href="#" style="font-size: 14px; margin-left : 20px;">전자메일</a>
			</p>
		</div>
		<br>
		<div id="box4">
			<p style="margin-left: 20px; margin-top: 5px;">
				<img src = "${contextPath}/img/conversation.png" width = "40px" height = "40px">
				<a href="#" style="font-size: 14px; margin-left : 20px;">메신저</a>
			</p>
		</div>
		<br>
		<div id="box5">
			<p style="margin-left: 20px; margin-top: 5px;">
				<img src = "${contextPath}/img/checklist.png" width = "40px" height = "40px">
				<a href="#" style="font-size: 14px; margin-left : 20px;">전자결재</a>
			</p>
		</div>

		<div id="box6">
			<div id="colorBox3"></div>
			<p  id = "box6_title">
				<a href="#" style="font-size: 16px;">자재현황</a>
			</p>
		</div>

		<div id="box7">
			<div id="colorBox4"></div>
			<p id = "box7_title">
				<a href="#" style="font-size: 16px;">익명게시판</a>
			</p>
		</div>

		<!-- <div id="box8">
			</div> -->

		<div id="calendar"></div>


		<div id="box10">
			<div id="colorBox6"></div>
			<p id = "box10_title">
				<a href="#" style="font-size: 16px;">부서게시판</a>
			</p>
		</div>

		<div id="box9">
			<div id="colorBox5"></div>
			<p id = "box9_title">
				<a href="#" style="font-size: 16px;">이달의 생일자</a>
			</p>
		</div>
	</div>
	<div id = "modifyBox" style = "display : none;" align = "center">
           <input type = "button" id = "modiBtn" value = "X" style = "float:right;" onclick = "closeMyPage();">
           <form action = "${contextPath}/emp/userModify" enctype="multipart/form-data" method = "post">
              <table id = "modiTable">
                 <tr>
                    <td colspan = "2"><img src = "${contextPath}/emp/getEmpImage?loginEmp=${user.empNo}" id = "profile_Img" style = "width : 90px; height : 90px; border : 1px solid silver; border-radius: 50%"></td>
                 </tr>
                 <tr>
                    <td colspan = "2"><input type = "file" name = "file" id = "fileLoad"></td>
                 </tr>
                 <tr>
                    <th>이메일</th><td><input type = "text" name = "EMPMAIL" class = "modiInput" value = "${user.empMail}"></td>
                 </tr>
                 <tr>
                    <th>연락처</th><td><input type = "text" name = "EMPTEL" class = "modiInput"  value = "${user.empTel}"></td>
                 </tr>
              </table>
              
              <input type = "submit" class = "modiBtn" value = "변경저장">
           </form>
        </div>
	<!-------------------------------------바디---------------------------------------------------------------------------->
	<jsp:include page="/jsp/pageFooter.jsp"></jsp:include>
</body>
</html>
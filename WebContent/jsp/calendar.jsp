<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setAttribute("contextPath", request.getContextPath());
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



<link rel='stylesheet' href='${contextPath}/calendar/fullcalendar.css'/>
<link rel="stylesheet" type="text/css" href="${contextPath}/calendar/fullcalendar.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/calendar/fullcalendar.min.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/Calendar.css">

<script src='${contextPath}/calendar/jquery.min.js'></script>
<script src='${contextPath}/calendar/moment.min.js'></script>
<script src='${contextPath}/calendar/fullcalendar.js'></script>
<script src='${contextPath}/calendar/ko.js'></script>
<!-- 한글화 -->



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>calendar</title>

<script type="text/javascript">
	$(function() {

		var date = new Date();
		var d = date.getDate('');
		var m = date.getMonth();
		var y = date.getFullYear();

		var calendar = $('#calendar').fullCalendar({
					
			
			lang : "ko", //한글화

			header : {
				left : 'prev,next today',
				center : 'title',
				right : 'agendaWeek,agendaDay,listWeek'
			},

			selectable : true,
			selectHelper : true,
			select : function(start, end, allDay) {

				var title = prompt('일정을 입력하세요.');
				if (title) {

					calendar.fullCalendar('renderEvent', {
						title : title,
						start : start,
						end : end,
						allDay : allDay
					}, true // make the event "stick"
					);
				}
				calendar.fullCalendar('unselect');

			},
		/* editable : true, */

		});
	});
	$(document).ready(function() {
		// memu 클래스 바로 하위에 있는 a 태그를 클릭했을때
		$(".menu>a").click(function() {
			// 현재 클릭한 태그가 a 이기 때문에
			// a 옆의 태그중 ul 태그에 hide 클래스 태그를 넣던지 빼던지 한다.
			$(this).next("ul").toggleClass("hide");
		});
	});
</script>
<style type='text/css'>
/* 캘린더 css */
body {
	margin: 40px 10px;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
}

#calendar {
	padding-left: 150px;
	max-width: 750px;
	margin: 0 auto;
	margin-top: 30px;
	padding-top: 10px;
	background-color: white;
}

.fc-sun {
	color: #e31b23
}

.fc-sat {
	color: #007dc3
}
</style>

</head>
<body>

	<jsp:include page="pageHeader.jsp"></jsp:include>

	<!-------------------------------------헤더--------------------------------------------------------->
	



	<div id="content">
		<p style="position: absolute; margin-left: 920px; margin-top: 15px">
			<a href="#">홈</a>&nbsp;> <a href="#">자원관리</a>
		</p>
		<div id="menuBox1">
			<br>
			<h2 align="center">자원관리</h2>
			<br>
			<hr id="hr1">
			<br>
			<ul id="menuBox1Ul">
				<li class="menu"><a href="${contextPath }/management/calendar">캘린더</a>
			</ul>
			<br>
			<ul id="menuBox1Ul">
				<li class="menu"><a href="${contextPath }/management/managementRoom">회의실</a>
				
				</li>

			</ul>
			<br>
			<ul id="menuBox1Ul">
				<li class="menu"><a href="${contextPath }/management/managementCar">차량</a>
					
			</ul>

			<hr id="hr2">
		</div>


		<div id="calendar"></div>


	</div>

	<!-------------------------------------바디---------------------------------------------------------------------------->

	<jsp:include page="pageFooter.jsp"></jsp:include>



</body>
</html>
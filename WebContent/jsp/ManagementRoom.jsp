<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	request.setAttribute("contextPath", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		// memu 클래스 바로 하위에 있는 a 태그를 클릭했을때
		$(".menu>a").click(function() {
			// 현재 클릭한 태그가 a 이기 때문에
			// a 옆의 태그중 ul 태그에 hide 클래스 태그를 넣던지 빼던지 한다.
			$(this).next("ul").toggleClass("hide");
		});
	});
	

	function reservation(){
		window.open("${contextPath}/management/ManagementRoomreservation","","width=500, height=200, history=no, resizable=no, status=no, scrollbars=no");
	
	}
	
	function modify(){
		window.open("${contextPath}/management/ManagementRoommodify","","width=500, height=200, history=no, resizable=no, status=no, scrollbars=no");
	}
	
	
	
</script>
<title>게시판 메인</title>
</head>

<script type="text/javascript" src = "${contextPath}/js/main.js"></script>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/Managementroom.css">
<body>
	
	<jsp:include page="pageHeader.jsp" flush="false" />
	<!-------------------------------------헤더--------------------------------------------------------->
	<input type="hidden" id="path" value="${contextPath}">
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
				<li class="menu"><a href="${contextPath }/page/calendar">캘린더</a>
			</ul>
			<br>
			<ul id="menuBox1Ul">
				<li class="menu"><a href="${contextPath }/page/ManagementRoom">회의실</a>
					
				</li>

			</ul>
			<br>
			<ul id="menuBox1Ul">
				<li class="menu"><a href="${contextPath }/page/ManagementCar">차량</a>
					</li>
			</ul>

			<hr id="hr2">
		</div>



		<div id="menuBox2">
			<p style="margin: 8px">
				<a href="#" style="font-size: 20px;">자원관리</a>
			</p>
			<hr id="hr3">

			<div align="center">
				<table>
					<tr>
						<th>자원분류</th>
						<td><input id="qw" type="text" size="20"></td>
						<th>자원명</th>
						<td><input id="qw" type="text" size="18"></td>
					</tr>

					<tr>
						<th>방 종류</th>
						<td><select style="width: 170px; height: 20px;">
								<option value="carall">★----------전체-----------★</option>
								<option value="projectroom">프로젝트방</option>
								<option value="healingroom">힐링방</option>
								<option value="nightroom">철야방</option>
						</select></td>

						<th>활성상태</th>
						<td><select style="width: 150px; height: 20px;">
								<option value="roomuse">사용중</option>
								<option value="roomavailable">사용가능</option>
						</select></td>
						<th>자원ID</th>
						<td><input id="qw" type="text" size="15"></td>
						<td><input id="a" type="submit" value="검색"></td>
					</tr>
				</table>
			</div>


			<table id="notice_list">

				<tr id="tr1">
					<th width="35px">No.</th>
						<th width="300px">자원명</th>
						<th>등급</th>
						<th width="100px">상태</th>
						<th>예약</th>
						<th>수정</th>
						<th>반납</th>
				</tr>
				<tr>

					<td>1</td>
					<td>프로젝트방</td>
					<td>A</td>
					<td>사용가능</td>
					
					<td><input type="button" value="예약" onclick="reservation()"></td>
					<td><input type="button" value="수정" onclick="modify()"></td>
					<td><input type="button" value="반납"></td>
				</tr>

			</table>




			<hr id="hr4">
		</div>

	</div>
	<!-------------------------------------바디--------------------------------------------------------->
	<jsp:include page="pageFooter.jsp" flush="false" />
	<!-------------------------------------푸터--------------------------------------------------------->

</body>
</html>

<%@page import="java.util.Date"%>
<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setAttribute("contextPath", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/modify.css">
<body>




	<div align="center" id="time">
		<table>
			<tr>
				<th>방 종류</th>
				<td><select id="aa">
						<option value="volvo">전체</option>
						<option value="saab">프로젝트방</option>
						<option value="opel">힐링방</option>
						<option value="audi">철야방</option>
				</select></td>

				<th>날짜</th>
				<td><select id="aa">
						<option value="volvo">1월</option>
						<option value="saab">2월</option>
						<option value="volvo">3월</option>
						<option value="saab">4월</option>
						<option value="volvo">5월</option>
						<option value="saab">6월</option>
						<option value="volvo">7월</option>
						<option value="saab">8월</option>
						<option value="volvo">9월</option>
						<option value="saab">10월</option>
						<option value="volvo">11월</option>
						<option value="saab">12월</option>
				</select></td>

				<th>시간</th>
				<td><select id="aa">
						<option value="volvo">1</option>
						<option value="saab">2</option>
						<option value="volvo">3</option>
						<option value="saab">4</option>
						<option value="volvo">5</option>
						<option value="saab">6</option>
						<option value="volvo">7</option>
						<option value="saab">8</option>
						<option value="volvo">9</option>
						<option value="saab">10</option>
						<option value="volvo">11</option>
						<option value="saab">12</option>
						<option value="volvo">13</option>
						<option value="saab">14</option>
						<option value="volvo">15</option>
						<option value="saab">16</option>
						<option value="volvo">17</option>
						<option value="saab">18</option>
						<option value="volvo">19</option>
						<option value="saab">20</option>
						<option value="volvo">21</option>
						<option value="saab">22</option>
						<option value="volvo">23</option>
						<option value="saab">24</option>

				</select></td>

				<th>분</th>
				<td><select id="aa">
						<option value="volvo">10</option>
						<option value="saab">20</option>
						<option value="volvo">30</option>
						<option value="saab">40</option>
						<option value="volvo">50</option>
				</select></td>

			</tr>
	</div>

	<div align="center">

		<tr>


			<th>날짜</th>
			<td><select id="aa">
					<option value="volvo">1월</option>
					<option value="saab">2월</option>
					<option value="volvo">3월</option>
					<option value="saab">4월</option>
					<option value="volvo">5월</option>
					<option value="saab">6월</option>
					<option value="volvo">7월</option>
					<option value="saab">8월</option>
					<option value="volvo">9월</option>
					<option value="saab">10월</option>
					<option value="volvo">11월</option>
					<option value="saab">12월</option>
			</select></td>

			<th>시간</th>
			<td><select id="aa">
					<option value="volvo">1</option>
					<option value="saab">2</option>
					<option value="volvo">3</option>
					<option value="saab">4</option>
					<option value="volvo">5</option>
					<option value="saab">6</option>
					<option value="volvo">7</option>
					<option value="saab">8</option>
					<option value="volvo">9</option>
					<option value="saab">10</option>
					<option value="volvo">11</option>
					<option value="saab">12</option>
					<option value="volvo">13</option>
					<option value="saab">14</option>
					<option value="volvo">15</option>
					<option value="saab">16</option>
					<option value="volvo">17</option>
					<option value="saab">18</option>
					<option value="volvo">19</option>
					<option value="saab">20</option>
					<option value="volvo">21</option>
					<option value="saab">22</option>
					<option value="volvo">23</option>
					<option value="saab">24</option>

			</select></td>

			<th>분</th>
			<td><select id="aa">
					<option value="volvo">10</option>
					<option value="saab">20</option>
					<option value="volvo">30</option>
					<option value="saab">40</option>
					<option value="volvo">50</option>
			</select></td>


			<td><input id="button" type="submit" value="수정"></td>


		</tr>

		</table>

	</div>



</body>
</html>
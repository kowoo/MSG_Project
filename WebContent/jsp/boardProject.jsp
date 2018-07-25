<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setAttribute("contextPath", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>프로젝트 게시판</title>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"
integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
crossorigin="anonymous">
</script> 

<link rel="stylesheet" type="text/css" href="${contextPath}/css/board.css?ver=7">
<script type="text/javascript" src="${contextPath}/js/weather.js"></script>

</head>
<script>
	    // html dom 이 다 로딩된 후 실행된다.
	   
		$(document).ready(function() {
			// menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
			$(".menu>a").click(function() {
				var submenu = $(this).next("ul");

				// submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
				if (submenu.is(":visible")) {
					submenu.slideUp();
				} else {
					submenu.slideDown();
				}
			});
		});

</script>
<body>
	<jsp:include page = "/jsp/pageHeader.jsp"></jsp:include>
	<div id = "content">
		
		<div id="menuBox1">
			<br>
			<h2 align="center">게시판</h2><br>
			<hr id="hr1"><br>
			<ul id="menuBox1Ul">
			
				<li class="menu"><a href="#">공지사항</a>
				
					<ul class="hide">
		                <li><a href="${contextPath}/board/boardNotice">전체공지</a></li>
		                <li><a href="${contextPath}/board/boardEvent">EVENT</a></li>
		            </ul>
		            
		        </li><br>
		            
		            
				<li class="menu"><a href="#">부서 게시판</a>
					
					<ul class="hide">
		                <li><a href="${contextPath}/board/boardDeptIt">IT부</a></li>
		                <li><a href="${contextPath}/board/boardDeptSales">영업부</a></li>
		                <li><a href="${contextPath}/board/boardDeptMin">재무부</a></li>
		                <li><a href="${contextPath}/board/boardDeptBP">경영기획부</a></li>
		            </ul>
					
				</li><br>
				
				<li class="menu"><a href="#">프로젝트 게시판</a>
				
					<ul class="hide">
		                <li><a href="${contextPath}/board/boardProjectOngoing">진행중 프로젝트</a></li>
		                <li><a href="${contextPath}/board/boardProjectFinished">완료된 프로젝트</a></li>
		            </ul>
		            
				</li><br>
				
			</ul>
			<hr id="hr2">
		</div>
		
		<div id = "menuBox2">
			<p style = "margin : 20px">
				<a href = "#" style = "font-size: 20px;">프로젝트 게시판</a>
			</p>
			<hr id = "hr3">
			<hr id = "hr4" style="margin-top: 600px;">
		</div>
		
		<div id = "appbox1">
		
			<div id = "itDept" style="width:650px;">
				<p id = "itDept_title">
					<a href = "${contextPath}/board/boardProjectOngoing">진행중 프로젝트</a>
					<a href = "${contextPath}/board/boardProjectOngoing" class="itdept_a" style="margin-left: 420px;">더보기</a>
				</p>
				
				<ul>
					<li style = "padding : 10px; margin-bottom : 20px;">
						<span class = "title" ><strong>내용1</strong></span><span class = "date">2018.06.12</span>
					</li>
					<li style = "padding : 10px; margin-bottom : 20px;">
						<span class = "title"><strong>내용2</strong></span><span class = "date">2018.07.11</span>
					</li>
					<li style = "padding : 10px; margin-bottom : 20px;">
						<span class = "title"><strong>내용3</strong></span><span class = "date">2018.07.11</span>
					</li>
					<li style = "padding : 10px; margin-bottom : 20px;">
						<span class = "title"><strong>내용4</strong></span><span class = "date">2018.07.11</span>
					</li>
					<li style = "padding : 10px; margin-bottom : 20px;">
						<span class = "title"><strong>내용5</strong></span><span class = "date">2018.07.11</span>
					</li>
				</ul>
			</div>
			
			<div id = "ministryDept" style="width: 650px;">
				<p id = "ministryDept_title">
				<a href = "${contextPath}/board/boardProjectFinished">완료된 프로젝트</a>
				<a href = "${contextPath}/board/boardProjectFinished" class="ministrydept_a" style="margin-left: 420px; text-decoration: underline; font-size: 12px;">더보기</a>
				</p>
				<ul>
					<li style = "padding : 10px; margin-bottom : 20px;">
						<span class = "title"><strong>내용1</strong></span><span class = "date">2018.06.12</span>
					</li>
					<li style = "padding : 10px; margin-bottom : 20px;">
						<span class = "title"><strong>내용2</strong></span><span class = "date">2018.07.11</span>
					</li>
					<li style = "padding : 10px; margin-bottom : 20px;">
						<span class = "title"><strong>내용3</strong></span><span class = "date">2018.07.11</span>
					</li>
					<li style = "padding : 10px; margin-bottom : 20px;">
						<span class = "title"><strong>내용4</strong></span><span class = "date">2018.07.11</span>
					</li>
					<li style = "padding : 10px; margin-bottom : 20px;">
						<span class = "title"><strong>내용5</strong></span><span class = "date">2018.07.11</span>
					</li>
				</ul>
			</div>
			
			
			
		</div>
		
	</div>
	
	
	<jsp:include page = "/jsp/pageFooter.jsp"></jsp:include>
</body>
</html>
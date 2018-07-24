<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%request.setAttribute("contextPath", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous">
</script> 

<link rel="stylesheet" type="text/css" href="${contextPath}/css/board.css?ver=7">
<script type="text/javascript" src="${contextPath}/js/weather.js"></script>
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

<title>경영기획부 게시판</title>
</head>

<body>
		<jsp:include page="/jsp/pageHeader.jsp" flush="false"/>
		<!-------------------------------------헤더--------------------------------------------------------->
		<input type = "hidden" id = "path" value = "${contextPath}">
		<div id="content">
		 
<!-- 			<div id="nameBox"> -->
<!-- 				<p style="margin-top: 35px"><h2 style="margin-left: 25px;">전체 공지사항</h2><p> -->
<!-- 			</div> -->
			<p style="position: absolute;margin-top:6px;margin-left: 840px">
				<a href="groupwareMainForm">홈</a>&nbsp;>
				<a href="boardMainForm">게시판</a>&nbsp;>
				<a href="boardDept">부서 게시판</a>&nbsp;>
				<a href="boardDeptIt">경영기획부</a>
			</p>
			
			<div id="menuBox1">
			<br>
			<h2 align="center">게시판</h2><br>
			<hr id="hr1"><br>
			<ul id="menuBox1Ul">
			
				<li class="menu"><a href="#">공지사항</a>
				
					<ul class="hide">
		                <li><a href="boardNotice">전체공지</a></li>
		                <li><a href="boardEvent">EVENT</a></li>
		            </ul>
		            
		        </li><br>
		            
		            
				<li class="menu"><a href="#">부서 게시판</a>
					
					<ul class="hide">
		                <li><a href="boardDeptIt">IT부</a></li>
		                <li><a href="boardDeptSales">영업부</a></li>
		                <li><a href="boardDeptMin">재무부</a></li>
		                <li><a href="boardDeptBP">경영기획부</a></li>
		            </ul>
					
				</li><br>
				
				<li class="menu"><a href="#">프로젝트 게시판</a>
				
					<ul class="hide">
		                <li><a href="boardProjectOngoing">진행중 프로젝트</a></li>
		                <li><a href="boardProjectFinished">완료된 프로젝트</a></li>
		            </ul>
		            
				</li><br>
				
			</ul>
			<hr id="hr2">
			</div>

			<div id="menuBox2">
				<p style="margin: 20px">
					<a href="#" style="font-size: 20px">부서 게시판</a>
				</p>
				
				<hr id="hr3" style="margin-bottom: 10x;">
				
				<p style="margin-top: 20px; margin-left: 50px;">
					<a href="#" style="font-size: 17px">경영기획부</a>
				</p>
				
				<div id="noticeBox" style="margin-top: 10px;">
						<ul>
							<li class="noticeBoxLi">
								<div>
									<strong id="strong1">공지</strong>
									<strong id="strong2">456</strong>
								</div>
								
								<ul id="noticeBoxUl1">
									<li id="li1">작성자</li>
									<li id="li2">2018.07.20</li>
									<li id="li3">조회수 50</li>
								</ul>
								
								<p style="margin-top: 5px;"><a style="font-size: 15px" href="#">제목이다다다다아아아아1</a></p>
							
							</li>
							
							<li class="noticeBoxLi">
								<div>
									<strong id="strong1">공지</strong>
									<strong id="strong2">456</strong>
								</div>
								
								<div>
									<ul id="noticeBoxUl1">
										<li id="li1">작성자</li>
										<li id="li2">2018.07.20</li>
										<li id="li3">조회수 50</li>
									</ul>
								</div>
								
								<p style="margin-top: 5px;"><a href="#">제목이다다다다아아아아2</a></p>
								
								
							</li>
							
						</ul>
				</div>
					
			<hr id="hr4" style="margin-top: 500px;">
			<form action="" style="text-align: center; margin-top: 20px;">
				<select name="type">
					<option value="1">제목</option>
					<option value="2">작성자</option>
					<option value="3">제목+작성자</option>
					<option value="4">내용</option>
				</select> 
				<input type="text" name="keyword">
				<input type="submit" value="검색">
			</form>
			</div>
			
		
		</div>
		<!-------------------------------------바디--------------------------------------------------------->
		<jsp:include page="/jsp/pageFooter.jsp" flush="false"/>
		<!-------------------------------------푸터--------------------------------------------------------->

</body>
</html>


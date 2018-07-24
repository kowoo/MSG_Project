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

<title>게시판 메인</title>
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
	<jsp:include page="/jsp/pageHeader.jsp" flush="false" />
	<!-------------------------------------헤더--------------------------------------------------------->
	<input type="hidden" id="path" value="${contextPath}">
	<div id="content">

		<p style="position: absolute; margin-left: 920px; margin-top: 15px">
			<a href="#">홈</a>&nbsp;> 
			<a href="#">게시판</a>
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
				<a href="#" style="font-size: 20px;">공지사항</a>
			</p>
			<hr id="hr3">

			<p style="margin-bottom: 10px; margin-top: 30px;">
				<a href="board_notice" style="font-size: 15px; margin-left: 50px;">전체공지</a>
				<a href="board_notice" style="margin-left: 560px; font-weight: normal; font-size: 12px; text-decoration: underline;">더보기</a>
			</p>

			<div id="noticeBox">
				<ul>
					<li class="noticeBoxLi">
						<div>
							<strong id="strong1">공지</strong> <strong id="strong2">456</strong>
						</div>
						<ul id="noticeBoxUl1">
							<li id="li1">작성자</li>
							<li id="li2">2018.07.20</li>
							<li id="li3">조회수 50</li>
						</ul>
						<p style="margin-top: 5px">
							<a href="#" style="font-size: 15px;">제목이다다다다아아아아1</a>
						</p>
					</li>
					<li class="noticeBoxLi">
						<div>
							<strong id="strong1">공지</strong> <strong id="strong2">456</strong>
						</div>
						<ul id="noticeBoxUl1">
							<li id="li1">작성자</li>
							<li id="li2">2018.07.20</li>
							<li id="li3">조회수 50</li>
						</ul>

						<p style="margin-top: 5px">
							<a href="#" style="font-size: 15px;">제목이다다다다아아아아1</a>
						</p>
					</li>
					<li class="noticeBoxLi">
						<div>
							<strong id="strong1">공지</strong> <strong id="strong2">456</strong>
						</div>

						<ul id="noticeBoxUl1">
							<li id="li1">작성자</li>
							<li id="li2">2018.07.20</li>
							<li id="li3">조회수 50</li>
						</ul>
						<p style="margin-top: 5px">
							<a href="#" style="font-size: 15px;">제목이다다다다아아아아1</a>
						</p>
					</li>
				</ul>
			</div>


			
			
			<div style=" width: 800px; height: 200px; position: absolute; margin-top: 150px;">
				
				<p style="margin: 20px; margin-bottom: 10px; margin-top: 20px;">
					<a href="board_event" style="font-size: 15px; margin-left: 35px;">EVENT</a>
					<a href="board_event" style="margin-left: 575px; font-weight: normal; font-size: 12px; text-decoration: underline;">더보기</a>
				</p>
				
				<div id="noticeBox">
					<ul>
						<li class="noticeBoxLi">
							<div>
								<strong id="strong1">공지</strong> <strong id="strong2">456</strong>
							</div>
							<ul id="noticeBoxUl1">
								<li id="li1">작성자</li>
								<li id="li2">2018.07.20</li>
								<li id="li3">조회수 50</li>
							</ul>
							<p style="margin-top: 5px">
								<a href="#" style="font-size: 15px;">제목이다다다다아아아아1</a>
							</p>
						</li>
						<li class="noticeBoxLi">
							<div>
								<strong id="strong1">공지</strong> <strong id="strong2">456</strong>
							</div>
							<ul id="noticeBoxUl1">
								<li id="li1">작성자</li>
								<li id="li2">2018.07.20</li>
								<li id="li3">조회수 50</li>
							</ul>

							<p style="margin-top: 5px">
								<a href="#" style="font-size: 15px;">제목이다다다다아아아아1</a>
							</p>
						</li>
						<li class="noticeBoxLi">
							<div>
								<strong id="strong1">공지</strong> <strong id="strong2">456</strong>
							</div>

							<ul id="noticeBoxUl1">
								<li id="li1">작성자</li>
								<li id="li2">2018.07.20</li>
								<li id="li3">조회수 50</li>
							</ul>
							<p style="margin-top: 5px">
								<a href="#" style="font-size: 15px;">제목이다다다다아아아아1</a>
							</p>
						</li>
					</ul>

				</div>

			</div> 
<!-- 			//이벤트 박스 마지막 -->

			<hr id="hr4" style="margin-top: 465px;">
			
		</div>



	</div>
	<!-------------------------------------바디--------------------------------------------------------->
	<jsp:include page="/jsp/pageFooter.jsp" flush="false" />
	<!-------------------------------------푸터--------------------------------------------------------->

</body>
</html>


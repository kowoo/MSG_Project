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

<script type="text/javascript">
	$(document).ready(function(){ 
			var fileTarget = $('.filebox .upload-hidden'); 
			
			fileTarget.on('change', function(){ // 값이 변경되면 
				if(window.FileReader){ // modern browser 
					var filename = $(this)[0].files[0].name; 
				} else { // old IE 
					var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 
				} 
		
				// 추출한 파일명 삽입 
				$(this).siblings('.upload-name').val(filename); 
		
			});
			
	}); 

</script>
<title>프로젝트 상세보기</title>
</head>
<body>
		<jsp:include page="/jsp/pageHeader.jsp" flush="false"/>
		<!-------------------------------------헤더--------------------------------------------------------->
		<input type = "hidden" id = "path" value = "${contextPath}">
		<div id="content">
		 
		
			
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
			
			<div id="menuBox2">
			
				<p style="margin: 20px">
					<a href="#" style="font-size: 20px; display: inline-block;">프로젝트 게시판</a>
				</p>
				
				<hr id="hr3" style="margin-bottom: 5px">
				
				<p style="text-align: right; margin-top: 5px;">
					<button onclick="location.href='boardProjectModifyForm'">수정하기</button>
					<button onclick="location.href='boardProject'">목록보기</button>
				</p>
					
					<div id="viewBox">
						
						<div id="viewBoxTitle">
							<h3 style="margin-bottom:3px; margin-left: 10px; margin-top: 10px;">받아올 프로젝트 제목</h3>
							<ul>
								<li>작성자</li>
								<li>2018.7.17.화</li>
								<li style="border-right: 0">조회수 50</li>
							</ul>
						</div>
						
						<div id="viewBoxContent">
						</div>
						
						
						
							<dl id="dl1">
								<dt id="dt1">이전글</dt>
								<dd id="dd1">이전글이 없습니다.</dd>
							</dl>
							
							<dl id="dl2">
								<dt id="dt2">다음글</dt>
								<dd id="dd2">다음글이 없습니다.</dd>
							</dl>
							
						
						
					</div>
					
				
				<hr id="hr4" style="margin-top: 30px;">
				
			</div>
		
				
		</div>
		<!-------------------------------------바디--------------------------------------------------------->
		<jsp:include page="/jsp/pageFooter.jsp" flush="false"/>
		<!-------------------------------------푸터--------------------------------------------------------->

</body>
</html>


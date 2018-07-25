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

<!-- include libraries(jQuery, bootstrap) -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.5/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">

<!-- include summernote css/js  -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="${contextPath}/css/board.css">
<script type="text/javascript" src="${contextPath}/js/weather.js"></script>
<script type="text/javascript" src="${contextPath}/lang/summernote-ko-KR.js"></script>


<title>부서 게시글 작성</title>
</head>

<script type="text/javascript">
	    // html dom 이 다 로딩된 후 실행된다.
	   
		$(document).ready(function() {
			// menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
			$("#menu>a").click(function() {
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

<script type="text/javascript">

	$(document).ready(function() {
		
		
		
		$('.summernote').summernote({
			lang : "ko-KR",
			height: 300,                 // set editor height --> -->
			minHeight: null,             // set minimum height of editor --> -->
			maxHeight: null,             // set maximum height of editor --> -->
			focus: true                  // set focus to editable area after initializing summernote --> -->
			}); 
			});
				
			$(document).ready(function() {
		$('.summernote').summernote();
	});
	
</script>


<body>
		<header id="main_header" style="height:95px"> 
		<input type = "hidden" id = "path" value = "${contextPath}">
		<hgroup id="title"> 
			<img src="${contextPath}/img/msgLogo.png">
		</hgroup> 
		
			<nav id="main_lnb">
				<ul id="ul1">
					<li><a href="${contextPath}/board/boardMainForm" style="text-decoration: none;">게시판</a></li>
					<li><a href="#" style="text-decoration: none;">메일</a></li>
					<li><a href="#" style="text-decoration: none;">전자결제</a></li>
					<li><a href="#" style="text-decoration: none;">메신저</a></li>
					<li><a href="#" style="text-decoration: none;">비품대여</a></li>
				</ul>
				<div id="imgBox" style="margin-top: 15px">
					<b id="place" style="display: inline-block; font-size: 15px"></b>
					<b id="temp" style="display: inline-block; font-size: 15px"></b>
				</div>
			</nav> 
		</header>
		<!-------------------------------------헤더--------------------------------------------------------->
		<input type = "hidden" id = "path" value = "${contextPath}">
		<div id="content">
		
			
			<div id="menuBox1">
			<br>
			<span><b style="font-size: 24px; margin-left: 65px;">게시판</b></span><br>
			<hr id="hr1"><br>
			<ul id="menuBox1Ul">
			
				<li id="menu"><a href="#">공지사항</a>
				
					<ul id="hide">
		                <li><a href="${contextPath}/board/boardNotice">전체공지</a></li>
		                <li><a href="${contextPath}/board/boardEvent">EVENT</a></li>
		            </ul>
		            
		        </li><br>
		            
		            
				<li id="menu"><a href="#">부서 게시판</a>
					
					<ul id="hide">
		                <li><a href="${contextPath}/board/boardDeptIt">IT부</a></li>
		                <li><a href="${contextPath}/board/boardDeptSales">영업부</a></li>
		                <li><a href="${contextPath}/board/boardDeptMin">재무부</a></li>
		                <li><a href="${contextPath}/board/boardDeptBP">경영기획부</a></li>
		            </ul>
					
				</li><br>
				
				<li id="menu"><a href="#">프로젝트 게시판</a>
				
					<ul id="hide">
		                <li><a href="${contextPath}/board/boardProjectOngoing">진행중 프로젝트</a></li>
		                <li><a href="${contextPath}/board/boardProjectFinished">완료된 프로젝트</a></li>
		            </ul>
		            
				</li><br>
				
			</ul>
			<hr id="hr2">
			</div>
			

			<div id="menuBox2">
			
				<p style="margin: 20px">
					<a href="#" style="font-size: 20px; display: inline-block; text-decoration: none;">부서 게시판</a>
				</p>
				<hr id="hr3" style="margin-bottom: 10px;">
					<span><b style="font-size: 18px;">게시글 작성</b></span><br>
					
					<div id="writeBox">
					
						<form>
							<fieldset style="margin-top: 10px; border-style: none;">
								<table id="writeTable" style="margin-top: 0">
								
									<tr id="wTtr1">
										<th style="border-bottom: 0.7px solid silver; width: 80px;">제목</th>
											<td colspan="3" style="border-bottom: 0.7px solid silver; text-align: left; width: ">
												<input type="text" placeholder="제목을 입력하세요." style="width:100%" >
											</td>
									</tr>

									<tr id="wTtr2">
										<th style="border-bottom: 0.7px solid silver">작성자</th>
										<td colspan="3" style="border-bottom: 0.7px solid silver; text-align: left; width: 200px;">
											<input type="text" placeholder="작성자 이름을 입력하세요." style="font-size: 13px; width:200px;">
										</td>
<!-- 										<th style="border-bottom: 0.7px solid silver; width: 100px;">작성팀</th> -->
<!-- 										<td style="border-bottom: 0.7px solid silver;" align="left"> -->
<!-- 											<select> -->
<!-- 												<option>팀 선택</option> -->
<!-- 												<option>1팀</option> -->
<!-- 												<option>2팀</option> -->
<!-- 												<option>3팀</option> -->
<!-- 											</select> -->
<!-- 										</td> -->
									</tr>
									
									<tr id="wTtr3">
										<th style="border-bottom: 0.7px solid silver">내용</th>
										<td colspan="3" style="border-bottom: 0.7px solid silver; text-align: left">
											<textarea name="content" class="summernote"></textarea>
										</td>
									</tr>
									
									<tr id="wTtr3">
										<th style="border-bottom: 0.7px solid silver">첨부파일</th>
										<td colspan="3" style="border-bottom: 0.7px solid silver; text-align: left">
											 
											  <div class="filebox"> 
												  <input class="upload-name" value="파일선택" disabled="disabled">
												  <label for="ex_filename">파일찾기</label> 
												  <input type="file" id="ex_filename" class="upload-hidden"> 
											  </div>
	
										</td>
									</tr>
									
									<tr>
										<th colspan="4" style="text-align: center;">
											<button type="submit" style="border: 1.6px solid #adadad">등록</button>
											<button type="reset" style="border: 1.6px solid #adadad">취소</button>
										</th>
									</tr>
								</table>
								
							</fieldset>
						</form>
					</div>
					
				<br><br>
				<hr id="hr4">
			</div>
		
		</div>
		<!-------------------------------------바디--------------------------------------------------------->
		<jsp:include page="/jsp/pageFooter.jsp" flush="false"/>
		<!-------------------------------------푸터--------------------------------------------------------->

</body>
</html>


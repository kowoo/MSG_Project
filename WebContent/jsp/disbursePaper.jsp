<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setAttribute("contextPath", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous">
</script>
</head>
<link rel = "stylesheet" type = "text/css" href = "${contextPath}/css/main.css">
<link rel = "stylesheet" type = "text/css" href = "${contextPath}/css/disburse.css">
<script type = "text/javascript" src = "${contextPath}/js/main.js"></script>
<body>
	<jsp:include page="/jsp/pageHeader.jsp"></jsp:include>
	<div id = "content">
		<div id = "menuBox1">
			<br>
			<h2 align = "center">전자결재</h2>
			<br>
			<hr id = "hr1"><br>
			<ul id = "menuBoxUI" style = "padding-left : 30px;">
				<li><a href = "${contextPath}/approval/approvalStore">결재함</a></li><br>
				<li><a href = "${contextPath}/approval/approvalWriteMain">결재문서 작성</a></li><br>
			</ul>
			<hr id = "hr2">
		</div>
		<div id="wrap" align="center">
			<div id="header">
				<div id="left">
					<img src="${contextPath}/img/msgLogo.png">
				</div>
				<div id="center">
					<h1>지출 결의서</h1>
				</div>
				<div id="right">
					<table id="top_info">
						<tr>
							<td class="top_title">문서번호</td>
							<td class="top_con">${DOCNO}</td>
						</tr>
						<tr>
							<td class="top_title">작성자</td>
							<td class="top_con">${WRITER}</td>
						</tr>
						<tr>
							<td class="top_title">작성일자</td>
							<td class="top_con">${WRITEDATE}</td>
						</tr>
					</table>
				</div>
			</div>	
	
			<div id="line" align="center">
				<div id="selectLine">
					<button onclick = "createLine();" style = "width : 100%; height : 30px;">결재선 선택</button>
				</div>
				<div id="myLine">
				
				</div>
			</div>
	
			<div id="doc_content" align = "center">
				<form action="#">
					<table style = "width : 100%">
						<tr>
							<th rowspan="2" class = "ta_header">기안자</th>
							<th>사번</th><td class = "info"></td>
							<th>소속</th><td class = "info"></td>
						</tr>
						<tr>
							<th class = "ta_header">직급</th><td class = "info"></td>
							<th class = "ta_header">성명</th><td class = "info"></td>
						</tr>
						<tr>
							<th class = "ta_header">금액</th>
							<td colspan = "4">
								<span id = "amountLabel">일금</span>
								<span id = "amount_input">( ￦ <input type = "text" value = "${amount}"> )</span>
							</td>
						</tr>
						<tr>
							<th class = "ta_header">제목</th>
							<td colspan = "4">
								<input type = "text" class = "input_val" name = "TITLE" style = "width : 90%; border : 0;">
							</td>
						</tr>
						<tr>
							<th class = "ta_header">거래처명</th>
							<td colspan = "4">
								<input type = "text" class = "input_val" name = "INC">
							</td>
						</tr>
						<tr>
							<th class = "ta_header" colspan = "3">적요</th>
							<th class = "ta_header" colspan = "2">금액</th>
						</tr>
						<tr>
							<td colspan = "3">
								<input type = "text" class = "input_val" name = "con_detail_1">
							</td>
							<td colspan = "2">
								<input type = "text" class = "input_val" name = "money_detail_1">
							</td>
						</tr>
						<tr>
							<td colspan = "3">
								<input type = "text" class = "input_val" name = "con_detail_1">
							</td>
							<td colspan = "2">
								<input type = "text" class = "input_val" name = "money_detail_1">
							</td>
						</tr>
						<tr>
							<td colspan = "3">
								<input type = "text" class = "input_val" name = "con_detail_1">
							</td>
							<td colspan = "2">
								<input type = "text" class = "input_val" name = "money_detail_1">
							</td>
						</tr>
						<tr>
							<td colspan = "3">
								<input type = "text" class = "input_val" name = "con_detail_1">
							</td>
							<td colspan = "2">
								<input type = "text" class = "input_val" name = "money_detail_1">
							</td>
						</tr>
						<tr>
							<td colspan = "3">
								<input type = "text" class = "input_val" name = "con_detail_1">
							</td>
							<td colspan = "2">
								<input type = "text" class = "input_val" name = "money_detail_1">
							</td>
						</tr>
						<tr>
							<th colspan = "3">합 계</th>
							<td colspan = "2">
								<input type = "text" class = "input_val" name = "money_detail_total">
							</td>
						</tr>
						<tr>
							<th colspan = "3">결제사항</th>
							<td colspan = "2" style = "padding : 5px;">
								<input type = "radio" name = "payType" value = "p_cash"> 개인현금
								<input type = "radio" name = "payType" value = "p_card"> 개인카드
								<input type = "radio" name = "payType" value = "c_card"> 법인카드
							</td>
						</tr>
						<tr>
							<th style = "height : 90px;">비고</th>
							<td colspan = "4">
								<textarea cols="50" rows="5" name="ETC" id="ETC" style = "width : 97%; margin : 5px; padding : 5px;"></textarea>
							</td>
						</tr>
						<tr>
							<td colspan = "5" style = "text-align: right;" id = "btm">
								<input type = "button" value = "취소" class = "btns" onclick = "history.go(-1);">
								<input type = "button" value = "임시저장" class = "btns">
								<input type = "submit" value = "등록" class = "btns">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="/jsp/pageFooter.jsp"></jsp:include>
</body>
</html>
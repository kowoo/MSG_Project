$(function(){
	//쪽지함 전체 체크 이벤트 
	$("#allCheck").click(function() {
		if($("#allCheck").prop("checked")) {
			$("input[type=checkbox]").prop("checked",true);
		}else {
			$("input[type=checkbox]").prop("checked",false);
		}
	});
	//1안
//	$(".messageTitle").click(function() {
//		var td = $(this).parent();
//		//ajax로 넣도록.
//		$("<td class=\"messageContent\">").html("요렇게 추가하는걸로 ㄱㄱ?동의? 어 보감"+'<br>').appendTo(td);
//	});
	
	//쪽지 제목 클릭 시 내용 출력 이벤트
	$(".messageTitle").click(function() {
		var td = $(this).parent();
		//ajax로 넣도록.
		if($(this).next().text()!=""){
			$(".messageContent").remove();
			return false;
		}else {
			$(".messageContent").remove();
			$("<p class=\"messageContent\">").html("요렇게 추가하는걸로 ㄱㄱ?rrrrrr" +
					"ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ" +
					"rrrrㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ"+'</p>').appendTo(td);
		}
	});
//	//사이드 박스 쪽지 클릭 이벤트
//	function sideBox_msg_click(){
//		var msg = document.getElementById("msg_sub");
//		if(msg.style.display == "none") {
//			msg.style.display = "inline-block";
//		}else {
//			msg.style.display = "none";
//		}
//	};
	//사이드 박스 클릭 이벤트
	$("#sideList_msg>a").click(function(){
		$(this).next("ul").toggleClass("sideBox_sub");
	});
	$("#sideList_chat>a").click(function(){
		$(this).next("ul").toggleClass("sideBox_sub");
	});
	//쪽지함에서 쪽지 쓰기로 이동할 때 답장 상대방이 바로 적용될지 물어보는 모달 이벤트
	$(".replyModal").on("click",function(){
		//var replyModal
		$("#modal-sender").val("sender");
		$("#modal-reply").show();
	});
});


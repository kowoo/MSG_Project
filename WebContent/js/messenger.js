var openRoom = 1;
$(function(){
	
	//쪽지함 전체 체크 이벤트
	$("#allCheck").on("click",function() {
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
	$(".replyModal").click(function(e) {
		//좌측 좌표
		var left = e.clientX+8;
		//상단 좌표
		var top = e.clientY-1;
		var box = $("#replyBox");
		box.css({
			"top" : top
			,"left" : left
			,"position" : "absolute"
		});
		//alert($(this).next().val());
		$("#reply-id").val($(this).next().val());
		//alert($("#reply-id").val());
		
		//alert($("#contextPath").val());
		box.fadeTo("fast",0.9);
		box.show();
	});
	$("#mask").click(function(){
		$("#mask").hide();
		$("#Organization-chart").hide();
	});
	//받은, 보낸 쪽지함 쪽지 삭제
	$("#msg-deleteBtn").on("click",function(){
		$("input[type=checkbox]:checked").each(function(){
			var test = $(this).val();
			//선택된 쪽지는 휴지통으로 이동.
			alert(test);
		});
	});
	//휴지통 쪽지 삭제
	$("#msg-deleteBtn-ever").on("click",function(){
		if(confirm("삭제된 쪽지는 복구가 불가능합니다. 정말 삭제하시겠습니까?")== true) {
			alert("삭제 완료");
		}
	});
	//휴지통 쪽지 복구
	$("#msg-restoreBtn").on("click",function(){
		$("input[type=checkbox]:checked").each(function(){
			var test = $(this).val();
			//선택된 쪽지는 받은 쪽지함으로 이동.
			alert(test);
		});
	});

	var chatNum = 0;
				//여기에 파라미터 값을 받아서 연결하자.
	$(".chatList-title").on("click",function(){
		var name = $(this).text()+openRoom;
		openRoom = openRoom + 1;
		//alert(name);
		window.open("openChatRoom?key=a","_blank","width=380px,height=450px,location=no,status=no,top=250px,left=700px");
	});
	
	$("#chat-join").on("click",function(){
		//채팅참여
		alert("이름"+"채팅방에 참여합니다.");
		
	});
	$("#chat-reject").on("click",function(){
		//채팅참여 거절
	});
});
//조직도에서 선택한 값을 받는 이 텍스트에 삽입.
function chartSelect() {
	var receiveList = $("#o-chart").val();
	$("#receiver").val($("#receiver").val()+","+receiveList);
	//$("#receiver").val(receiveList);
	$("#mask").hide();
	$("#Organization-chart").hide();
};
function msgReply() {
	var id = $("#reply-id").val();
	var con = $("#contextPath").val();
	//alert(con+"/messageWrite?id="+id);
	location.href=con+"/page/messageWriteForm?id="+id;
};
//쪽지 작성 시 받는 이 박스 클릭하면 발생하는 이벤트, 조직도 오픈.
function Callchart() {
   var width = $(window).width();
   var height = $(window).height();
   $("#mask").css({'width' : width, 'height' : height});
   $("#mask").fadeIn(1000);
   $("#mask").fadeTo("fast",0.6);
   
//   이미 받는 사람 목록에 있을 경우, 조직도에서 자동 체크되게 하자.
//   var replySplit = $("#reply-id").split(',');
//   for(var i in replySplit){
//	   $("#Organization-chart").
//   }
   $("#Organization-chart").show();
   
};
function checkRoomName() {
	var name = ($("#chat-title").val());
	if(name == ""){
		alert("채팅 방 제목을 입력하세요!");
		return false;
	}else {
		return true;
	}
};

//post 방식 전송
//function postUrl() {
//	method = method||"post";
//	
//	var form = document.createElement("form");
//	form.setAttribute("method", method);
//	form.setAttribute("action", path);
//	
//	var hidden = document.createElement("input");
//	hidden.setAt
//};

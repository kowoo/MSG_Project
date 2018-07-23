$(function(){
	//공지사항 버튼 클릭 이벤트
	$("#btn-notice").on("click",function(){
		var left = 20;
		var top = 20;
		var box = $("#chatNotice");
		box.css({
			"top" : top
			,"left" : left
			,"position" : "absolute"
		});	
		if(box.css("display")=="none") {
			box.fadeTo("fast",1.0);
			box.show();
		}else {
			box.hide();
		}
	});
	//채팅방 내 목록창 클릭 이벤트
	$("#btn-chatRoomMenu").on("click",function(e){
		//좌측 좌표
		var left = e.clientX-60;
		//상단 좌표
		var top = e.clientY;		
		var box = $("#chatRoomMenu");
		box.css({
			"top" : top
			,"left" : left
			,"position" : "absolute"
		});		
		if(box.css("display")=="none") {
			box.fadeTo("fast",1.0);
			box.show();
		}else {
			box.hide();
		}
	});
	$("#chat-noticeCancle").on("click",function(){
		$("#chatNotice").hide();
	});
});
function allowDrop(ev){
	ev.preventDefault();
};
function drag(ev){
	ev.dataTransfer.setData("text",ev.target.id);
};
function drop(ev){
	ev.preventDefault();
	var data = ev.dataTransfer.getData("text");
	ev.target.appendChild(document.getElementById(data));
};
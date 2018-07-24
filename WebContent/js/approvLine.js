var lineArray = new Array();	// 결재선에 들어갈 emp객체 정보를 저장할 배열
var lineCnt = 0;	// emp객체 배열에 들어가는 사원 수를 count할 변수
$(function(){
	$("#mask").mousedown(function(){	// 암영 된 부분을 클릭 할 시 모달로 띄운 창을 닫아준다.
		createMyLine();
		$("#chart").hide("fast");
		$("#mask").css({'width' : 0, 'height' : 0});
	});
});
function createLine(){	// 결재선 선택 화면을 모달로 띄워준다. 뒷 배경은 암영
	$("#chart").show("fast");
	var width = $(window).width();
	var height = $(window).height();
	$("#mask").css({'width' : width, 'height' : height});
	$("#mask").fadeIn(1000);
	$("#mask").fadeTo("fast",0.6);
}
var flag = 1;	// 결재선 창을 띄울지 말지 여부를 결정하는 flag변수
var path;	// contextPath 변수


///// 부서 선택 시 해당 부서에 해당하는 정보를 서버로부터 ajax로 가져온다 //////////
function showChart(dept, kind){
	if(flag == 1){
		flag = 2;
		path = $("#path").val();
		$.ajax({
			url : path+"/emp/selectByDept?type="+dept,
			method : "post",
			dataType : "json",
			success : function(data){
				createChart(data, kind);
			},
			error : function(){
				alert(dept);
			}
		});
	}
	else if (flag == 2){
		removeChart(kind);
		flag = 1;
	}
}
//////////////////////////////////////////////////////////

//////// 조직도 디렉터리 그리기  /////////////
function createChart(empList, kind){
	var ul = $("#"+kind);
	for(var i in empList){
		var li = $("<li>");
		$("<img src = "+path+"/img/person.png>").appendTo(li);
		$("<a onclick = 'addLine(new emp(\""+empList[i].empNo+"\",\""+empList[i].deptName+"\",\""+empList[i].empPos+"\",\""+empList[i].empName+"\"));'>").text(empList[i].empPos+" "+empList[i].empName).appendTo(li);
		li.appendTo(ul);
	}
}
////////////////////////////////////

//////// 조직도 디렉터리 목록을 clear  ////////
function removeChart(kind){
	$("#"+kind+" li").remove();
}
////////////////////////////////////

//////// 결재선에 들어갈 사원 객체 선언 ////////
function emp(empNo, empDept, empPos, empName){
	this.empNo = empNo;
	this.empDept = empDept;
	this.empPos = empPos;
	this.empName = empName;
}
////////////////////////////////////

//////// 결재선에 선택되는 emp를 배열에 담아준다. ////////
function addLine(emp){
	lineArray[lineCnt] = emp;
	lineCnt = lineCnt + 1;
}
////////////////////////////////////

/////// 내가 선택한 결재선을 그려 준다 ////////////////
function createMyLine(){	
	var table = $("#approvLine");
	
	var tr1 = $("<tr>");
	$("<th class = 'lineTitle' style = 'width : 30px'>").text("이름").appendTo(tr1);
	for(var i in lineArray){
		$("<th class = 'name'>").text(lineArray[i].empName).appendTo(tr1);
	}
	tr1.appendTo(table);
	
	var tr2 = $("<tr>");
	$("<th class = 'lineTitle'>").text("부서 / 직책").appendTo(tr2);
	for(var i in lineArray){
		$("<th class = 'deptPos'>").text(lineArray[i].empDept+" / "+lineArray[i].empPos).appendTo(tr2);
	}
	tr2.appendTo(table);
	
	var tr3 = $("<tr>");
	$("<th class = 'lineTitle'>").text("서명").appendTo(tr3);
	for(var i = 0; i < lineCnt; i = i +1){
		$("<td class = 'sign'>").appendTo(tr3);
	}
	tr3.appendTo(table);
	
	var tr4 = $("<tr>");
	$("<th class = 'lineTitle'>").text("서명일").appendTo(tr4);
	for(var i = 0; i < lineCnt; i = i +1){
		$("<td class = 'signDate'>").appendTo(tr4);
	}
	tr4.appendTo(table);
}
////////////////////////////////////
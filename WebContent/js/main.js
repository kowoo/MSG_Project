	$(function() {
		$("#fileLoad").change(function(){
			var file = $("#fileLoad")[0].files[0];
			var url = window.URL.createObjectURL(file);
			$("#profile_Img").attr("src",url);
		});
		
		
		

	});
function showMyPage(){
	   $("#modifyBox").show("slow");
	   var width = $(window).width();
	   var height = $(window).height();
	   $("#mask").css({'width' : width, 'height' : height});
	   $("#mask").fadeIn(1000);
	   $("#mask").fadeTo("fast",0.6);
};
function closeMyPage(){
	   $("#modifyBox").hide("slow");
	   $("#mask").css({'width' : 0, 'height' : 0});
};
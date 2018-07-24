$(function() {
		$("#allCheck").click(function() {
		      if($("#allCheck").prop("checked")) {
		         $("input[type=checkbox]").prop("checked",true);
		      }else {
		         $("input[type=checkbox]").prop("checked",false);
		      }
});
});

$(document).ready(function() {
	$("a.toggle").live("click",
		function(){
			$(this).parent().next().slideToggle(900);
			return false;
	});
});


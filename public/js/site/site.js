$(document).ready(function() {
	$("a.toggle").live("click",
		function(){
			$(this).parent().next().slideToggle(900);
			return false;
	});
	
	$('a#lyrics_link').live('click', function()
				{
					$('div#lyrics').slideToggle(900);		
					return false;
				});
});


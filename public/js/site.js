jQuery(function()
{
				$('a.add-element').live('click', function()
				{
					$(this).next().slideToggle(900);		
					return false;
				});
				
				$('a.slide').live('click', function()
				{
					$(this).parent().next().slideToggle(900);		
					return false;
				});
			
				$('a.slideup').live('click', function()
				{
					$(this).parent().slideToggle(900);		
					return false;
				});
				
				$('a#delete-page-link').live('click', function()
				{
					$('#confirm').slideToggle(900);		
					return false;
				});
				 	
});
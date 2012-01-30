jQuery(function()
{
				$('a#new-page-link').live('click', function()
				{
					$('#new-page-form').slideToggle(900);		
					return false;
				});
				
				$('a#delete-page-link').live('click', function()
				{
					$('#confirm').slideToggle(900);		
					return false;
				});
				

				
});
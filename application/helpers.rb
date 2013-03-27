helpers do
  def entry(title, created, article)
    "<h3 class='upcase'><a href='#' class='toggle' style='text-transform: uppercase;'>[+]&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;#{title}<h2 class='upcase' style='text-transform: uppercase;'>#{created}</h2></a></h3>

		  <div class='hide'>
		    <p>#{article}</p>
		  </div>"
  end
  
  def biography(title, article)
     "<div id='biography'>
 			<h2>#{title}</h2>
 			<p>
 			  #{article}
 			</p>

 			<a href='#top' class='top'>Back To Top</a>
 		</div>"
   end
   
end
helpers do
  def entry(title, created, article)
    "<h3><a href='#' class='toggle'>[+]&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;#{title}<h2>#{created}</h2></a></h3>

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
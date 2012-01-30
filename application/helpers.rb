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
 
   def video(vid_num)
     "<iframe src='http://player.vimeo.com/video/#{vid_num}?title=0&amp;byline=0&amp;portrait=0&amp;autoplay=0' width='297' height='168 frameborder='0' webkitAllowFullScreen allowFullScreen></iframe>"
   end
   
   def image(filename, cls)
     "<img src='img/#{filename}' class='#{cls}' />"
   end
   
   
end
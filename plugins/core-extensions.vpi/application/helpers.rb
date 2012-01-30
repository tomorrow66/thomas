helpers do
  
  def active path
    'active' if request.path_info.include? "/#{path}"
  end
  
  def alert
    unless session[:alert].nil?
      msg = session[:alert]
      session[:alert] = nil
      "<div id='alert'>#{msg}</div>"
    end
  end

  def hidden
    'display: none;'
  end
    
end
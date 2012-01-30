helpers do
  def auth_user
    redirect '/sign-in' unless session[:user]
  end
end

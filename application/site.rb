get '/?' do
  @videos = Video.all
  @posts = Post.all
  @bio = Bio.get(1)
  erb :home
end

get '/test/?' do
  erb :test, :layout => false
end

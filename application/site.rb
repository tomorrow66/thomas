get '/?' do
  @videos = Video.all
  @posts = Post.all
  @bio = Bio.get(1)
  erb :index
end

get '/test/?' do
  erb :test, :layout => false
end

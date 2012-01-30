get '/?' do
  @videos = Video.all
  @posts = Post.all
  @bio = Bio.get(1)
  erb :index
end

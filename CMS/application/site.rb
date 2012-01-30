get '/?' do
  @posts = Post.all
  @bio = Bio.first(:title => 'Biography')
  erb :index
end

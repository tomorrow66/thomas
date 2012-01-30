get '/video/edit/?' do
  @video = Video.all
  erb :edit_post, :layout => :admin
end

get '/bio/edit/?' do
  @bio = Bio.all
  erb :edit_post, :layout => :admin
end

get '/news/edit/?' do
  @posts = Post.all
  erb :edit_post, :layout => :admin
end

post '/post/new/?' do
  p = Post.new(:title => params[:title], :article => params[:article])
end

class Post
  include DataMapper::Resource
  
  property    :id,          Serial
  property    :deleted_at,  ParanoidDateTime
  timestamps  :at

  property   :title,         String
  property   :article,       String
end

class Bio
  include DataMapper::Resource
  
  property    :id,          Serial
  property    :deleted_at,  ParanoidDateTime
  timestamps  :at

  property   :title,         String
  property   :article,       String
end

class Video
  include DataMapper::Resource
  
  property    :id,          Serial
  property    :deleted_at,  ParanoidDateTime
  timestamps  :at

  property   :title,         String
  property   :link,          String
end




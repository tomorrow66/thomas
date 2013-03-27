helpers do
  def auth_user
    redirect '/sign-in' unless session[:user]
  end
end


get '/admin/?' do
  auth_user
  erb :readme, :layout => :admin
end

get '/video/edit/?' do
  auth_user
  @videos = Video.all
  erb :edit_video, :layout => :admin
end

get '/bio/edit/?' do
  auth_user
  @bio = Bio.get(1)
  erb :edit_bio, :layout => :admin
end

get '/news/edit/?' do
  auth_user
  @posts = Post.all
  erb :edit_post, :layout => :admin
end

post '/admin/new/news/?' do
  auth_user
  params[:title].strip!
  params[:article].strip!
  
  session[:alert] = ''
  
  if (params[:title].length < 1 || params[:article].length < 1)
    if params[:title].length < 1
      session[:alert] = 'You must have a title. '
    end
  
    if params[:article].length < 1
      session[:alert] = session[:alert] + 'You must have a article.'
    end
    redirect '/news/edit/'
  end
    
  Post.create(:title => params[:title], :article => params[:article])
  session[:alert] = 'Post has been added.'
  redirect 'news/edit/'
end

post '/admin/new/video/?' do
  auth_user
  params[:title].strip!
  params[:link].strip!
  
  session[:alert] = ''
  
  if (params[:title].length < 1 || params[:link].length < 1)
    if params[:title].length < 1
      session[:alert] = 'You must have a title. '
    end
  
    if params[:link].length < 1
      session[:alert] = session[:alert] + 'You must have a link.'
    end
    redirect '/video/edit/'
  end
    
  Video.create(:title => params[:title], :link => params[:link])
  session[:alert] = 'Video has been added.'
  redirect '/video/edit/'
end

get '/news/delete/:id/?' do
  auth_user
  session[:alert] = ''
  news = Post.get(params[:id])
  news.destroy
  session[:alert] = 'Post has been deleted.'
  redirect '/news/edit/'
end

get '/video/delete/:id/?' do
  auth_user
  session[:alert] = ''
  video = Video.get(params[:id])
  video.destroy
  session[:alert] = 'Video has been deleted.'
  redirect '/video/edit/'
end


get '/modify/post/:id/?' do
  auth_user
  @post = Post.get(params[:id])
  erb :modify_post, :layout => :admin
end

get '/modify/video/:id/?' do
  auth_user
  @video = Video.get(params[:id])
  erb :modify_video, :layout => :admin
end

post '/admin/update/news/:id/?' do
  auth_user
  session[:alert] = ''
  news = Post.get(params[:id])
  news.update(:title => params[:title], :article => params[:article])
  session[:alert] = 'Post has been updated.'
  redirect '/news/edit/'
end

post '/admin/update/bio/:id/?' do
  auth_user
  params[:title].strip!
  params[:article].strip!
  
  session[:alert] = ''
  
  if (params[:title].length < 1 || params[:article].length < 1)
    if params[:title].length < 1
      session[:alert] = 'You must have a title. '
    end
  
    if params[:article].length < 1
      session[:alert] = session[:alert] + 'You must have a article.'
    end
    redirect '/bio/edit/'
  end
  
  bio = Bio.get(params[:id])
  bio.update(:title => params[:title], :article => params[:article])
  session[:alert] = 'Bio has been updated.'
  redirect '/bio/edit/'
end

post '/admin/update/video/:id/?' do
  auth_user
  session[:alert] = ''
  video = Video.get(params[:id])
  video.update(:title => params[:title], :link => params[:link])
  session[:alert] = 'Video has been updated.'
  redirect '/video/edit/'
end

class Post
  include DataMapper::Resource
  
  property    :id,          Serial
  property    :deleted_at,  ParanoidDateTime
  timestamps  :at

  property   :title,         String, :length => 500
  property   :article,       String, :length => 2000
end

class Bio
  include DataMapper::Resource
  
  property    :id,          Serial
  property    :deleted_at,  ParanoidDateTime
  timestamps  :at

  property   :title,         String, :length => 500
  property   :article,       String, :length => 5000
end

class Video
  include DataMapper::Resource
  
  property    :id,          Serial
  property    :deleted_at,  ParanoidDateTime
  timestamps  :at

  property   :title,         String
  property   :link,          String
end
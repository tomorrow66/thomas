get '/admin/?' do
  auth_user
  erb :dashboard, :layout => :admin
end

class Page
  include DataMapper::Resource
  
  property    :id,          Serial
  property    :deleted_at,  ParanoidDateTime
  timestamps  :at

  property    :name,        String
end


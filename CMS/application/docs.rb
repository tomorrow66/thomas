get '/admin/readme/?' do
  auth_user
  erb :readme, :layout => :admin 
end
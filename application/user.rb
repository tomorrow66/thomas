get '/sign-in/?' do
  erb :sign_in, :layout => false
end

post '/sign-in/?' do
  params[:email].strip!
  params[:email].downcase!
  params[:password].strip!
  params[:password].downcase!
  
  errors = 0
  session[:alert] = ''
  
  if params[:email].length < 1
    session[:alert] = session[:alert] + ' You must enter an email.'
    errors = errors + 1
  end

  if params[:password].length < 1
    session[:alert] = session[:alert] + ' You must enter a password.'
    errors = errors + 1
  end
  
  if errors < 1  
    if user = User.first(:email => params[:email], :password => params[:password])
      session[:user] = user.id
    else
      session[:alert] = session[:alert] + ' Email or password incorrect.'
      errors = errors + 1
    end
  end
  
  session[:alert].strip!
  
  if errors > 0
    redirect '/sign-in'
  else
    session[:alert] = "Welcome"
    user = User.first(:email => params[:email])
    session[:user] = user.id
    redirect '/admin'
  end
  
end

get '/sign-out/?' do
  auth_user
  session[:user] = nil
  session[:alert] = 'You are now signed out.'
  redirect '/sign-in'
end

class User
  include DataMapper::Resource
  
  property    :id,          Serial
  property    :deleted_at,  ParanoidDateTime
  timestamps  :at

  property  :email,           String
  property  :password,        String
end

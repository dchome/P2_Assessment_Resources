get '/sessions' do

  if session[:user_id]
    redirect "/users/#{session[:user_id]}"
  else
    erb :'sessions/index'
  end
end

post '/sessions' do

  @user = User.find_by(username: params[:user][:username])
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = ["Incorrect Email or Password"]
    erb :"/sessions/index"
  end
end

delete '/sessions' do

  session.clear
  redirect '/sessions'
end

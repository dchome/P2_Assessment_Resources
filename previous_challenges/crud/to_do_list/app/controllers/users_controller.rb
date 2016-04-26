get '/users' do

  if session[:user_id]
    redirect "/users/#{session[:user_id]}"
  else
    redirect '/sessions'
  end
end

get '/users/new' do

  erb :'users/new'
end

post '/users' do

  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

get '/users/:id' do

  require_current_user
  @user = User.find_by(id: params[:id])
  @lists = @user.lists
  erb :'users/show'
end

get '/users/:id/edit' do

  require_current_user
  @user = User.find_by(id: params[:id])
  erb :'users/edit'
end

put '/users/:id' do

  require_current_user
  @user = User.find_by(id: params[:id])
  @user.assign_attributes(params[:user])
  if @user.save
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :"users/show"
  end
end

delete '/users' do

  require_current_user
  user = User.find_by(id: params[:id])
  user.destroy
  redirect '/sessions'
end


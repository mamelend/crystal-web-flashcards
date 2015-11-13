get '/users/new' do
  erb :'users/new'
end

post '/users' do
  if @user = User.create(params[:user])
    session[:user_id] = @user.id
    redirect("/")
  else
    # flash[:error] = "Errors: #{@user.errors.message}"
    erb :'users/new'
  end
end

get '/users/login' do
  erb :'users/login'
end

post '/users/login' do
  @user = User.find_by(email: params[:user][:email])
  if @user && @user.password == params[:user][:password]
    session[:user_id] = @user.id
    redirect("/")
  else
    # flash[:error] = "Errors: #{@user.errors.message}"
    erb :'users/login'
  end
end

get '/users/logout' do
  session.clear
  redirect("/")
end

get '/users/:id/entries' do
  @user = User.find(params[:id])
  @entries = @user.entries
  erb :'entries/index_by_user'
end
get '/' do
  if current_user != nil
    @all_surveys = Survey.all
    erb :index
  else
    erb :sign_in
  end
end


post '/sign-in' do
 if @user = User.find_by_email(params[:email])
    if @user.password_hash == BCrypt::Engine.hash_secret(params[:password], @user.password_salt)
      session[:user_id] = @user.id
      redirect '/'
    else
      session[:user_id] = nil
      redirect '/'
    end
  else
    redirect '/'
  end
end


post '/sign-up' do
  @user = User.new(name: params[:user][:name], email: params[:user][:email])
  @user.password_salt = BCrypt::Engine.generate_salt
  @user.password_hash = BCrypt::Engine.hash_secret(params[:user][:password], @user.password_salt)
  @user.save
  session[:user_id] = @user.id
  redirect '/'
end

get '/sign-out' do
  session[:user_id] = nil
  redirect '/'
end

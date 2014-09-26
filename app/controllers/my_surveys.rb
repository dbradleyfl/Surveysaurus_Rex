get '/user/:id/surveys' do
  @user = User.find_by(id: params[:id])
  @name = @user.name.capitalize
  @user_surveys = @user.surveys
  erb :my_surveys
end

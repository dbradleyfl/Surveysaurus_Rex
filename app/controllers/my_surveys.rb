get '/user/:id/surveys' do
  @user = User.find_by(id: params[:id])
  @user_surveys = @user.surveys
  erb :my_surveys
end

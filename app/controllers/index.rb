get '/' do
  if current_user != nil
    @all_surveys = Survey.all
    erb :index
  else
    erb :sign_in
  end
end


get '/survey/new' do
  erb :new_survey
end

post '/survey/new' do  #
  p "in the route****************"
  p params
  @question = Question.new(sentence: params[:sentence])
  @answer1 = Answer.new(content: params[:answer1], question_id: question.id, tally: 0)
  @answer2 = Answer.new(content: params[:answer2], question_id: question.id, tally: 0)
  @answer3 = Answer.new(content: params[:answer3], question_id: question.id, tally: 0)
  question.save
  @answers = []
  @answer1.save
  @answer2.save
  @answer3.save
  entry << @question << @answer1 << @answer2 << @answer3
  content_type :json
  new_entry = erb :_new_survey_partial, :layout => false
  entry.to_json
  # if survey
  #   question = Question.new()
  # else
  #   survey = Survey.new(user_id: session[:user_id], name: params[:name])
  # end
end


get '/survey/:id' do

end

# post '/survey/new' do  #from partial to new_survey
#   if survey.save
#     content_type :json
#     new_survey = erb :_new_survey, :layout => false, locals: {survey: survey}
#     {survey: new_survey}.to_json
#   else
#     status 422
#   end
# end




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


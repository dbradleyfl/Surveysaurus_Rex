

get '/survey/new' do
  erb :new_survey
end

post '/survey/new' do  #
  p params
  question = Question.new(sentence: params[:sentence])
  answer1 = Answer.new(content: params[:answer1], question_id: question.id, tally: 0)
  answer2 = Answer.new(content: params[:answer2], question_id: question.id, tally: 0)
  answer3 = Answer.new(content: params[:answer3], question_id: question.id, tally: 0)
  question.save
  answer1.save
  answer2.save
  answer3.save
  content_type :json
  question.sentence.to_json
  answer1.content.to_json
  answer2.content.to_json
  answer3.content.to_json
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


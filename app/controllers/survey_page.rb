get '/survey/:id' do
  @survey = Survey.find(params[:id])
  @questions = @survey.questions

  erb :survey_page
end

post '/surveys/:id' do
  @survey = Survey.find(params[:id])
  @max = @survey.questions.length
  i = 1


  # redirect '/survey/:id/results'
end

get '/survey/:id/results' do
  erb :survey_results
end
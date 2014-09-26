get '/survey/:id' do
  @survey = Survey.find(params[:id])
  @questions = @survey.questions

  erb :survey_page
end

post '/surveys/:id' do
  @survey = Survey.find(params[:id])
  @questions = @survey.questions
  @max = @survey.questions.length
  i = 1
  while i <= @max
    name = ("question" + "#{i}").to_sym
    result = params[name]
    @answer = Answer.find(result.to_i)
    p @answer
    @answer.tally += 1
    @answer.save!
    p @answer
    i += 1
  end

  redirect "/survey/#{@survey.id}/results"
end
rex = User.create(name: "Rex", email: "rex@aol.com")

new_survey = Survey.create(name: "What Dinos Taste the Best?", user_id: 1)

question1 = Question.create(sentence: "what's your favorite dinosaur meat?", survey_id: 1)
question2 = Question.create(sentence: "When do you like to eat?", survey_id: 1)
quesiton3 = Question.create(sentence: "Where do you live?", survey_id: 1)

answer1q1 = Answer.create(content: "triceratops", tally: 0, question_id: 1)
answer2q1 = Answer.create(content: "stegasaurus", tally: 0, question_id: 1)
answer3q1 = Answer.create(content: "brontosaurus", tally: 0, question_id: 1)

answer1q2 = Answer.create(content: "morning", tally: 0, question_id: 2)
answer2q2 = Answer.create(content: "afternoon", tally: 0, question_id: 2)
answer3q2 = Answer.create(content: "night", tally: 0, question_id: 2)

answer1q3 = Answer.create(content: "Pangea North", tally: 0, question_id: 3)
answer2q3 = Answer.create(content: "Pangea South", tally: 0, question_id: 3)
answer3q3 = Answer.create(content: "Jurassic Park", tally: 0, question_id: 3)



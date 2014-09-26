User.create(name: "Rex", email: "rex@aol.com")
User.create(name:"Devon", email: "dbradleyfl@gmail.com")
User.create(name:"Lawrence", email: "law@law.com")
User.create(name:"Yen", email: "yen@yen.com")
User.create(name:"Anders", email: "anderseverett@gmail.com")

Survey.create(name: "What Dinos Taste the Best?", user_id: 1)
Survey.create(name: "Tips for quiting my job", user_id: 5)
Survey.create(name: "Party at my house!!", user_id: 4)
Survey.create(name: "Surfing this weekend", user_id: 2)
Survey.create(name: "Being a lawyer", user_id: 3)


Question.create(sentence: "what's your favorite dinosaur meat?", survey_id: 1)
Question.create(sentence: "When do you like to eat?", survey_id: 1)
Question.create(sentence: "Where do you live?", survey_id: 1)

Question.create(sentence: "What is the worst part about being a lawyer?", survey_id: 5)
Question.create(sentence: "How much money do you make as a lawyer?", survey_id: 5)

Answer.create(content: "triceratops", tally: 0, question_id: 1)
Answer.create(content: "stegasaurus", tally: 0, question_id: 1)
Answer.create(content: "brontosaurus", tally: 0, question_id: 1)

Answer.create(content: "morning", tally: 0, question_id: 2)
Answer.create(content: "afternoon", tally: 0, question_id: 2)
Answer.create(content: "night", tally: 0, question_id: 2)

Answer.create(content: "Pangea North", tally: 0, question_id: 3)
Answer.create(content: "Pangea South", tally: 0, question_id: 3)
Answer.create(content: "Jurassic Park", tally: 0, question_id: 3)


Answer.create(content: "Wearing a suit.", tally: 5, question_id: 1)
Answer.create(content: "Talking to people.", tally: 3, question_id: 1)
Answer.create(content: "Ruining peoples lives.", tally: 22, question_id: 1)

Answer.create(content: "Half a million per year.", tally: 2, question_id: 2)
Answer.create(content: "Not enough.", tally: 8, question_id: 2)
Answer.create(content: "Less than a software engineer", tally: 20, question_id: 2)

User.destroy_all

admin = User.create(email: "admin@magic8.ball", password: "123123")
default_ball = Ball.create(name: "Magic 8 ball", user: admin, comment:"Default Magic 8 ball with 10 positive answers, 5 negative answers, and 5 vague responses ")
answer1 = Answer.create(content: "Indeed", answer_type:"positive", ball: default_ball)
answer2 = Answer.create(content: "Don't count on it", answer_type:"negative", ball: default_ball)
answer3 = Answer.create(content: "Close your eyes and ask again", answer_type:"vague", ball: default_ball)
# answer4 = Answer.create(content: "", answer_type:"", ball: default_ball)
# answer5 = Answer.create(content: "", answer_type:"", ball: default_ball)
# answer6 = Answer.create(content: "", answer_type:"", ball: default_ball)
# answer7 = Answer.create(content: "", answer_type:"", ball: default_ball)

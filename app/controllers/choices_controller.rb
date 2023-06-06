

# def create

#   params["choices"].each do |key, value|
#     @choice = Choice.create(choice_params(value))
# end

# def choice_params(choices)
#   choices.permit(:letter, :answer_id)
# end

def create

  @answer = Answer.find(params[answer_id])
  @question = Question.find(params[question_id])
  @beast = Beast.find(params[beast_id])
  @choice = Choice.new
  @choice.answer = @answer
  @choice.beast = @beast
  @choice.question =@question
  @choice.answer_id = @answer.id
  @choice.beast_id = @beast.id
  @choice.question_id = @question.id

  if @choice.save!
    if @question.last
      redirect_to beast_path(Beast.first), alert: "we saved it!!!"
    else
      redirect_to question_path(@question.id.next), alert: "we're at the zoo now!!!"
    end
  else
    redirect_to question_path(@question) alert: "answer the dayam question, you beast!!!"
  end


end

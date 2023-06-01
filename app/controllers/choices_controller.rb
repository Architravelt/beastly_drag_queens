

# def create

#   params["choices"].each do |key, value|
#     @choice = Choice.create(choice_params(value))
# end

# def choice_params(choices)
#   choices.permit(:letter, :answer_id)
# end

def create

  @answer = Answer.find(params[album_id])
  @beast = Beast.find(params[beast_id])
  @choice = Choice.new
  @choice.answer = @answer
  @choice.beast = @beast

  # if @choice.save!


end

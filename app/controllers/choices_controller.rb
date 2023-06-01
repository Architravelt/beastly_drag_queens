

def create

  params["choices"].each do |key, value|
    @choice = Choice.create(choice_params(value))
end

def choice_params(choices)
  choices.permit(:letter, :answer_id)
end

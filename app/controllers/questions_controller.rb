class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
    # @question = Question.find_by(name: "one").id

  end

  def choices
    @choices ||= []
  end

  def count
    @count ||= 0
  end

  def selection(animal, number)
    if number == "one"
      count = 0;
    elsif number == "two"
      count = 1
    elsif number == "three"
      count = 2
    end

    choices[count] = animal
  end

  def edit
    question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @beast = Beast.find(params[:answer])
    @question.update_attribute(:selection, @beast.animal)
    selection(@beast.animal, @question.name)
    if @question == Question.last
      @the_beast = find_the_beast
      redirect_to beast_path(Beast.find_by(animal: @the_beast)), alert: "we saved it!!!"
    else
      redirect_to question_path(@question.id.next), alert: "we're at the zoo now!!!"
    end
  end


  def find_the_beast
    # @beastFace = ""
    # if choices[0] == choices[1] || choices[0] == choices[2]

    #   @beastFace = choices[0]

    # elsif choices[1] == choices[2]
    #   @beastFace = choices[1]

    # else
    #   @beastFace = choices[2]

    # end
    return "puma"
  end
end

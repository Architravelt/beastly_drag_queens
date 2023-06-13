class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
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
    @beastFace = ""
    @selectionBox = [];

    Question.all.each { |q| @selectionBox << q.selection }

    if @selectionBox[0] == @selectionBox[1] || @selectionBox[0] == @selectionBox[2]
      @beastFace = @selectionBox[0]
    elsif @selectionBox[1] == @selectionBox[2]
      @beastFace = @selectionBox[1]
    else
      @beastFace = @selectionBox[2]
    end

    return @beastFace
  end
end

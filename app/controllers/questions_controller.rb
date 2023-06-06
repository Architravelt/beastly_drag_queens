class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
    # @question = Question.find_by(name: "one").id

  end

  def choices
    @questions = Question.all
    @emptyChoices = []

    @questions.each do
      @emptyChoices << Choice.new
    end
  end

  # def first
  #   @question.first = Question.find_by(name: "one").id
  # end
end

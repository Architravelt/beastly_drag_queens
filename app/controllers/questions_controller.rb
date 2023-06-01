class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
    # @question = Question.find_by(name: "one").id

  end

  # def first
  #   @question.first = Question.find_by(name: "one").id
  # end
end

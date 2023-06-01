class AnswersController < ApplicationController

  def index
    @answers = Answer.all
  end

  def show
    @answer = Answer.find(params[:id])
  end

  # def choice
  #   @answer = Answer.find(params[:id])
  #   @choice = Choice.where(answer_id: params[:id])
  # end
end

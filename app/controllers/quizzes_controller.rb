class QuizzesController < ApplicationController

  def bdqQuiz
    @bdq_questions = Question.all
    @emptyChoices = []

    Question.all.each do
      @emptyChoices << Choice.new
    end
  end


end

class QuizzesController < ApplicationController

  def bdqQuiz
    @bdq_questions = Question.all
    @emptyAnswers = []

    Question.all.each do
      @emptyAnswers << Answer.new
    end
  end


end

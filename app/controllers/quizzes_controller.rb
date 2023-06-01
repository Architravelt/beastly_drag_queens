class QuizzesController < ApplicationController

  def choices
    @questions = Question.all
    @emptyChoices = []

    @questions.each do
      @emptyChoices << Choice.new
    end
  end


end

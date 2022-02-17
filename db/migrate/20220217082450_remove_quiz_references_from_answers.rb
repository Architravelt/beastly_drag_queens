class RemoveQuizReferencesFromAnswers < ActiveRecord::Migration[6.1]
  def change
    remove_reference :answers, :quiz
  end
end

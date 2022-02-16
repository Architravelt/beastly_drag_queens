class RemoveResultReferencesFromAnswers < ActiveRecord::Migration[6.1]
  def change
    remove_reference :answers, :result
  end
end

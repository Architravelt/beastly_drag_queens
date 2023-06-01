class AddQuestionRefToChoices < ActiveRecord::Migration[6.1]
  def change
    add_reference :choices, :question, null: false, foreign_key: true
  end
end

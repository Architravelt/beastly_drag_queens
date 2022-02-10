class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :answer
      t.string :letter
      t.references :question, null: false, foreign_key: true
      t.references :quiz, null: false, foreign_key: true
      t.references :result, null: false, foreign_key: true

      t.timestamps
    end
  end
end

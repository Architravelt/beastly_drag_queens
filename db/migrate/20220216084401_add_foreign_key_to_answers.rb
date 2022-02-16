class AddForeignKeyToAnswers < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :answers, :beasts
  end
end

class RemoveCounterFromQuestions < ActiveRecord::Migration[6.1]
  def change
    remove_column :questions, :counter, :integer
  end
end

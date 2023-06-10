class AddDetailsToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :choice, :string
    add_column :questions, :counter, :integer
  end
end

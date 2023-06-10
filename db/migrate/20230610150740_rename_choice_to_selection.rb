class RenameChoiceToSelection < ActiveRecord::Migration[6.1]
  def change
    rename_column :questions, :choice, :selection
  end
end

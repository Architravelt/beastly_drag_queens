class AddBeastRefToChoices < ActiveRecord::Migration[6.1]
  def change
    add_reference :choices, :beast, null: false, foreign_key: true
  end
end

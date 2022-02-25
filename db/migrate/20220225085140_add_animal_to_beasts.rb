class AddAnimalToBeasts < ActiveRecord::Migration[6.1]
  def change
    add_column :beasts, :animal, :string
  end
end

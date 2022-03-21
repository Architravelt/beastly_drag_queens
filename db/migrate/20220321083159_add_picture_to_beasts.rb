class AddPictureToBeasts < ActiveRecord::Migration[6.1]
  def change
    add_column :beasts, :picture, :string
  end
end

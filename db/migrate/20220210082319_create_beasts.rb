class CreateBeasts < ActiveRecord::Migration[6.1]
  def change
    create_table :beasts do |t|
      t.string :name
      t.text :description
      t.text :explanation

      t.timestamps
    end
  end
end

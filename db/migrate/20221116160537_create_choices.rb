class CreateChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :choices do |t|
      t.string :letter
      t.references :answer, null: false, foreign_key: true

      t.timestamps
    end
  end
end

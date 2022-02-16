class DropResults < ActiveRecord::Migration[6.1]
  def change
    drop_table :results
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

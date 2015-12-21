class DropProductsTable < ActiveRecord::Migration
  def up
    drop_table :log_entries
    drop_table :wines
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end

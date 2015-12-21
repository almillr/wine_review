class CreateLogEntries < ActiveRecord::Migration
  def change
    create_table :log_entries do |t|
      t.string :name
      t.integer :rating
      t.string :location
      t.text :comments
      t.datetime :tasted_on
      t.references :wine, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
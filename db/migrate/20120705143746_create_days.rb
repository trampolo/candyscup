class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :number
      t.date :day
      t.references :league

      t.timestamps
    end
    add_index :days, :league_id
  end
end

class CreatePlayerDays < ActiveRecord::Migration
  def change
    create_table :player_days do |t|
      t.references :player
      t.references :day
      t.decimal :vote
      t.integer :goals
      t.integer :yellowcards
      t.integer :redcards

      t.timestamps
    end
    add_index :player_days, :player_id
    add_index :player_days, :day_id
  end
end

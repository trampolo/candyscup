class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :role
      t.string :club
      t.references :league

      t.timestamps
    end
    add_index :players, :league_id
  end
end

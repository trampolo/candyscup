class CreateTeamPlayerDays < ActiveRecord::Migration
  def change
    create_table :team_player_days do |t|
      t.references :team
      t.references :player_day

      t.timestamps
    end
    add_index :team_player_days, :team_id
    add_index :team_player_days, :player_day_id
  end
end

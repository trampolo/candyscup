class AddStadiumColoursToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :stadium, :string
    add_column :teams, :colour_one, :string
    add_column :teams, :colour_two, :string
  end
end

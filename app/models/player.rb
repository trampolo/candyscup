class Player < ActiveRecord::Base
  belongs_to :league
  attr_accessible :club, :name, :role, :league_id
end

class Team < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :stadium, :colour_one, :colour_two
end

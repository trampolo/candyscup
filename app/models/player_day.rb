class PlayerDay < ActiveRecord::Base
  belongs_to :player
  belongs_to :day
  attr_accessible :goals, :redcards, :vote, :yellowcards
end

class League < ActiveRecord::Base
  has_many :players
  attr_accessible :description, :name
end

class Day < ActiveRecord::Base
  belongs_to :league
  attr_accessible :day, :number
end

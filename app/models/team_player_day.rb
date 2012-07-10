class TeamPlayerDay < ActiveRecord::Base
  belongs_to :team
  belongs_to :player_day
  # attr_accessible :title, :body
end

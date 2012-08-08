class User < ActiveRecord::Base
  has_one :team
  acts_as_authentic
  attr_accessible :username, :email, :password, :password_confirmation, :team
end

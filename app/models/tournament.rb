class Tournament < ActiveRecord::Base
  has_many :user_tournaments
  has_many :users, through: :user_tournaments
  has_many :matches
end

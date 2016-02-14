class Match < ActiveRecord::Base
  belongs_to :tournament
  has_many :user_matches
  has_many :users, through: :user_matches
end

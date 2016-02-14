class User < ActiveRecord::Base
  has_secure_password
  has_many :user_tournaments
  has_many :tournaments, through: :user_tournaments

  has_many :user_matches
  has_many :matches, through: :user_matches

end

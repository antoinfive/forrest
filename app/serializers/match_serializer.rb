class MatchSerializer < ActiveModel::Serializer
  attributes :id, :player1, :player2, :player1_score, :player2_score, :completed, :tournament, :users
end

class TournamentSerializer < ActiveModel::Serializer
  attributes :id, :title, :winner, :description, :num_players, :num_rounds, :start_date, :end_date
end

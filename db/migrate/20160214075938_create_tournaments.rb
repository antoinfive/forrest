class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :title
      t.text :description
      t.integer :num_rounds
      t.integer :num_players
      t.integer :winner
      t.timestamp :start_date
      t.timestamp :end_date

      t.timestamps null: false
    end
  end
end

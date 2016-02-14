class CreateUserTournaments < ActiveRecord::Migration
  def change
    create_table :user_tournaments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :tournament, index: true, foreign_key: true
    end
  end
end

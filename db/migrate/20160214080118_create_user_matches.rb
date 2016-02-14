class CreateUserMatches < ActiveRecord::Migration
  def change
    create_table :user_matches do |t|
      t.references :user, index: true, foreign_key: true
      t.references :match, index: true, foreign_key: true
    end
  end
end

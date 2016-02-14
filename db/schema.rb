# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160214081121) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "matches", force: :cascade do |t|
    t.integer  "player1"
    t.integer  "player2"
    t.integer  "player1_score"
    t.integer  "player2_score"
    t.integer  "tournament_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "completed",     default: false
  end

  add_index "matches", ["tournament_id"], name: "index_matches_on_tournament_id", using: :btree

  create_table "tournaments", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "num_rounds"
    t.integer  "num_players"
    t.integer  "winner"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_matches", force: :cascade do |t|
    t.integer "user_id"
    t.integer "match_id"
  end

  add_index "user_matches", ["match_id"], name: "index_user_matches_on_match_id", using: :btree
  add_index "user_matches", ["user_id"], name: "index_user_matches_on_user_id", using: :btree

  create_table "user_tournaments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tournament_id"
  end

  add_index "user_tournaments", ["tournament_id"], name: "index_user_tournaments_on_tournament_id", using: :btree
  add_index "user_tournaments", ["user_id"], name: "index_user_tournaments_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "matches", "tournaments"
  add_foreign_key "user_matches", "matches"
  add_foreign_key "user_matches", "users"
  add_foreign_key "user_tournaments", "tournaments"
  add_foreign_key "user_tournaments", "users"
end

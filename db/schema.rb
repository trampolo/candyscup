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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120705151608) do

  create_table "days", :force => true do |t|
    t.integer  "number"
    t.date     "day"
    t.integer  "league_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "days", ["league_id"], :name => "index_days_on_league_id"

  create_table "leagues", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "player_days", :force => true do |t|
    t.integer  "player_id"
    t.integer  "day_id"
    t.decimal  "vote"
    t.integer  "goals"
    t.integer  "yellowcards"
    t.integer  "redcards"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "player_days", ["day_id"], :name => "index_player_days_on_day_id"
  add_index "player_days", ["player_id"], :name => "index_player_days_on_player_id"

  create_table "players", :force => true do |t|
    t.string   "name"
    t.string   "role"
    t.string   "club"
    t.integer  "league_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "players", ["league_id"], :name => "index_players_on_league_id"

  create_table "team_player_days", :force => true do |t|
    t.integer  "team_id"
    t.integer  "player_day_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "team_player_days", ["player_day_id"], :name => "index_team_player_days_on_player_day_id"
  add_index "team_player_days", ["team_id"], :name => "index_team_player_days_on_team_id"

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "teams", ["user_id"], :name => "index_teams_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end

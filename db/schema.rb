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

ActiveRecord::Schema.define(version: 20140612203356) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: true do |t|
    t.string   "url"
    t.string   "headline"
    t.string   "publication"
    t.string   "extract"
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interests", force: true do |t|
    t.string   "topic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reader_article_joins", force: true do |t|
    t.string   "reader_id"
    t.string   "article_id"
    t.string   "match_score"
    t.string   "reader_ranking"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reader_interest_joins", force: true do |t|
    t.string   "reader_id"
    t.string   "interest_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "readers", force: true do |t|
    t.string   "name"
    t.string   "email_validate"
    t.string   "password"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

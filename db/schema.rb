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

ActiveRecord::Schema.define(version: 20150318093557) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "educations", force: true do |t|
    t.string   "name"
    t.string   "image_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "matches", force: true do |t|
    t.integer  "user_1_id"
    t.integer  "user_2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.integer  "match_id"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.boolean  "viewed",     default: false
  end

  create_table "reports", force: true do |t|
    t.integer  "user_id"
    t.integer  "matched_user_id"
    t.boolean  "liked",           default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "user_token"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "education_id"
    t.boolean  "frozen_account", default: false
    t.string   "gender",         default: "Man"
    t.text     "view_for",       default: [],    array: true
  end

end

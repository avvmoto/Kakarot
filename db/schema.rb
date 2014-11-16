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

ActiveRecord::Schema.define(version: 20141116044408) do

  create_table "arrangements", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mood_id"
  end

  add_index "arrangements", ["mood_id"], name: "index_arrangements_on_mood_id"

  create_table "arrangements_colors", force: true do |t|
    t.integer  "arrangement_id"
    t.integer  "color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "weight"
  end

  add_index "arrangements_colors", ["arrangement_id", "color_id"], name: "i1", unique: true

  create_table "colors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name_kana"
    t.string   "code"
  end

  create_table "materials", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mood_colors", force: true do |t|
    t.integer  "mood_id"
    t.integer  "color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moods", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipe_materials", force: true do |t|
    t.integer  "recipe_id"
    t.integer  "material_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.text     "title"
    t.string   "uri"
    t.string   "image_uri"
    t.string   "category"
    t.string   "category_url"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "arrangement_id"
  end

  add_index "recipes", ["arrangement_id"], name: "index_recipes_on_arrangement_id"
  add_index "recipes", ["title"], name: "index_recipes_on_title"

  create_table "tweet_moods", force: true do |t|
    t.integer  "tweet_id"
    t.integer  "mood_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tweets", force: true do |t|
    t.integer  "user_id"
    t.text     "massage"
    t.integer  "mood_id"
    t.integer  "tweet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "posted_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "twitter_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

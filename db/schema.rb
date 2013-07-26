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

ActiveRecord::Schema.define(version: 20130606043443) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                              default: "", null: false
    t.string   "encrypted_password",     limit: 128, default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "headlines", force: true do |t|
    t.string   "headline"
    t.text     "description"
    t.datetime "last_modified"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "espn_id"
    t.text     "href"
    t.text     "image_url"
    t.text     "image_caption"
    t.integer  "sport_id"
    t.integer  "team_id"
  end

  create_table "mlb_headlines", force: true do |t|
    t.string   "headline"
    t.text     "description"
    t.datetime "last_modified"
    t.integer  "espn_id"
    t.text     "href"
    t.text     "image_url"
    t.text     "image_caption"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nba_headlines", force: true do |t|
    t.string   "headline"
    t.text     "description"
    t.datetime "last_modified"
    t.integer  "espn_id"
    t.text     "href"
    t.text     "image_url"
    t.text     "image_caption"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ncaa_mens_bb_headlines", force: true do |t|
    t.string   "headline"
    t.text     "description"
    t.datetime "last_modified"
    t.integer  "espn_id"
    t.text     "href"
    t.text     "image_url"
    t.text     "image_caption"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ncaa_mens_fb_headlines", force: true do |t|
    t.string   "headline"
    t.text     "description"
    t.datetime "last_modified"
    t.integer  "espn_id"
    t.text     "href"
    t.text     "image_url"
    t.text     "image_caption"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nfl_headlines", force: true do |t|
    t.string   "headline"
    t.text     "description"
    t.datetime "last_modified"
    t.integer  "espn_id"
    t.text     "href"
    t.text     "image_url"
    t.text     "image_caption"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nhl_headlines", force: true do |t|
    t.string   "headline"
    t.text     "description"
    t.datetime "last_modified"
    t.integer  "espn_id"
    t.text     "href"
    t.text     "image_url"
    t.text     "image_caption"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "si_headlines", force: true do |t|
    t.string   "headline"
    t.text     "description"
    t.datetime "last_modified"
    t.text     "href"
    t.text     "image_url"
    t.text     "image_caption"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "si_id"
  end

end

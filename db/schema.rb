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

ActiveRecord::Schema.define(version: 20141225084306) do

  create_table "admins", force: true do |t|
    t.string   "name",                                   null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "is_approve",             default: false
    t.boolean  "is_admin",               default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["name"], name: "index_admins_on_name", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "articles", force: true do |t|
    t.string   "title"
    t.string   "info"
    t.integer  "kind"
    t.text     "content"
    t.string   "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.string   "title"
    t.string   "en_title"
    t.string   "type"
    t.string   "info"
    t.text     "content"
    t.string   "image"
    t.text     "url"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suggests", force: true do |t|
    t.string   "name"
    t.string   "mobile"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

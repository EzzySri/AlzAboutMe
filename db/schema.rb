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

ActiveRecord::Schema.define(version: 20161128035650) do

  create_table "groups", force: :cascade do |t|
    t.integer  "creator"
    t.string   "group_name"
    t.string   "people"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memory_cards", force: :cascade do |t|
    t.string   "question"
    t.string   "answer"
    t.boolean  "completed"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.boolean  "editing"
    t.string   "question_type"
    t.string   "question_choices"
    t.string   "category"
    t.integer  "user_id"
    t.string   "previous_answers"
  end

  add_index "memory_cards", ["user_id"], name: "index_memory_cards_on_user_id"

  create_table "share_tables", force: :cascade do |t|
    t.integer  "donator"
    t.integer  "receiver"
    t.integer  "group_id"
    t.integer  "memcard_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "framework"
    t.string   "role"
  end

end

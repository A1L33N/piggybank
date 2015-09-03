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

ActiveRecord::Schema.define(version: 20150903210748) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chores", force: :cascade do |t|
    t.string   "description"
    t.decimal  "pay",         precision: 10, scale: 2
    t.integer  "kid_id"
    t.integer  "parent_id"
    t.boolean  "available"
    t.boolean  "complete"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kids", force: :cascade do |t|
    t.string   "name"
    t.string   "account_name"
    t.decimal  "beginning_balance", precision: 10, scale: 2
    t.decimal  "goal",              precision: 10, scale: 2
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parents", force: :cascade do |t|
    t.string   "name"
    t.string   "bank_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", force: :cascade do |t|
    t.string   "request_type"
    t.decimal  "amount",       precision: 10, scale: 2
    t.string   "description"
    t.integer  "kid_id"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", force: :cascade do |t|
    t.decimal  "amount",           precision: 10, scale: 2
    t.string   "transaction_type"
    t.string   "description"
    t.date     "date"
    t.integer  "kid_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

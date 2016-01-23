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

ActiveRecord::Schema.define(version: 20160123192352) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blocks", force: :cascade do |t|
    t.string   "block_num"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blocks_businesses", id: false, force: :cascade do |t|
    t.integer "block_id",    null: false
    t.integer "business_id", null: false
    t.boolean "leader"
  end

  create_table "blocks_users", id: false, force: :cascade do |t|
    t.integer "block_id", null: false
    t.integer "user_id",  null: false
    t.boolean "leader"
  end

  create_table "businesses", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.integer  "leader_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events_users", id: false, force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "user_id",  null: false
  end

  create_table "issues", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "body"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

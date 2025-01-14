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

ActiveRecord::Schema.define(version: 20210908184736) do

  create_table "admins", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authorizations", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "authorizations", ["user_id"], name: "index_authorizations_on_user_id"

  create_table "organizations", force: :cascade do |t|
    t.text     "num"
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "manager"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "privilege"
    t.text     "org"
    t.text     "org2"
    t.integer  "grad"
    t.integer  "manager_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "machine_1"
    t.string   "machine_2"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "timetables", force: :cascade do |t|
    t.datetime "time_in"
    t.datetime "time_out"
    t.string   "notes"
    t.integer  "user_id"
    t.text     "clockout_org"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "machine"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

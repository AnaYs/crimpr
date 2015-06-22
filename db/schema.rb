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

ActiveRecord::Schema.define(version: 20150622123143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "grades_distribution"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.integer  "sector_id"
    t.integer  "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pictures", ["area_id"], name: "index_pictures_on_area_id", using: :btree
  add_index "pictures", ["sector_id"], name: "index_pictures_on_sector_id", using: :btree

  create_table "sectors", force: :cascade do |t|
    t.integer  "area_id"
    t.string   "name"
    t.text     "description"
    t.string   "cardinal_direction"
    t.string   "routes_grading"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "sectors", ["area_id"], name: "index_sectors_on_area_id", using: :btree

  add_foreign_key "pictures", "areas"
  add_foreign_key "pictures", "sectors"
  add_foreign_key "sectors", "areas"
end
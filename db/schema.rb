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

ActiveRecord::Schema.define(version: 20150623184557) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bike_racks", force: :cascade do |t|
    t.string   "name",                                 null: false
    t.string   "address",                              null: false
    t.string   "city",                                 null: false
    t.string   "state",                                null: false
    t.string   "zip_code",                             null: false
    t.integer  "count",                                null: false
    t.decimal  "latitude",   precision: 15, scale: 10, null: false
    t.decimal  "longitude",  precision: 15, scale: 10, null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "bike_racks", ["city"], name: "index_bike_racks_on_city", using: :btree
  add_index "bike_racks", ["latitude", "longitude"], name: "index_bike_racks_on_latitude_and_longitude", unique: true, using: :btree
  add_index "bike_racks", ["state"], name: "index_bike_racks_on_state", using: :btree
  add_index "bike_racks", ["zip_code"], name: "index_bike_racks_on_zip_code", using: :btree

end

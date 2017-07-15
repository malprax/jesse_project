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

ActiveRecord::Schema.define(version: 20170715061154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "location_searches", force: :cascade do |t|
    t.string "phone"
    t.string "country"
    t.string "city"
    t.string "state"
    t.string "state_code", default: "ON"
    t.string "zip"
    t.string "address"
    t.float "longitude"
    t.float "latitude"
    t.float "fetched_latitude"
    t.float "fetched_longitude"
    t.string "emergency_contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["latitude"], name: "index_location_searches_on_latitude"
    t.index ["longitude"], name: "index_location_searches_on_longitude"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.float "longitude"
    t.float "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

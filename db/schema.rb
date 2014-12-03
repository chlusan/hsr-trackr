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

ActiveRecord::Schema.define(version: 20141202062157) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencies", force: true do |t|
    t.string "name"
    t.string "phone"
    t.string "url"
    t.string "fare_url"
    t.string "timezone"
    t.string "lang"
  end

  create_table "calendar_dates", id: false, force: true do |t|
    t.string "service_id"
    t.string "date"
    t.string "exception_type"
  end

  create_table "calendars", id: false, force: true do |t|
    t.string "service_id"
    t.string "start_date"
    t.string "end_date"
    t.string "monday"
    t.string "tuesday"
    t.string "wednesday"
    t.string "thursday"
    t.string "friday"
    t.string "saturday"
    t.string "sunday"
  end

  create_table "comments", force: true do |t|
    t.integer "user_id"
    t.integer "trip_id"
    t.integer "stop_id"
    t.string  "capacity"
    t.string  "driver"
  end

  create_table "routes", force: true do |t|
    t.string "agency_id"
    t.string "short_name"
    t.string "long_name"
    t.string "route_type"
    t.string "text_color"
    t.string "color"
    t.string "url"
    t.string "desc"
  end

  create_table "shapes", id: false, force: true do |t|
    t.string "shape_id"
    t.string "pt_lat"
    t.string "pt_lon"
    t.string "pt_sequence"
    t.string "dist_traveled"
  end

  create_table "stop_times", id: false, force: true do |t|
    t.string "trip_id"
    t.string "arrival_time"
    t.string "departure_time"
    t.string "stop_id"
    t.string "stop_sequence"
    t.string "stop_headsign"
    t.string "pickup_type"
    t.string "drop_off_type"
    t.string "shape_dist_traveled"
  end

  create_table "stops", force: true do |t|
    t.string "zone_id"
    t.string "code"
    t.string "name"
    t.string "lat"
    t.string "lon"
    t.string "parent_station"
    t.string "url"
    t.string "desc"
    t.string "location_type"
    t.string "wheelchair_boarding"
  end

  create_table "trips", force: true do |t|
    t.string "block_id"
    t.string "route_id"
    t.string "direction_id"
    t.string "shape_id"
    t.string "service_id"
    t.string "headsign"
    t.string "short_name"
    t.string "wheelchair_boarding"
    t.string "bikes_allowed"
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end

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

ActiveRecord::Schema.define(version: 20141029053405) do

  create_table "crew_members", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "tel"
    t.text     "bio"
    t.boolean  "notifications"
    t.boolean  "confirmed"
    t.boolean  "available"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "trip_id"
  end

  create_table "races", force: true do |t|
    t.datetime "race_date"
    t.string   "race_name"
    t.string   "race_description"
    t.string   "race_location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trips", force: true do |t|
    t.string   "boat_name"
    t.string   "trip_organizer"
    t.string   "trip_description"
    t.integer  "trip_attendees"
    t.integer  "trip_attendee_limit"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "race_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                      default: "", null: false
    t.string   "encrypted_password",         default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",              default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "user_name"
    t.string   "telephone_no"
    t.string   "email_address"
    t.string   "user_bio"
    t.boolean  "future_race_notifications"
    t.string   "user_type"
    t.boolean  "automatic_race_invitations"
    t.integer  "crew_summary_days"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

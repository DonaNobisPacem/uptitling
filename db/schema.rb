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

ActiveRecord::Schema.define(version: 20150504044005) do

  create_table "static_pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "universities", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "univ_name",  limit: 255
    t.string   "image",      limit: 255
  end

  create_table "university_profiles", force: :cascade do |t|
    t.string   "classification",      limit: 255
    t.string   "description",         limit: 255
    t.string   "owner",               limit: 255
    t.decimal  "total_area_hectare",                precision: 16, scale: 2
    t.decimal  "total_area_meter",                  precision: 16, scale: 2
    t.string   "acquisition",         limit: 255
    t.string   "titling_status",      limit: 255
    t.datetime "date_issued"
    t.string   "tax_dec_no",          limit: 255
    t.text     "remarks",             limit: 65535
    t.text     "titling_step_eins",   limit: 65535
    t.text     "titling_step_zwei",   limit: 65535
    t.text     "titling_step_drei",   limit: 65535
    t.text     "titling_step_vier",   limit: 65535
    t.text     "titling_step_funf",   limit: 65535
    t.text     "titling_step_sechs",  limit: 65535
    t.text     "titling_step_sieben", limit: 65535
    t.text     "titling_step_acht",   limit: 65535
    t.text     "titling_step_neun",   limit: 65535
    t.text     "titling_step_zehn",   limit: 65535
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
    t.integer  "university_id",       limit: 4
  end

  add_index "university_profiles", ["university_id"], name: "index_university_profiles_on_university_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "approved",               limit: 1,   default: false
    t.boolean  "admin",                  limit: 1,   default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "university_profiles", "universities"
end

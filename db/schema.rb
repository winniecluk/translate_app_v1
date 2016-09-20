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

ActiveRecord::Schema.define(version: 20160920232524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bids", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.float    "budget"
    t.date     "delivery_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["project_id"], name: "index_bids_on_project_id", using: :btree
    t.index ["user_id"], name: "index_bids_on_user_id", using: :btree
  end

  create_table "clients", force: :cascade do |t|
    t.string   "company"
    t.string   "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "graphic_designers", force: :cascade do |t|
    t.float    "hourly_rate"
    t.boolean  "available"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "language_combinations", force: :cascade do |t|
    t.string   "language_1"
    t.string   "language_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.integer  "budget"
    t.date     "delivery_date"
    t.integer  "word_count"
    t.text     "special_request"
    t.text     "sample_text"
    t.boolean  "need_translator"
    t.boolean  "need_transcriber"
    t.boolean  "need_graphic_designer"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "kind"
    t.boolean  "assigned"
    t.boolean  "completed"
    t.integer  "user_id"
    t.string   "language_1"
    t.string   "language_2"
    t.index ["user_id"], name: "index_projects_on_user_id", using: :btree
  end

  create_table "transcribers", force: :cascade do |t|
    t.float    "rate_per_minute"
    t.float    "rate_per_work_hour"
    t.float    "rush_rate_per_minute"
    t.float    "minimum_rate"
    t.float    "rush_minimum"
    t.boolean  "available"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "translators", force: :cascade do |t|
    t.float    "rate_per_word"
    t.float    "minimum_rate"
    t.float    "rush_rate_per_word"
    t.float    "rush_minimum"
    t.string   "specialization"
    t.boolean  "ata_certified"
    t.boolean  "judicial_court"
    t.boolean  "trados"
    t.string   "trados_version"
    t.boolean  "available"
    t.float    "notary_fee"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "phone_number"
    t.string   "city"
    t.string   "zip_code",             limit: 10
    t.string   "country"
    t.string   "time_zone"
    t.text     "bio"
    t.string   "user_picture"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "web_link"
    t.string   "company"
    t.string   "position"
    t.float    "rate_per_word"
    t.float    "minimum_rate"
    t.float    "rush_rate_per_word"
    t.float    "rush_minimum"
    t.string   "specialization"
    t.boolean  "ata_certified"
    t.boolean  "judicial_court"
    t.boolean  "trados"
    t.string   "trados_version"
    t.boolean  "available"
    t.float    "notary_fee"
    t.float    "rate_per_minute"
    t.float    "rate_per_work_hour"
    t.float    "rush_rate_per_minute"
    t.boolean  "is_client"
    t.boolean  "is_translator"
    t.boolean  "is_transcriber"
    t.boolean  "is_graphic_designer"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "language_1"
    t.string   "language_2"
  end

  add_foreign_key "bids", "projects"
  add_foreign_key "bids", "users"
  add_foreign_key "projects", "users"
end

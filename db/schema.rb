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

ActiveRecord::Schema.define(version: 20160919215844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.string   "user_id"
    t.boolean  "need_translator"
    t.boolean  "need_transcriber"
    t.boolean  "need_graphic_designer"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "kind"
    t.boolean  "assigned"
    t.boolean  "completed"
  end

  create_table "users", force: :cascade do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "phone_number"
    t.string   "city"
    t.string   "zip_code",        limit: 10
    t.string   "country"
    t.string   "time_zone"
    t.text     "bio"
    t.string   "user_picture"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "job"
    t.string   "web_link"
  end

end

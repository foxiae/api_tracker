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

ActiveRecord::Schema.define(version: 20160811194648) do

  create_table "checkers", force: :cascade do |t|
    t.datetime "date"
    t.text     "check_body"
    t.integer  "tracker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tracker_id"], name: "index_checkers_on_tracker_id"
  end

  create_table "trackers", force: :cascade do |t|
    t.string   "api_name"
    t.string   "url"
    t.text     "notes"
    t.text     "url_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

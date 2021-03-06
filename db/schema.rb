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

ActiveRecord::Schema.define(version: 20170220144704) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "papers", force: :cascade do |t|
    t.string   "title_ja",    default: ""
    t.string   "title_en",    default: ""
    t.string   "lead_author"
    t.string   "co_author"
    t.text     "abstract",    default: ""
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                       null: false
    t.string   "password",                   null: false
    t.string   "grade",                      null: false
    t.string   "snum",                       null: false
    t.string   "account",                    null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "is_admin",   default: false
    t.index ["account"], name: "index_users_on_account", unique: true, using: :btree
    t.index ["snum"], name: "index_users_on_snum", unique: true, using: :btree
  end

end

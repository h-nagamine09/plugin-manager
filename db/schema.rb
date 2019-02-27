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

ActiveRecord::Schema.define(version: 20190226085150) do

  create_table "instrument_kinds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instruments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "instrument_name"
    t.string   "price"
    t.string   "company"
    t.string   "description"
    t.string   "content"
    t.string   "link_url"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "picture"
    t.integer  "instrument_kind_id"
    t.index ["instrument_kind_id"], name: "index_instruments_on_instrument_kind_id", using: :btree
  end

  create_table "plugin_kinds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plugins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "plugin_name"
    t.string   "price"
    t.string   "company"
    t.string   "description"
    t.string   "content"
    t.string   "link_url"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "picture"
    t.integer  "plugin_kind_id"
    t.index ["plugin_kind_id"], name: "index_plugins_on_plugin_kind_id", using: :btree
  end

  add_foreign_key "instruments", "instrument_kinds"
  add_foreign_key "plugins", "plugin_kinds"
end

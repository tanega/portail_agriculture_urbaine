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

ActiveRecord::Schema.define(version: 20150321163810) do

  create_table "collective_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "collective_types", ["name"], name: "index_collective_types_on_name", unique: true

  create_table "collectives", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.integer  "collective_type_id"
    t.string   "website"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "collectives", ["collective_type_id"], name: "index_collectives_on_collective_type_id"
  add_index "collectives", ["name"], name: "index_collectives_on_name", unique: true

  create_table "statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "statuses", ["name"], name: "index_statuses_on_name", unique: true

  create_table "sub_typologies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sub_typologies", ["name"], name: "index_sub_typologies_on_name", unique: true

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

  create_table "typologies", force: :cascade do |t|
    t.string   "name"
    t.integer  "subtypology_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "typologies", ["name"], name: "index_typologies_on_name", unique: true

end

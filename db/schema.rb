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

ActiveRecord::Schema.define(version: 20180917232923) do

  create_table "pacients", force: :cascade do |t|
    t.string   "name"
    t.string   "place_attendence"
    t.date     "birth_date"
    t.integer  "years_study"
    t.integer  "genre"
    t.integer  "marital_status"
    t.string   "phone"
    t.string   "address"
    t.string   "services_professional"
    t.text     "reason_meeting"
    t.string   "cpf"
    t.integer  "profession_id"
    t.integer  "service_access_id"
    t.integer  "ub_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "pacients", ["profession_id"], name: "index_pacients_on_profession_id"
  add_index "pacients", ["service_access_id"], name: "index_pacients_on_service_access_id"
  add_index "pacients", ["ub_id"], name: "index_pacients_on_ub_id"

  create_table "professions", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "service_accesses", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "type_sexes", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ubs", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end

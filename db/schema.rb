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

ActiveRecord::Schema.define(version: 20181015060754) do

  create_table "attendances", force: :cascade do |t|
    t.text     "general_screen"
    t.datetime "attendance_date"
    t.integer  "pacient_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "attendances", ["pacient_id"], name: "index_attendances_on_pacient_id"

  create_table "care_plans", force: :cascade do |t|
    t.string   "therapeutic_goal"
    t.string   "conduct"
    t.datetime "results_date"
    t.text     "anothers_conduct"
    t.integer  "pharmacotherapy_id"
    t.integer  "prm_id"
    t.integer  "sfc_id"
    t.integer  "prmCause_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "care_plans", ["pharmacotherapy_id"], name: "index_care_plans_on_pharmacotherapy_id"
  add_index "care_plans", ["prmCause_id"], name: "index_care_plans_on_prmCause_id"
  add_index "care_plans", ["prm_id"], name: "index_care_plans_on_prm_id"
  add_index "care_plans", ["sfc_id"], name: "index_care_plans_on_sfc_id"

  create_table "diseases", force: :cascade do |t|
    t.string   "name_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "names", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

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

  create_table "pharmacotherapies", force: :cascade do |t|
    t.string   "medicine"
    t.string   "dosageSchedule"
    t.string   "safety"
    t.string   "effectiveness"
    t.string   "useDificulty"
    t.integer  "timeUse"
    t.text     "carePlan"
    t.text     "descriptionDisease"
    t.integer  "treatment_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "pharmacotherapies", ["treatment_id"], name: "index_pharmacotherapies_on_treatment_id"

  create_table "prm_causes", force: :cascade do |t|
    t.string   "description"
    t.integer  "prm_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "prm_causes", ["prm_id"], name: "index_prm_causes_on_prm_id"

  create_table "prms", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

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

  create_table "sfcs", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "treatments", force: :cascade do |t|
    t.integer  "disease_id"
    t.integer  "attendance_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "treatments", ["attendance_id"], name: "index_treatments_on_attendance_id"
  add_index "treatments", ["disease_id"], name: "index_treatments_on_disease_id"

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

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "password"
    t.integer  "profile"
    t.integer  "name_id"
    t.integer  "password_id"
    t.integer  "email_id"
    t.integer  "profile_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_index "users", ["email_id"], name: "index_users_on_email_id"
  add_index "users", ["name_id"], name: "index_users_on_name_id"
  add_index "users", ["password_id"], name: "index_users_on_password_id"
  add_index "users", ["profile_id"], name: "index_users_on_profile_id"

end

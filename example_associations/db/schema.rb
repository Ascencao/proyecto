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

ActiveRecord::Schema.define(version: 20170428162811) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.integer  "physician_id"
    t.integer  "patient_id"
    t.string   "appointment_"
    t.date     "date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["patient_id"], name: "index_appointments_on_patient_id", using: :btree
    t.index ["physician_id"], name: "index_appointments_on_physician_id", using: :btree
  end

  create_table "birth_registries", force: :cascade do |t|
    t.string   "place"
    t.date     "registry_date"
    t.integer  "person_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["person_id"], name: "index_birth_registries_on_person_id", using: :btree
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.date     "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.string   "breed"
    t.integer  "kind"
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_pets_on_person_id", using: :btree
  end

  create_table "physicians", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appointments", "patients"
  add_foreign_key "appointments", "physicians"
  add_foreign_key "birth_registries", "people"
  add_foreign_key "pets", "people"
end

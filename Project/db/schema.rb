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

ActiveRecord::Schema.define(version: 20170502131941) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bls", force: :cascade do |t|
    t.integer  "travel_id"
    t.string   "code"
    t.integer  "master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "emisor_id"
    t.index ["emisor_id"], name: "index_bls_on_emisor_id", using: :btree
    t.index ["master_id"], name: "index_bls_on_master_id", using: :btree
    t.index ["travel_id"], name: "index_bls_on_travel_id", using: :btree
  end

  create_table "bls_containers", id: false, force: :cascade do |t|
    t.integer "bl_id",        null: false
    t.integer "container_id", null: false
    t.index ["bl_id"], name: "index_bls_containers_on_bl_id", using: :btree
    t.index ["container_id"], name: "index_bls_containers_on_container_id", using: :btree
  end

  create_table "consignees", force: :cascade do |t|
    t.string   "dni"
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consignees_nvoccs", id: false, force: :cascade do |t|
    t.integer "nvocc_id",     null: false
    t.integer "consignee_id", null: false
    t.index ["consignee_id"], name: "index_consignees_nvoccs_on_consignee_id", using: :btree
    t.index ["nvocc_id"], name: "index_consignees_nvoccs_on_nvocc_id", using: :btree
  end

  create_table "containers", force: :cascade do |t|
    t.integer  "type_of"
    t.integer  "size"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "containers_nvoccs", id: false, force: :cascade do |t|
    t.integer "nvocc_id",     null: false
    t.integer "container_id", null: false
    t.index ["container_id"], name: "index_containers_nvoccs_on_container_id", using: :btree
    t.index ["nvocc_id"], name: "index_containers_nvoccs_on_nvocc_id", using: :btree
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nvoccs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shipping_companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ships", force: :cascade do |t|
    t.string   "name"
    t.integer  "shipping_company_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["shipping_company_id"], name: "index_ships_on_shipping_company_id", using: :btree
  end

  create_table "travels", force: :cascade do |t|
    t.integer  "ship_id"
    t.date     "date"
    t.string   "code"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "origin_id"
    t.integer  "destiny_id"
    t.index ["destiny_id"], name: "index_travels_on_destiny_id", using: :btree
    t.index ["origin_id"], name: "index_travels_on_origin_id", using: :btree
    t.index ["ship_id"], name: "index_travels_on_ship_id", using: :btree
  end

  add_foreign_key "bls", "travels"
  add_foreign_key "ships", "shipping_companies"
  add_foreign_key "travels", "ships"
end

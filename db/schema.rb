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

ActiveRecord::Schema.define(version: 2019_02_05_153726) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "duers", force: :cascade do |t|
    t.string "name"
    t.string "activity"
    t.string "address"
    t.integer "effective"
    t.text "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "risks", force: :cascade do |t|
    t.string "name"
    t.bigint "workunit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workunit_id"], name: "index_risks_on_workunit_id"
  end

  create_table "underrisks", force: :cascade do |t|
    t.string "name"
    t.string "frequency_score"
    t.string "gravity_score"
    t.string "mastery_score"
    t.string "mesure_prevention_to_predict"
    t.string "existing_mesure_prevention"
    t.string "date"
    t.string "responsable"
    t.bigint "risk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["risk_id"], name: "index_underrisks_on_risk_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workunits", force: :cascade do |t|
    t.string "name"
    t.bigint "duer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["duer_id"], name: "index_workunits_on_duer_id"
  end

  add_foreign_key "risks", "workunits"
  add_foreign_key "underrisks", "risks"
  add_foreign_key "workunits", "duers"
end

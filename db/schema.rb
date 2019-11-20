# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_11_203104) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "christmasevenings", force: :cascade do |t|
    t.bigint "year_id"
    t.bigint "giver_id"
    t.bigint "receiver_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["giver_id"], name: "index_christmasevenings_on_giver_id"
    t.index ["receiver_id"], name: "index_christmasevenings_on_receiver_id"
    t.index ["year_id"], name: "index_christmasevenings_on_year_id"
  end

  create_table "participants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_participants_on_name", unique: true
  end

  create_table "years", force: :cascade do |t|
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["year"], name: "index_years_on_year", unique: true
  end

end

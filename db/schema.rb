# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_15_062416) do
  create_table "appointments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "physical_therapist_id"
    t.string "claim"
    t.boolean "home_visit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "physical_therapists", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "profile_picture"
    t.string "clinic_address"
    t.string "specialization"
    t.string "title"
    t.string "insurances"
    t.boolean "home_visits"
    t.text "about_me"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "state"
    t.string "city"
    t.string "DOB"
    t.string "insurer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
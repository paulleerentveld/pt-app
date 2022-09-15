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

ActiveRecord::Schema.define(version: 2022_09_14_024505) do

  create_table "clients", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.integer "mobile"
    t.string "sex"
    t.integer "weight"
    t.integer "height"
    t.date "dob"
    t.integer "instructor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_clients_on_email", unique: true
    t.index ["instructor_id"], name: "index_clients_on_instructor_id"
    t.index ["mobile"], name: "index_clients_on_mobile", unique: true
  end

  create_table "clients_workouts", id: false, force: :cascade do |t|
    t.integer "workout_id", null: false
    t.integer "client_id", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "image"
    t.text "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_exercises_on_name", unique: true
  end

  create_table "exercises_workouts", id: false, force: :cascade do |t|
    t.integer "exercise_id", null: false
    t.integer "workout_id", null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.integer "mobile"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_instructors_on_email", unique: true
    t.index ["mobile"], name: "index_instructors_on_mobile", unique: true
  end

  create_table "workouts", force: :cascade do |t|
    t.string "type"
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "clients", "instructors"
end

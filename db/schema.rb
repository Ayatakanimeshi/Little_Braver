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

ActiveRecord::Schema[7.0].define(version: 2024_01_20_091014) do
  create_table "bravers", force: :cascade do |t|
    t.string "name", null: false
    t.integer "personality"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bravers_on_user_id"
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name", null: false
    t.integer "rarity", null: false
    t.string "image", null: false
    t.integer "braver_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["braver_id"], name: "index_equipment_on_braver_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name", null: false
    t.integer "rarity", null: false
    t.string "image", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parameters", force: :cascade do |t|
    t.integer "atk", null: false
    t.integer "def", null: false
    t.integer "spd", null: false
    t.integer "hp", null: false
    t.integer "int", null: false
    t.integer "mp", null: false
    t.integer "braver_id", null: false
    t.integer "food_id"
    t.integer "equipment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["braver_id"], name: "index_parameters_on_braver_id"
    t.index ["equipment_id"], name: "index_parameters_on_equipment_id"
    t.index ["food_id"], name: "index_parameters_on_food_id"
  end

  create_table "scenes", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bravers", "users"
  add_foreign_key "equipment", "bravers"
  add_foreign_key "parameters", "bravers"
  add_foreign_key "parameters", "equipment"
  add_foreign_key "parameters", "foods"
end

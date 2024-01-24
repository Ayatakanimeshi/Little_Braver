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

ActiveRecord::Schema[7.0].define(version: 2024_01_23_115244) do
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "atk"
    t.integer "def"
    t.integer "spd"
    t.integer "hp"
    t.integer "int"
    t.integer "mp"
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
    t.integer "braver_id"
    t.index ["braver_id"], name: "index_scenes_on_braver_id"
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bravers", "users"
  add_foreign_key "equipment", "bravers"
  add_foreign_key "parameters", "bravers"
  add_foreign_key "parameters", "equipment"
  add_foreign_key "parameters", "foods"
  add_foreign_key "scenes", "bravers"
end

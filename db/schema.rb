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

ActiveRecord::Schema[7.0].define(version: 2023_07_17_034831) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.string "title", default: "", null: false
    t.text "body", default: "", null: false
    t.string "contact", default: "", null: false
    t.string "location", default: "", null: false
    t.string "category", default: "", null: false
    t.string "status", default: "", null: false
    t.string "value", default: "", null: false
    t.string "km", default: "", null: false
    t.string "year", default: "", null: false
    t.string "color", default: "", null: false
    t.string "gear", default: "", null: false
    t.string "brand", default: "", null: false
    t.string "model", default: "", null: false
    t.string "version", default: "", null: false
    t.string "fuel", default: "", null: false
    t.text "description", default: "", null: false
    t.string "rank", default: "", null: false
    t.string "detail", default: "", null: false
    t.string "payment_type", default: "", null: false
    t.string "delivery", default: "", null: false
    t.string "warranty", default: "", null: false
    t.string "plate", default: "", null: false
    t.string "shaken", default: "", null: false
    t.string "shaken_until", default: "", null: false
    t.string "service_type", default: "", null: false
    t.string "service_category", default: "", null: false
    t.string "service_status", default: "", null: false
    t.string "service_value", default: "", null: false
    t.string "service_title", default: "", null: false
    t.string "service_contact", default: "", null: false
    t.string "service_location", default: "", null: false
    t.string "service_address", default: "", null: false
    t.string "service_phone", default: "", null: false
    t.text "service_body", default: "", null: false
    t.string "service_rank", default: "", null: false
    t.string "service_detail", default: "", null: false
    t.string "service_payment_type", default: "", null: false
    t.string "service_delivery", default: "", null: false
    t.string "service_warranty", default: "", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "is_user", default: false, null: false
    t.boolean "is_garage", default: false, null: false
    t.boolean "is_service", default: false, null: false
    t.boolean "is_admin", default: false, null: false
    t.string "name", default: "", null: false
    t.string "username", default: "", null: false
    t.string "bio", default: "", null: false
    t.string "location", default: "", null: false
    t.string "website", default: "", null: false
    t.string "role", default: "", null: false
    t.string "status", default: "", null: false
    t.string "phone", default: "", null: false
    t.string "mobile_phone", default: "", null: false
    t.string "whatsapp", default: "", null: false
    t.string "garage_name", default: "", null: false
    t.string "garage_bio", default: "", null: false
    t.string "garage_address", default: "", null: false
    t.string "garage_city", default: "", null: false
    t.string "garage_state", default: "", null: false
    t.string "garage_zip", default: "", null: false
    t.string "garage_phone", default: "", null: false
    t.string "garage_mobile_phone", default: "", null: false
    t.string "garage_whatsapp", default: "", null: false
    t.string "garage_website", default: "", null: false
    t.string "garage_email", default: "", null: false
    t.string "garage_hours", default: "", null: false
    t.string "garage_services", default: "", null: false
    t.string "garage_certifications", default: "", null: false
    t.string "garage_payment_options", default: "", null: false
    t.string "service_name", default: "", null: false
    t.string "service_bio", default: "", null: false
    t.string "service_address", default: "", null: false
    t.string "service_city", default: "", null: false
    t.string "service_state", default: "", null: false
    t.string "service_zip", default: "", null: false
    t.string "service_phone", default: "", null: false
    t.string "service_mobile_phone", default: "", null: false
    t.string "service_whatsapp", default: "", null: false
    t.string "service_website", default: "", null: false
    t.string "service_email", default: "", null: false
    t.string "service_hours", default: "", null: false
    t.string "service_services", default: "", null: false
    t.string "service_certifications", default: "", null: false
    t.string "service_payment_options", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "posts", "users"
end

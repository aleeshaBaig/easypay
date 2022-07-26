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

ActiveRecord::Schema[7.0].define(version: 2022_07_26_112906) do
  create_table "bills", force: :cascade do |t|
    t.decimal "amount"
    t.decimal "late_fee"
    t.date "reading_date"
    t.date "issuance_date"
    t.date "due_date"
    t.integer "status"
    t.integer "user_id", null: false
    t.integer "utility_bill_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "billing_month"
    t.index ["user_id"], name: "index_bills_on_user_id"
    t.index ["utility_bill_id"], name: "index_bills_on_utility_bill_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.integer "utility_bill_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["utility_bill_category_id"], name: "index_companies_on_utility_bill_category_id"
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

  create_table "utility_bill_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "utility_bills", force: :cascade do |t|
    t.integer "consumer_id"
    t.integer "expected_reading_day"
    t.integer "expected_issuance_day"
    t.integer "expected_due_day"
    t.integer "user_id", null: false
    t.integer "utility_bill_category_id", null: false
    t.integer "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category"
    t.string "company"
    t.string "focal_person"
    t.string "customer_name"
    t.string "customer_id"
    t.index ["company_id"], name: "index_utility_bills_on_company_id"
    t.index ["user_id"], name: "index_utility_bills_on_user_id"
    t.index ["utility_bill_category_id"], name: "index_utility_bills_on_utility_bill_category_id"
  end

  add_foreign_key "bills", "users"
  add_foreign_key "bills", "utility_bills"
  add_foreign_key "companies", "utility_bill_categories"
  add_foreign_key "utility_bills", "companies"
  add_foreign_key "utility_bills", "users"
  add_foreign_key "utility_bills", "utility_bill_categories"
end

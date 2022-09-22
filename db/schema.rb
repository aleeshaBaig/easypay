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

ActiveRecord::Schema[7.0].define(version: 2022_09_22_060219) do
  create_table "additional_informations", force: :cascade do |t|
    t.string "place_of_birth"
    t.string "domicile"
    t.string "nationality"
    t.string "passport_number"
    t.string "blood_group"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_additional_informations_on_user_id"
  end

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
    t.string "file"
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

  create_table "contact_informations", force: :cascade do |t|
    t.integer "mobile"
    t.integer "residence_phone"
    t.string "coordinator"
    t.string "personal_email"
    t.string "email_offical"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_contact_informations_on_user_id"
  end

  create_table "dependents", force: :cascade do |t|
    t.string "name"
    t.string "relation"
    t.string "phone"
    t.string "mobile"
    t.date "date_of_birth"
    t.string "contact_number"
    t.string "address"
    t.string "cnic"
    t.string "nationality"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_dependents_on_user_id"
  end

  create_table "educations", force: :cascade do |t|
    t.string "title"
    t.string "major"
    t.string "institute"
    t.date "date"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_educations_on_user_id"
  end

  create_table "emergency_contacts", force: :cascade do |t|
    t.string "emergency_contact_name"
    t.string "emergency_contact_relation"
    t.string "emergency_contact_mobile"
    t.string "residence_address"
    t.string "permanent_address"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_emergency_contacts_on_user_id"
  end

  create_table "personal_informations", force: :cascade do |t|
    t.string "image"
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.integer "marital_status"
    t.integer "religion"
    t.string "cnic"
    t.string "project"
    t.string "department"
    t.integer "employment_type"
    t.integer "employee_code"
    t.string "designation"
    t.date "date_of_joining"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_personal_informations_on_user_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at", precision: nil
    t.string "tenant", limit: 128
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "taggings_taggable_context_idx"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type", "taggable_id"], name: "index_taggings_on_taggable_type_and_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
    t.index ["tagger_type", "tagger_id"], name: "index_taggings_on_tagger_type_and_tagger_id"
    t.index ["tenant"], name: "index_taggings_on_tenant"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
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
    t.string "consumer_id"
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
    t.string "nickname"
    t.index ["company_id"], name: "index_utility_bills_on_company_id"
    t.index ["user_id"], name: "index_utility_bills_on_user_id"
    t.index ["utility_bill_category_id"], name: "index_utility_bills_on_utility_bill_category_id"
  end

  add_foreign_key "additional_informations", "users"
  add_foreign_key "bills", "users"
  add_foreign_key "bills", "utility_bills"
  add_foreign_key "companies", "utility_bill_categories"
  add_foreign_key "contact_informations", "users"
  add_foreign_key "dependents", "users"
  add_foreign_key "educations", "users"
  add_foreign_key "emergency_contacts", "users"
  add_foreign_key "personal_informations", "users"
  add_foreign_key "taggings", "tags"
  add_foreign_key "utility_bills", "companies"
  add_foreign_key "utility_bills", "users"
  add_foreign_key "utility_bills", "utility_bill_categories"
end

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

ActiveRecord::Schema.define(version: 20170717235131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accessorizations", force: :cascade do |t|
    t.integer "project_id"
    t.integer "user_id"
    t.integer "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id", "user_id"], name: "index_accessorizations_on_project_id_and_user_id", unique: true
    t.index ["project_id"], name: "index_accessorizations_on_project_id"
    t.index ["role_id"], name: "index_accessorizations_on_role_id"
    t.index ["user_id", "project_id"], name: "index_accessorizations_on_user_id_and_project_id", unique: true
    t.index ["user_id"], name: "index_accessorizations_on_user_id"
  end

  create_table "attachments", force: :cascade do |t|
    t.string "attachmenable_type"
    t.bigint "attachmenable_id"
    t.string "attached_file"
    t.string "file_content_type"
    t.string "file_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attachmenable_type", "attachmenable_id"], name: "index_attachments_on_attachmenable_type_and_attachmenable_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.text "note", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_customers_on_name"
  end

  create_table "points", force: :cascade do |t|
    t.bigint "project_id"
    t.date "load_date"
    t.string "load_file"
    t.integer "status"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_points_on_project_id"
  end

  create_table "project_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_project_statuses_on_name"
  end

  create_table "projects", force: :cascade do |t|
    t.string "number"
    t.text "note", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "project_status_id"
    t.bigint "customer_id"
    t.index ["customer_id"], name: "index_projects_on_customer_id"
    t.index ["number"], name: "index_projects_on_number"
    t.index ["project_status_id"], name: "index_projects_on_project_status_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.boolean "special", default: false, null: false
    t.string "activities", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "note", default: ""
    t.index ["special"], name: "index_roles_on_special"
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.integer "role_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id", "user_id"], name: "index_roles_users_on_role_id_and_user_id", unique: true
    t.index ["user_id", "role_id"], name: "index_roles_users_on_user_id_and_role_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "name", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "note", default: ""
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "points", "projects"
  add_foreign_key "projects", "customers"
  add_foreign_key "projects", "project_statuses"
end

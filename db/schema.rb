
ActiveRecord::Schema.define(version: 20150509194019) do

  create_table "clothes", force: :cascade do |t|
    t.integer  "inventroy_id"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "clothes", ["inventroy_id"], name: "index_clothes_on_inventroy_id"

  create_table "inventories", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "inventories", ["user_id"], name: "index_inventories_on_user_id"

  create_table "occasions", force: :cascade do |t|
    t.integer  "clothes_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "occasions", ["clothes_id"], name: "index_occasions_on_clothes_id"

  create_table "seasons", force: :cascade do |t|
    t.integer  "clothes_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "seasons", ["clothes_id"], name: "index_seasons_on_clothes_id"

  create_table "types", force: :cascade do |t|
    t.integer  "clothes_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "types", ["clothes_id"], name: "index_types_on_clothes_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

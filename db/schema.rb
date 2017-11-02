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

ActiveRecord::Schema.define(version: 20171102145830) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advertisements", force: :cascade do |t|
    t.string "tittle"
    t.text "description"
    t.integer "amount"
    t.string "imagen"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_advertisements_on_user_id"
  end

  create_table "apartments", force: :cascade do |t|
    t.string "number"
    t.string "block"
    t.string "parking_lots"
    t.string "bikes_parking"
    t.string "storage"
    t.float "coefficient"
    t.bigint "werehouse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["werehouse_id"], name: "index_apartments_on_werehouse_id"
  end

  create_table "chats", force: :cascade do |t|
    t.text "comment"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_chats_on_user_id"
  end

  create_table "children", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.date "day_of_birth"
    t.string "gender"
    t.bigint "apartment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apartment_id"], name: "index_children_on_apartment_id"
  end

  create_table "common_areas", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.time "start_hour"
    t.time "end_hour"
    t.boolean "aproved", default: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_common_areas_on_user_id"
  end

  create_table "complaints", force: :cascade do |t|
    t.string "category"
    t.text "description"
    t.text "answer"
    t.boolean "solved"
    t.bigint "apartment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "topic"
    t.string "imagen"
    t.index ["apartment_id"], name: "index_complaints_on_apartment_id"
  end

  create_table "decisions", force: :cascade do |t|
    t.string "tittle"
    t.text "description"
    t.float "positive_coefficient", default: 0.0
    t.float "negative_coefficient", default: 0.0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hobbies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "newsletters", force: :cascade do |t|
    t.string "tittle"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "order_id"
    t.integer "unit_price"
    t.integer "quantity"
    t.integer "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["product_id"], name: "index_order_items_on_product_id"
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "total"
    t.bigint "order_status_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_status_id"], name: "index_orders_on_order_status_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "breed"
    t.string "name"
    t.bigint "apartment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apartment_id"], name: "index_pets_on_apartment_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "units"
    t.bigint "store_id"
    t.index ["store_id"], name: "index_products_on_store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_stores_on_user_id"
  end

  create_table "user_hobbies", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "hobby_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hobby_id"], name: "index_user_hobbies_on_hobby_id"
    t.index ["user_id"], name: "index_user_hobbies_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "last_name"
    t.string "gender"
    t.string "document_type"
    t.integer "document_id"
    t.string "cellphone"
    t.date "day_of_birth"
    t.string "profession"
    t.boolean "offer_services", default: false
    t.string "hobbies_id"
    t.boolean "owner", default: false
    t.boolean "active", default: false
    t.boolean "admin", default: false
    t.integer "apartment_id"
    t.string "token"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "category"
    t.string "plate"
    t.string "brand"
    t.bigint "apartment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apartment_id"], name: "index_vehicles_on_apartment_id"
  end

  create_table "votes", force: :cascade do |t|
    t.string "votable_type"
    t.bigint "votable_id"
    t.string "voter_type"
    t.bigint "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["votable_type", "votable_id"], name: "index_votes_on_votable_type_and_votable_id"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
    t.index ["voter_type", "voter_id"], name: "index_votes_on_voter_type_and_voter_id"
  end

  create_table "werehouses", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "shift"
    t.integer "document_id"
    t.string "ARL"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "apartment_id"
  end

  create_table "workers", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "ARL"
    t.string "role"
    t.text "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "advertisements", "users"
  add_foreign_key "apartments", "werehouses"
  add_foreign_key "chats", "users"
  add_foreign_key "children", "apartments"
  add_foreign_key "common_areas", "users"
  add_foreign_key "complaints", "apartments"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "products"
  add_foreign_key "orders", "order_statuses"
  add_foreign_key "orders", "users"
  add_foreign_key "pets", "apartments"
  add_foreign_key "stores", "users"
  add_foreign_key "user_hobbies", "hobbies"
  add_foreign_key "user_hobbies", "users"
  add_foreign_key "vehicles", "apartments"
end

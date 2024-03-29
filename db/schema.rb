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

ActiveRecord::Schema.define(version: 2021_05_23_085412) do

  create_table "bag_items", force: :cascade do |t|
    t.string "color"
    t.string "size"
    t.integer "quantity"
    t.integer "bag_id"
    t.integer "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bag_id"], name: "index_bag_items_on_bag_id"
    t.index ["item_id"], name: "index_bag_items_on_item_id"
  end

  create_table "bags", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_bags_on_user_id"
  end

  create_table "bypass_password_instances", force: :cascade do |t|
    t.integer "userId"
    t.string "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "saved_list_id"
    t.float "price"
    t.string "name"
    t.string "description"
    t.string "image"
    t.integer "popularity"
    t.string "collection"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color1"
    t.string "color2"
    t.string "color3"
    t.boolean "small"
    t.boolean "medium"
    t.boolean "large"
    t.string "keyword"
    t.integer "purchase_count"
    t.integer "sl_count"
    t.index ["saved_list_id"], name: "index_items_on_saved_list_id"
  end

  create_table "items_saved_lists", id: false, force: :cascade do |t|
    t.integer "saved_list_id", null: false
    t.integer "item_id", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saved_lists", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_saved_lists_on_user_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "first_checkout"
    t.boolean "is_admin"
  end

end

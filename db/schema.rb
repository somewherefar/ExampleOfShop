# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141224200402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
  end

  add_index "accounts", ["customer_id"], name: "index_accounts_on_customer_id", using: :btree

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "full_name"
    t.string   "email"
    t.string   "password"
    t.text     "address"
    t.string   "telephone"
  end

  create_table "goods", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.float    "buy_price"
    t.integer  "category_id"
  end

  add_index "goods", ["category_id"], name: "index_goods_on_category_id", using: :btree

  create_table "orders", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
    t.float    "total_price"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree

  create_table "purchased_goods", force: true do |t|
    t.integer  "order_id"
    t.integer  "good_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "purchased_goods", ["good_id"], name: "index_purchased_goods_on_good_id", using: :btree
  add_index "purchased_goods", ["order_id"], name: "index_purchased_goods_on_order_id", using: :btree

  create_table "suppliers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wish_goods", force: true do |t|
    t.integer  "wish_id"
    t.integer  "good_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wish_goods", ["good_id"], name: "index_wish_goods_on_good_id", using: :btree
  add_index "wish_goods", ["wish_id"], name: "index_wish_goods_on_wish_id", using: :btree

  create_table "wishes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

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

ActiveRecord::Schema.define(version: 202002230809490) do

  create_table "buyers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "buyer_name", null: false
    t.string   "tel_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "product_name", limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "staff_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "storage_locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "storage_location_name"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "trades", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "date"
    t.integer  "buyer_id"
    t.integer  "product_id"
    t.string   "price"
    t.integer  "staff_id"
    t.string   "payment_date"
    t.string   "delivery_date"
    t.integer  "storage_location_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["buyer_id"], name: "index_trades_on_buyer_id", using: :btree
    t.index ["product_id"], name: "index_trades_on_product_id", using: :btree
    t.index ["staff_id"], name: "index_trades_on_staff_id", using: :btree
    t.index ["storage_location_id"], name: "index_trades_on_storage_location_id", using: :btree
  end

  add_foreign_key "trades", "buyers"
  add_foreign_key "trades", "products"
  add_foreign_key "trades", "staffs"
  add_foreign_key "trades", "storage_locations"
end

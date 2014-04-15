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

ActiveRecord::Schema.define(version: 20140414223552) do

  create_table "billing_addresses", force: true do |t|
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "payment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "receiver"
  end

  create_table "customers", force: true do |t|
    t.string   "account_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "password"
    t.string   "uuid"
  end

  create_table "discount_rules", force: true do |t|
    t.string   "rules"
    t.integer  "percentage_rate"
    t.float    "fixed_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guests", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "guests", ["customer_id"], name: "index_guests_on_customer_id", using: :btree

  create_table "occupancies", force: true do |t|
    t.integer  "room_id"
    t.integer  "visit_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.integer  "customer_id"
    t.integer  "visit_id"
    t.string   "method"
    t.string   "credit_card_no"
    t.boolean  "paid"
    t.datetime "paid_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uuid"
    t.float    "price"
    t.string   "name_on_card"
  end

  add_index "payments", ["customer_id"], name: "index_payments_on_customer_id", using: :btree
  add_index "payments", ["visit_id"], name: "index_payments_on_visit_id", using: :btree

  create_table "room_types", force: true do |t|
    t.string   "name"
    t.string   "bed_type"
    t.float    "base_rate"
    t.boolean  "non_smoking"
    t.boolean  "pets_welcome"
    t.boolean  "family_welcome"
    t.integer  "beds"
    t.text     "tags"
    t.integer  "capacity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "photo_url"
  end

  create_table "rooms", force: true do |t|
    t.string   "room_number"
    t.integer  "room_type_id"
    t.string   "bed_type"
    t.float    "base_rate"
    t.boolean  "non_smoking"
    t.boolean  "pets_welcome"
    t.boolean  "family_welcome"
    t.integer  "beds"
    t.text     "tags"
    t.integer  "capacity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "photo_url"
  end

  add_index "rooms", ["room_type_id"], name: "index_rooms_on_room_type_id", using: :btree

  create_table "visits", force: true do |t|
    t.integer  "customer_id"
    t.integer  "people"
    t.datetime "should_checkin_at"
    t.datetime "should_checkout_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "checkin"
    t.date     "checkout"
    t.integer  "days"
    t.float    "rate"
    t.integer  "room_id"
  end

  add_index "visits", ["customer_id"], name: "index_visits_on_customer_id", using: :btree

end

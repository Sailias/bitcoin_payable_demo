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

ActiveRecord::Schema.define(version: 20170920024713) do

  create_table "bitcoin_payment_transactions", force: :cascade do |t|
    t.integer "estimated_value"
    t.string "transaction_hash"
    t.string "block_hash"
    t.datetime "block_time"
    t.datetime "estimated_time"
    t.integer "bitcoin_payment_id"
    t.integer "btc_conversion"
    t.index ["bitcoin_payment_id"], name: "index_bitcoin_payment_transactions_on_bitcoin_payment_id"
  end

  create_table "bitcoin_payments", force: :cascade do |t|
    t.string "payable_type"
    t.integer "payable_id"
    t.string "currency"
    t.string "reason"
    t.integer "price"
    t.float "btc_amount_due", default: 0.0
    t.string "address"
    t.string "state", default: "pending"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "btc_conversion"
    t.index ["payable_type", "payable_id"], name: "index_bitcoin_payments_on_payable_type_and_payable_id"
  end

  create_table "currency_conversions", force: :cascade do |t|
    t.float "currency"
    t.integer "btc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "donations", force: :cascade do |t|
    t.float "amount"
    t.string "status", default: "pending"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

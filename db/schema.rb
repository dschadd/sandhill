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

ActiveRecord::Schema.define(version: 2018_12_06_014853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "ticker"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_follows", force: :cascade do |t|
    t.integer "user_id"
    t.integer "company_id"
    t.boolean "follow"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_portfolios", force: :cascade do |t|
    t.integer "company_id"
    t.integer "user_id"
    t.integer "portfolio_id"
    t.integer "shares"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "purchase_price"
  end

  create_table "crypto_follows", force: :cascade do |t|
    t.integer "user_id"
    t.integer "crypto_id"
    t.boolean "follow"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crypto_portfolios", force: :cascade do |t|
    t.integer "crypto_id"
    t.integer "user_id"
    t.integer "portfolio_id"
    t.decimal "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "purchase_price"
  end

  create_table "cryptos", force: :cascade do |t|
    t.string "name"
    t.string "ticker"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "portfolios", force: :cascade do |t|
    t.integer "user_id"
    t.boolean "private"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "initial_cash"
    t.integer "current_cash"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end

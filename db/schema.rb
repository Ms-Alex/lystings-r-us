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

ActiveRecord::Schema.define(version: 2018_07_09_202228) do

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "listings", force: :cascade do |t|
    t.integer "realtor_id"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "price"
    t.text "description"
    t.string "availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["realtor_id"], name: "index_listings_on_realtor_id"
  end

  create_table "realtors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password"
    t.string "firm"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "listing_id"
    t.integer "user_id"
    t.string "title"
    t.text "content"
    t.string "noise_level"
    t.integer "location"
    t.integer "cleanlines"
    t.integer "communication"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_reviews_on_listing_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
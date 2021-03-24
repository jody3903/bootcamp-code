# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_17_222146) do

  create_table "albums", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "artist_name"
  end

  create_table "cars", force: :cascade do |t|
    t.string "make"
    t.string "model"
  end

  create_table "chats", force: :cascade do |t|
    t.string "topic"
  end

  create_table "comments", force: :cascade do |t|
    t.string "body"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "comment"
    t.integer "chat_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.integer "age"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.integer "restaurant_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "comment"
    t.integer "restaurant_id"
  end

  create_table "songs", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "album_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

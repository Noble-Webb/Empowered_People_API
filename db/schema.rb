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

ActiveRecord::Schema.define(version: 2021_01_22_173939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "text"
    t.string "author"
    t.bigint "post_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "extinct_animals", force: :cascade do |t|
    t.string "kingdom"
    t.string "phylum"
    t.string "class"
    t.string "order"
    t.string "suborder"
    t.string "family"
    t.string "subfamily"
    t.string "genus"
    t.string "species"
    t.string "range"
    t.string "extinction_date"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mammals", force: :cascade do |t|
    t.string "common_name"
    t.string "url"
    t.string "kingdom"
    t.string "phylum"
    t.string "scientific_class"
    t.string "order"
    t.string "family"
    t.string "genus"
    t.string "species"
    t.string "description"
    t.string "extinction_date_BCE"
    t.string "range"
  end

  create_table "maps", force: :cascade do |t|
    t.text "tiles"
    t.text "entities"
    t.text "exits"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "author"
    t.string "title"
    t.string "content"
    t.integer "upvote"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "password_digest"
    t.string "profile_pic"
    t.string "family"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "map_suggestion"
  end

  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "posts", "users"
end

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

ActiveRecord::Schema.define(version: 20171003142031) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "items_id"
    t.index ["items_id"], name: "index_ingredients_on_items_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items_recipes", id: false, force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "item_id", null: false
    t.index ["recipe_id", "item_id"], name: "index_items_recipes_on_recipe_id_and_item_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title"
    t.string "duration"
    t.text "description"
    t.text "steps"
    t.string "url"
    t.string "video"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

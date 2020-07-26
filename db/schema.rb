# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_26_181345) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "project_id"
    t.string "email"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "folders", force: :cascade do |t|
    t.string "name"
    t.text "description"
  end

  create_table "hotspots", force: :cascade do |t|
    t.integer "image_id"
    t.text "description"
    t.integer "xpos"
    t.integer "ypos"
  end

  create_table "images", force: :cascade do |t|
    t.string "src_url"
    t.integer "project_id"
    t.text "description"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "thumbnail_url"
    t.string "github_url"
    t.integer "category_id"
    t.integer "folder_id"
    t.datetime "published_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pt_joins", force: :cascade do |t|
    t.integer "project_id"
    t.integer "tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
  end

end

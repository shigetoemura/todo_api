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

ActiveRecord::Schema.define(version: 2020_01_16_150721) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "user_images", force: :cascade do |t|
    t.bigint "user_id"
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_images_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.integer "todo", default: 60
    t.string "area"
    t.string "organization"
    t.string "intro"
    t.integer "birthday"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "token"
    t.string "password_digest"
  end

  add_foreign_key "user_images", "users"
end

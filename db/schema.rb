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

ActiveRecord::Schema.define(version: 2021_04_27_090224) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "organisation"
    t.string "typologies"
    t.string "theme"
    t.string "partners"
    t.string "donors"
    t.string "countries"
    t.string "tool_id"
  end

  create_table "countries_tools", id: false, force: :cascade do |t|
    t.bigint "country_id", null: false
    t.bigint "tool_id", null: false
  end

  create_table "tools_typologies", id: false, force: :cascade do |t|
    t.bigint "typology_id", null: false
    t.bigint "tool_id", null: false
  end

  create_table "partners_tools", id: false, force: :cascade do |t|
    t.bigint "partner_id", null: false
    t.bigint "tool_id", null: false
  end

  create_table "donors_tools", id: false, force: :cascade do |t|
    t.bigint "donor_id", null: false
    t.bigint "tool_id", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "typologies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "partners", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "donors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

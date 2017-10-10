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

ActiveRecord::Schema.define(version: 20171008205542) do

  create_table "classifications", force: :cascade do |t|
    t.string "classification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contributions", force: :cascade do |t|
    t.integer "school"
    t.decimal "school_value"
    t.decimal "school_sum"
    t.integer "congress"
    t.decimal "congress_value"
    t.decimal "congress_sum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "person_id"
    t.index ["person_id"], name: "index_contributions_on_person_id"
  end

  create_table "goals", force: :cascade do |t|
    t.integer "quota"
    t.decimal "quota_value"
    t.integer "journal"
    t.decimal "journal_value"
    t.integer "first_campaign"
    t.decimal "first_campaign_value"
    t.integer "second_campaign"
    t.decimal "second_campaign_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "person_id"
    t.index ["person_id"], name: "index_goals_on_person_id"
  end

  create_table "links", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "mail"
    t.text "address"
    t.date "came_in"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "classification_id"
    t.index ["classification_id"], name: "index_people_on_classification_id"
  end

  create_table "signatures", force: :cascade do |t|
    t.date "signature_date"
    t.integer "editions"
    t.integer "initial_edition"
    t.integer "final_edition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "person_id"
    t.index ["person_id"], name: "index_signatures_on_person_id"
  end

end

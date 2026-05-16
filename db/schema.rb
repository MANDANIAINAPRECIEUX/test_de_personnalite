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

ActiveRecord::Schema[8.1].define(version: 2026_05_16_205528) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "choices", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.string "disc_type"
    t.bigint "question_id", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_choices_on_question_id"
  end

  create_table "personality_profiles", force: :cascade do |t|
    t.text "advice"
    t.text "careers"
    t.string "code"
    t.datetime "created_at", null: false
    t.text "description"
    t.string "name"
    t.text "strengths"
    t.datetime "updated_at", null: false
    t.text "weaknesses"
  end

  create_table "questions", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.integer "position"
    t.datetime "updated_at", null: false
  end

  create_table "test_results", force: :cascade do |t|
    t.integer "conscientious_score"
    t.datetime "created_at", null: false
    t.integer "dominant_score"
    t.integer "influent_score"
    t.string "primary_type"
    t.string "profile_code"
    t.string "secondary_type"
    t.integer "stable_score"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "choices", "questions"
end

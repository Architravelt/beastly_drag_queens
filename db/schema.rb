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

ActiveRecord::Schema.define(version: 2022_02_10_083520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string "answer"
    t.string "letter"
    t.bigint "question_id", null: false
    t.bigint "quiz_id", null: false
    t.bigint "result_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["quiz_id"], name: "index_answers_on_quiz_id"
    t.index ["result_id"], name: "index_answers_on_result_id"
  end

  create_table "beasts", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "explanation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.bigint "quiz_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["quiz_id"], name: "index_questions_on_quiz_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "results", force: :cascade do |t|
    t.string "title"
    t.bigint "beast_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["beast_id"], name: "index_results_on_beast_id"
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "quizzes"
  add_foreign_key "answers", "results"
  add_foreign_key "questions", "quizzes"
  add_foreign_key "results", "beasts"
end

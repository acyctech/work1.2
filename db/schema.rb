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

ActiveRecord::Schema.define(version: 20161117025524) do

  create_table "exams", force: :cascade do |t|
    t.string   "category"
    t.text     "question"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "issues", force: :cascade do |t|
    t.text     "doing"
    t.text     "problem"
    t.text     "solve"
    t.text     "reference"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tmps", force: :cascade do |t|
    t.string   "t"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "todos", force: :cascade do |t|
    t.string   "who"
    t.text     "what"
    t.date     "when"
    t.string   "where"
    t.text     "how"
    t.text     "why"
    t.text     "result"
    t.string   "flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "urlfavs", force: :cascade do |t|
    t.text     "url"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end

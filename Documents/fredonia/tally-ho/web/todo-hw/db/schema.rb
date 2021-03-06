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

ActiveRecord::Schema.define(version: 20160926232239) do

  create_table "counters", force: :cascade do |t|
    t.integer  "courses_id"
    t.integer  "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["courses_id"], name: "index_counters_on_courses_id"
    t.index ["users_id"], name: "index_counters_on_users_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.integer  "number"
    t.integer  "section"
    t.integer  "semesters_id"
    t.integer  "max_students"
    t.integer  "departments_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["departments_id"], name: "index_courses_on_departments_id"
    t.index ["semesters_id"], name: "index_courses_on_semesters_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.integer  "schools_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["schools_id"], name: "index_departments_on_schools_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "semesters", force: :cascade do |t|
    t.string   "name"
    t.integer  "courses_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["courses_id"], name: "index_semesters_on_courses_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

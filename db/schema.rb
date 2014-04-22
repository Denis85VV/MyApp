# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140414131105) do

  create_table "consists", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faculties", force: true do |t|
    t.string   "facultyname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personalfiles", force: true do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "gender"
    t.string   "year"
    t.string   "traningcourse"
    t.string   "academicyear"
    t.string   "specialaccount"
    t.string   "mobileorder"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rank_id"
    t.integer  "specialty_id"
    t.integer  "recruitmentoffice_id"
    t.integer  "consist_id"
    t.string   "traning_period"
    t.integer  "position_id"
    t.string   "note"
  end

  create_table "positions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ranks", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recruitmentoffices", force: true do |t|
    t.string   "smallname"
    t.text     "bigname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone_number"
    t.string   "address"
  end

  create_table "specialties", force: true do |t|
    t.string   "specialtyname"
    t.string   "specialtynumber"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "faculty_id"
  end

end

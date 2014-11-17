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

ActiveRecord::Schema.define(version: 20141117042425) do

  create_table "jobs", force: true do |t|
    t.string   "company_name"
    t.string   "title"
    t.string   "job_type"
    t.text     "job_description"
    t.integer  "hours_per_week"
    t.float    "pay_min"
    t.float    "pay_max"
    t.text     "pay_comment"
    t.text     "applicant_experience"
    t.text     "how_to_apply"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

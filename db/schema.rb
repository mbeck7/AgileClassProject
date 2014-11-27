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

ActiveRecord::Schema.define(version: 20141127210455) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "state"
    t.string   "city"
    t.string   "zip_code"
    t.integer  "company_rep_id"
    t.boolean  "approved",       default: false
    t.boolean  "rejected",       default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_reps", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "company_reps", ["email"], name: "index_company_reps_on_email", unique: true
  add_index "company_reps", ["reset_password_token"], name: "index_company_reps_on_reset_password_token", unique: true

  create_table "jobs", force: true do |t|
    t.string   "title"
    t.string   "job_type"
    t.string   "job_location"
    t.text     "job_description"
    t.integer  "hours_per_week"
    t.float    "pay_min"
    t.float    "pay_max"
    t.text     "pay_comment"
    t.text     "applicant_experience"
    t.text     "how_to_apply"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "approved",             default: false
    t.integer  "company_id"
    t.boolean  "rejected",             default: false
  end

end

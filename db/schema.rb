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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120115054808) do

  create_table "comments", :force => true do |t|
    t.integer  "supporter_id"
    t.string   "contact_type"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supporters", :force => true do |t|
    t.string   "first_name"
    t.string   "father_last_name"
    t.string   "mother_last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "cellphone"
    t.string   "municipality"
    t.string   "street_address"
    t.string   "code"
    t.string   "section"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "type_of_card"
    t.string   "gender"
    t.string   "nickname"
    t.string   "between_streets"
    t.string   "external_number"
    t.string   "internal_number"
    t.string   "neighborhood"
  end

  create_table "users", :force => true do |t|
    t.string   "user_id"
    t.string   "municipality"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.boolean  "super"
  end

end

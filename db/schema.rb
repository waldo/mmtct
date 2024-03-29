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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120401210946) do

  create_table "emails", :force => true do |t|
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "holders", :force => true do |t|
    t.integer  "tin_id"
    t.string   "name"
    t.string   "recipe_title"
    t.text     "recipe_text"
    t.string   "pic_uid"
    t.string   "ip"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "recipient_email"
    t.string   "recipient_name"
    t.string   "email"
  end

  add_index "holders", ["tin_id"], :name => "index_holders_on_tin_id"

  create_table "tins", :force => true do |t|
    t.string   "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

end

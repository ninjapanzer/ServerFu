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

ActiveRecord::Schema.define(:version => 20130524132810) do

  create_table "domain_logs", :force => true do |t|
    t.string   "title"
    t.string   "body"
    t.integer  "domain_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "domain_logs", ["domain_id"], :name => "index_domain_logs_on_domain_id"

  create_table "domains", :force => true do |t|
    t.string   "name"
    t.string   "ip"
    t.integer  "server_id"
    t.text     "comments"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "domains", ["server_id"], :name => "index_domains_on_server_id"

  create_table "server_logs", :force => true do |t|
    t.string   "title"
    t.string   "body"
    t.integer  "server_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "server_logs", ["server_id"], :name => "index_server_logs_on_server_id"

  create_table "servers", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "ip"
    t.text     "comments"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

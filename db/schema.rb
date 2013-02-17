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

ActiveRecord::Schema.define(:version => 20130217181311) do

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tags_things", :force => true do |t|
    t.integer "tag_id"
    t.integer "thing_id"
  end

  add_index "tags_things", ["tag_id"], :name => "index_tags_things_on_tag_id"
  add_index "tags_things", ["thing_id"], :name => "index_tags_things_on_thing_id"

  create_table "things", :force => true do |t|
    t.string   "title"
    t.string   "image_url"
    t.text     "description"
    t.integer  "likes_count", :default => 0, :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

end

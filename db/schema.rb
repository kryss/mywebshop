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

ActiveRecord::Schema.define(:version => 20101128010710) do

  create_table "collections", :force => true do |t|
    t.string   "name"
    t.boolean  "is_private"
    t.integer  "photo_id",    :default => -1
    t.string   "description"
    t.integer  "shop_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "collections", ["name"], :name => "index_collections_on_name"

  create_table "photos", :force => true do |t|
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.datetime "data_updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "reference"
    t.string   "description"
    t.integer  "collection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["description"], :name => "index_products_on_description"
  add_index "products", ["name"], :name => "index_products_on_name"
  add_index "products", ["reference"], :name => "index_products_on_reference"

  create_table "shops", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "zip_code"
    t.string   "country"
    t.string   "phone"
    t.string   "logo"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shops", ["address"], :name => "index_shops_on_address"
  add_index "shops", ["name"], :name => "index_shops_on_name"
  add_index "shops", ["phone"], :name => "index_shops_on_phone"
  add_index "shops", ["user_id"], :name => "index_shops_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "",    :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "",    :null => false
    t.string   "password_salt",                       :default => "",    :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_seller",                           :default => false
    t.string   "phone"
    t.string   "language"
    t.string   "address"
    t.string   "name"
    t.string   "city"
    t.string   "country"
    t.string   "zip_code"
  end

  add_index "users", ["address"], :name => "index_users_on_address"
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["name"], :name => "index_users_on_name"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end

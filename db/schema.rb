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

ActiveRecord::Schema.define(:version => 20130303042222) do

  create_table "admins", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address_one"
    t.string   "address_two"
    t.string   "city"
    t.string   "state_province"
    t.string   "country"
    t.string   "postal_code"
    t.string   "business_name"
    t.string   "phone_number"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "customers", ["email"], :name => "index_customers_on_email", :unique => true
  add_index "customers", ["reset_password_token"], :name => "index_customers_on_reset_password_token", :unique => true

  create_table "order_items", :force => true do |t|
    t.integer  "quantity"
    t.decimal  "cost",       :precision => 6, :scale => 2
    t.integer  "order_id"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  add_index "order_items", ["order_id"], :name => "index_order_items_on_order_id"

  create_table "orders", :force => true do |t|
    t.date     "order_date"
    t.decimal  "subtotal",              :precision => 6, :scale => 2
    t.decimal  "shipping_cost",         :precision => 6, :scale => 2
    t.string   "shipping_method"
    t.text     "shipping_instructions"
    t.string   "payment_method"
    t.string   "order_status"
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
    t.integer  "customer_id"
    t.string   "ip_address"
  end

  create_table "packets", :force => true do |t|
    t.string   "packet_size"
    t.decimal  "price",               :precision => 6, :scale => 2
    t.float    "discount_percentage"
    t.integer  "quantity_available"
    t.integer  "seed_id"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  add_index "packets", ["seed_id"], :name => "index_packets_on_seed_id"

  create_table "photos", :force => true do |t|
    t.string   "photo_url"
    t.integer  "seed_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "photos", ["seed_id"], :name => "index_photos_on_seed_id"

  create_table "seeds", :force => true do |t|
    t.string   "catalog_number"
    t.string   "common_name"
    t.string   "variety"
    t.string   "genus"
    t.string   "species"
    t.string   "sub_species"
    t.boolean  "organic"
    t.string   "seed_type"
    t.string   "origin"
    t.date     "date_acquired"
    t.integer  "germination"
    t.integer  "days_to_maturity"
    t.text     "notes"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "subscriptions", :force => true do |t|
    t.integer  "customer_id"
    t.string   "subscription_type"
    t.boolean  "subscribed"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "subscriptions", ["customer_id"], :name => "index_subscriptions_on_customer_id"

end

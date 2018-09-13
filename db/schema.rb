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

ActiveRecord::Schema.define(version: 2018_09_13_190651) do

  create_table "admins", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "billings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.decimal "amount", precision: 10
    t.string "type"
    t.date "due_date"
    t.integer "filled"
    t.bigint "tenant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tenant_id"], name: "index_billings_on_tenant_id"
  end

  create_table "flats", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "flat_no"
    t.string "bhk_type"
    t.bigint "tenant_id"
    t.bigint "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_flats_on_owner_id"
    t.index ["tenant_id"], name: "index_flats_on_tenant_id"
  end

  create_table "owners", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "gender"
    t.string "phone"
    t.string "per_add"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "product_type"
    t.integer "quantity"
    t.decimal "amount", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "t_s_connects", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "billing_id"
    t.bigint "shop_id"
    t.bigint "tenant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["billing_id"], name: "index_t_s_connects_on_billing_id"
    t.index ["shop_id"], name: "index_t_s_connects_on_shop_id"
    t.index ["tenant_id"], name: "index_t_s_connects_on_tenant_id"
  end

  create_table "tenants", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "entry"
    t.date "leaving"
    t.string "parking"
    t.string "room_no"
    t.bigint "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_tenants_on_admin_id"
  end

  add_foreign_key "billings", "tenants"
  add_foreign_key "flats", "owners"
  add_foreign_key "flats", "tenants"
  add_foreign_key "t_s_connects", "billings"
  add_foreign_key "t_s_connects", "shops"
  add_foreign_key "t_s_connects", "tenants"
  add_foreign_key "tenants", "admins"
end

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

ActiveRecord::Schema.define(version: 2018_11_14_052543) do

  create_table "bill_contents", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "content"
    t.integer "price"
  end

  create_table "bill_tos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "phone_num_1"
    t.string "phone_num_2"
    t.string "email_1"
    t.string "email_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bills", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "month"
    t.integer "pay_period"
    t.string "member_name"
    t.integer "member_sex"
    t.string "dev_content"
    t.integer "unit_price"
    t.integer "work_time"
    t.integer "upper_standerd"
    t.integer "lower_standerd"
    t.integer "bill_content_id"
    t.string "cal_rule"
    t.date "from"
    t.date "to"
    t.integer "payment_terms"
    t.string "bill_to_name"
    t.string "bill_to_charge_people"
    t.string "company_name"
    t.string "tel_1"
    t.string "mail_1"
    t.string "address_1"
    t.string "postno_1"
    t.string "bank_account_1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "company_no"
    t.string "tel_1"
    t.string "tel_2"
    t.string "mail_1"
    t.string "mail_2"
    t.string "address_1"
    t.string "address_2"
    t.string "postno_1"
    t.string "postno_2"
    t.string "bank_account_1"
    t.string "bank_account_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "corporation_bill_contents", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "member_no"
    t.date "birthday"
    t.integer "sex"
    t.integer "company_id", default: 0
    t.integer "bill_to_id", default: 0
    t.integer "sales_staff_id", default: 0
    t.integer "payment_terms"
    t.integer "unit_price"
    t.integer "upper_standerd"
    t.integer "lower_standerd"
    t.string "dev_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bill_to_id"], name: "index_members_on_bill_to_id"
    t.index ["company_id"], name: "index_members_on_company_id"
    t.index ["sales_staff_id"], name: "index_members_on_sales_staff_id"
    t.index ["sex"], name: "index_members_on_sex"
  end

  create_table "sales_staffs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "bill_to_id"
    t.string "phone_num"
    t.string "mail"
    t.string "mail_cc_1"
    t.string "mail_cc_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

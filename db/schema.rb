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

ActiveRecord::Schema.define(version: 2018_10_01_025520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.string "image"
    t.string "website"
    t.string "secret"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "representative_image"
    t.string "representative_name"
    t.string "street"
    t.string "city"
    t.string "phone"
    t.string "logo"
    t.string "email"
  end

  create_table "events", force: :cascade do |t|
    t.integer "program_id"
    t.integer "speaker_id"
    t.string "name"
    t.string "ticket"
    t.string "image"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "leads", force: :cascade do |t|
    t.string "first_name"
    t.string "first name"
    t.string "last_name"
    t.string "last name"
    t.string "gender"
    t.string "source"
    t.string "locale"
    t.string "profile_pic_url"
    t.string "profile pic url"
    t.string "timezone"
    t.string "messenger_user_id"
    t.string "messenger user id"
    t.string "chatfuel_user_id"
    t.string "chatfuel user id"
    t.string "ref"
    t.string "country"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "address"
    t.string "latitude"
    t.string "longitude"
    t.string "map_url"
    t.string "map url"
    t.string "last_visited_block_name"
    t.string "last_visited_block_id"
    t.string "last_clicked_button_name"
    t.string "last_user_freeform_input"
    t.string "last visited block name"
    t.string "last visited block id"
    t.string "last clicked_button name"
    t.string "last user freeform input"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "speaker"
    t.string "timeanddate"
    t.string "phone"
    t.string "email"
    t.date "date"
    t.bigint "slot_id"
    t.string "secret"
    t.bigint "user_id"
    t.bigint "speaker_id"
    t.index ["slot_id"], name: "index_leads_on_slot_id"
    t.index ["speaker_id"], name: "index_leads_on_speaker_id"
    t.index ["user_id"], name: "index_leads_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "last_purchased_item"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "amount"
    t.bigint "lead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first name"
    t.string "last name"
    t.string "last purchased item"
    t.string "last_payment_charge_id"
    t.string "last payment charge id"
    t.string "last_payment_address"
    t.string "last payment address"
    t.string "last_payment_phone"
    t.string "last payment phone"
    t.string "last_payment_email"
    t.string "last payment email"
    t.bigint "business_id"
    t.index ["business_id"], name: "index_orders_on_business_id"
    t.index ["lead_id"], name: "index_orders_on_lead_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.bigint "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_places_on_program_id"
  end

  create_table "programs", force: :cascade do |t|
    t.date "startday"
    t.time "starttime"
    t.time "endtime"
    t.string "name"
    t.integer "speaker_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.bigint "user_id"
    t.integer "sorting"
    t.string "place"
    t.bigint "event_id"
    t.index ["event_id"], name: "index_programs_on_event_id"
    t.index ["user_id"], name: "index_programs_on_user_id"
  end

  create_table "slots", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "messenger_user_id"
    t.bigint "lead_id"
    t.index ["lead_id"], name: "index_slots_on_lead_id"
  end

  create_table "speaker_images", force: :cascade do |t|
    t.integer "speaker_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "speakers", force: :cascade do |t|
    t.string "image"
    t.text "description"
    t.datetime "speakingtime"
    t.string "speaker_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "speaker_image_id"
    t.string "nummer"
    t.integer "sorting"
    t.string "name"
    t.bigint "program_id"
    t.bigint "event_id"
    t.index ["event_id"], name: "index_speakers_on_event_id"
    t.index ["program_id"], name: "index_speakers_on_program_id"
    t.index ["speaker_image_id"], name: "index_speakers_on_speaker_image_id"
    t.index ["user_id"], name: "index_speakers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "secret"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "events", "users"
  add_foreign_key "leads", "slots"
  add_foreign_key "leads", "speakers"
  add_foreign_key "leads", "users"
  add_foreign_key "orders", "businesses"
  add_foreign_key "places", "programs"
  add_foreign_key "programs", "events"
  add_foreign_key "programs", "users"
  add_foreign_key "slots", "leads"
  add_foreign_key "speakers", "events"
  add_foreign_key "speakers", "programs"
  add_foreign_key "speakers", "speaker_images"
  add_foreign_key "speakers", "users"
end

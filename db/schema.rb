# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_27_011802) do

  create_table "messages", force: :cascade do |t|
    t.integer "participant_user_id", null: false
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["participant_user_id"], name: "index_messages_on_participant_user_id"
  end

  create_table "participant_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "displayname"
    t.index ["email"], name: "index_participant_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_participant_users_on_reset_password_token", unique: true
  end

  create_table "pledger_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "displayname"
    t.index ["email"], name: "index_pledger_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_pledger_users_on_reset_password_token", unique: true
  end

  create_table "pledges", force: :cascade do |t|
    t.integer "pledger_user_id", null: false
    t.integer "participant_user_id", null: false
    t.decimal "amount"
    t.string "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["participant_user_id"], name: "index_pledges_on_participant_user_id"
    t.index ["pledger_user_id"], name: "index_pledges_on_pledger_user_id"
  end

  add_foreign_key "messages", "participant_users"
  add_foreign_key "pledges", "participant_users"
  add_foreign_key "pledges", "pledger_users"
end

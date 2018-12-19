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

ActiveRecord::Schema.define(version: 2018_12_19_093115) do

  create_table "answers", force: :cascade do |t|
    t.string "content"
    t.integer "count"
    t.integer "poll_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["poll_id"], name: "index_answers_on_poll_id"
  end

  create_table "ip_checks", force: :cascade do |t|
    t.string "ip_adress"
    t.integer "poll_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ip_adress"], name: "index_ip_checks_on_ip_adress"
    t.index ["poll_id"], name: "index_ip_checks_on_poll_id"
  end

  create_table "polls", force: :cascade do |t|
    t.string "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question"], name: "index_polls_on_question"
  end

end

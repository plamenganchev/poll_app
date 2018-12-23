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

ActiveRecord::Schema.define(version: 2018_12_21_152835) do

  create_table "answers", force: :cascade do |t|
    t.string "answer_content"
    t.integer "count", default: 0
    t.integer "poll_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["poll_id"], name: "index_answers_on_poll_id"
  end

  create_table "polls", force: :cascade do |t|
    t.string "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "share_token"
    t.index ["question"], name: "index_polls_on_question"
  end

  create_table "votes", force: :cascade do |t|
    t.integer "poll_id"
    t.integer "answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "voter_ip"
    t.index ["answer_id", "poll_id"], name: "index_votes_on_answer_id_and_poll_id", unique: true
    t.index ["answer_id"], name: "index_votes_on_answer_id"
    t.index ["poll_id", "voter_ip"], name: "index_votes_on_poll_id_and_voter_ip"
    t.index ["poll_id"], name: "index_votes_on_poll_id"
  end

end

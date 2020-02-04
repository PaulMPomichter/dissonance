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

ActiveRecord::Schema.define(version: 2020_02_04_075753) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "channels", force: :cascade do |t|
    t.integer "server_id", null: false
    t.string "name", null: false
    t.text "topic", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["server_id"], name: "index_channels_on_server_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "author_id", null: false
    t.text "body", null: false
    t.string "thread_type", null: false
    t.bigint "thread_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_posts_on_author_id"
    t.index ["created_at"], name: "index_posts_on_created_at"
    t.index ["thread_type", "thread_id"], name: "index_posts_on_thread_type_and_thread_id"
  end

  create_table "server_memberships", force: :cascade do |t|
    t.integer "server_id", null: false
    t.integer "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_server_memberships_on_member_id"
    t.index ["server_id"], name: "index_server_memberships_on_server_id"
  end

  create_table "servers", force: :cascade do |t|
    t.integer "owner_id", null: false
    t.string "name", null: false
    t.boolean "is_private", default: false, null: false
    t.string "invite_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invite_token"], name: "index_servers_on_invite_token", unique: true
    t.index ["owner_id"], name: "index_servers_on_owner_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.integer "tag", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
    t.index ["username", "tag"], name: "index_users_on_username_and_tag", unique: true
  end

end

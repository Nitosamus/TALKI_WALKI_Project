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

ActiveRecord::Schema.define(version: 2019_09_26_044401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "afs", force: :cascade do |t|
    t.string "object"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aides", force: :cascade do |t|
    t.text "login"
    t.text "sign_up"
    t.text "formation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "answers", force: :cascade do |t|
    t.text "body"
    t.string "title"
    t.bigint "mf_id"
    t.bigint "ff_id"
    t.bigint "commnent_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commnent_id"], name: "index_answers_on_commnent_id"
    t.index ["ff_id"], name: "index_answers_on_ff_id"
    t.index ["mf_id"], name: "index_answers_on_mf_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.string "title"
    t.bigint "mf_id"
    t.bigint "ff_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ff_id"], name: "index_comments_on_ff_id"
    t.index ["mf_id"], name: "index_comments_on_mf_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "ffs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "contact"
    t.string "email"
    t.decimal "price"
    t.string "image_url"
    t.string "video_url"
    t.integer "duration"
    t.bigint "field_id"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_ffs_on_city_id"
    t.index ["field_id"], name: "index_ffs_on_field_id"
  end

  create_table "fields", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "pf_id"
    t.bigint "af_id"
    t.bigint "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["af_id"], name: "index_fields_on_af_id"
    t.index ["job_id"], name: "index_fields_on_job_id"
    t.index ["pf_id"], name: "index_fields_on_pf_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "object"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "comment_id"
    t.bigint "answer_id"
    t.bigint "mf_id"
    t.bigint "ff_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_id"], name: "index_likes_on_answer_id"
    t.index ["comment_id"], name: "index_likes_on_comment_id"
    t.index ["ff_id"], name: "index_likes_on_ff_id"
    t.index ["mf_id"], name: "index_likes_on_mf_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "mfs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "contact"
    t.string "email"
    t.decimal "price"
    t.string "image_url"
    t.string "video_url"
    t.integer "duration"
    t.bigint "field_id"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_mfs_on_city_id"
    t.index ["field_id"], name: "index_mfs_on_field_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "date"
    t.text "description"
    t.bigint "user_id"
    t.bigint "mf_id"
    t.bigint "ff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ff_id"], name: "index_orders_on_ff_id"
    t.index ["mf_id"], name: "index_orders_on_mf_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "pfs", force: :cascade do |t|
    t.string "object"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.integer "age"
    t.bigint "city_id"
    t.index ["city_id"], name: "index_users_on_city_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end

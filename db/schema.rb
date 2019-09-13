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

ActiveRecord::Schema.define(version: 2019_09_12_063501) do

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

  create_table "commentaires", force: :cascade do |t|
    t.text "contenu"
    t.bigint "user_id"
    t.bigint "formation_academique_id"
    t.bigint "professional_formation_id"
    t.bigint "offre_emploi_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["formation_academique_id"], name: "index_commentaires_on_formation_academique_id"
    t.index ["offre_emploi_id"], name: "index_commentaires_on_offre_emploi_id"
    t.index ["professional_formation_id"], name: "index_commentaires_on_professional_formation_id"
    t.index ["user_id"], name: "index_commentaires_on_user_id"
  end

  create_table "formation_academiques", force: :cascade do |t|
    t.string "titre"
    t.string "contact"
    t.string "mail"
    t.string "lieu"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_formation_academiques_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "commentaire_id"
    t.bigint "reponse_id"
    t.bigint "formation_academique_id"
    t.bigint "professional_formation_id"
    t.bigint "offre_emploi_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentaire_id"], name: "index_likes_on_commentaire_id"
    t.index ["formation_academique_id"], name: "index_likes_on_formation_academique_id"
    t.index ["offre_emploi_id"], name: "index_likes_on_offre_emploi_id"
    t.index ["professional_formation_id"], name: "index_likes_on_professional_formation_id"
    t.index ["reponse_id"], name: "index_likes_on_reponse_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "offre_emplois", force: :cascade do |t|
    t.string "description"
    t.string "lieu"
    t.string "salaire"
    t.string "mail"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_offre_emplois_on_user_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professional_formations", force: :cascade do |t|
    t.string "objet"
    t.string "titre"
    t.string "lieu"
    t.string "contacte"
    t.string "mail"
    t.string "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_professional_formations_on_user_id"
  end

  create_table "reponses", force: :cascade do |t|
    t.text "contenu"
    t.bigint "user_id"
    t.bigint "commentaire_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentaire_id"], name: "index_reponses_on_commentaire_id"
    t.index ["user_id"], name: "index_reponses_on_user_id"
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
    t.string "city"
    t.integer "zip_code"
    t.text "description"
    t.string "function"
    t.string "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end

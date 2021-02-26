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

ActiveRecord::Schema.define(version: 2021_02_26_171137) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "user", force: :cascade do |t|
    t.string "nome", null: false
    t.string "email", null: false
    t.string "senha", null: false
    t.boolean "ativo", default: true, null: false
    t.boolean "master", default: false, null: false
    t.boolean "admin", default: false, null: false
    t.boolean "idioma", default: true, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_registro", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "nome"
    t.string "email"
    t.string "navegador"
    t.string "so"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_registro_on_user_id"
  end

  add_foreign_key "user_registro", "\"user\"", column: "user_id"
end

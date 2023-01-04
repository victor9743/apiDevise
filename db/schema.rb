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

ActiveRecord::Schema.define(version: 2023_01_03_231123) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "memoria_rams", force: :cascade do |t|
    t.string "produto"
    t.integer "tamanho"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.string "cliente"
    t.integer "processador"
    t.integer "placaMae"
    t.text "memoria", default: [], array: true
    t.integer "placaVideo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "placa_maes", force: :cascade do |t|
    t.string "produto"
    t.text "processador", default: [], array: true
    t.integer "qtdSlots"
    t.integer "totalMemoria"
    t.boolean "videoIntegrado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "placa_videos", force: :cascade do |t|
    t.string "Produto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "processadors", force: :cascade do |t|
    t.string "produto"
    t.string "marca"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

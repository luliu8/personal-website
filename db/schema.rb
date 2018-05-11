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

ActiveRecord::Schema.define(version: 20171104005016) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "cube"

  create_table "books", primary_key: "title", id: :text, force: :cascade do |t|
    t.text "image"
    t.float "x"
    t.float "y"
    t.float "vec", default: [], null: false, array: true
    t.index "lower(title) text_pattern_ops", name: "books_name_pattern"
    t.index ["vec"], name: "books_vec", using: :gin
  end

end

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

ActiveRecord::Schema[8.1].define(version: 2026_11_10_185121) do
  create_table "author_books", charset: "utf8mb3", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "book_id", null: false
    t.bigint "author_id", null: false
    t.index ["author_id"], name: "index_author_books_on_author_id"
    t.index ["book_id"], name: "index_author_books_on_book_id"
  end

  create_table "authors", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.string "biography"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", charset: "utf8mb3", force: :cascade do |t|
    t.string "title"
    t.date "year_of_publication"
    t.string "isbn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "publisher_id", null: false
    t.index ["publisher_id"], name: "index_books_on_publisher_id"
  end

  create_table "categories", charset: "utf8mb3", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_books", charset: "utf8mb3", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id", null: false
    t.bigint "book_id", null: false
    t.index ["book_id"], name: "index_category_books_on_book_id"
    t.index ["category_id"], name: "index_category_books_on_category_id"
  end

  create_table "loans", charset: "utf8mb3", force: :cascade do |t|
    t.date "pickup_date"
    t.date "expected_return_date"
    t.date "return_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "book_id", null: false
    t.index ["book_id"], name: "index_loans_on_book_id"
    t.index ["user_id"], name: "index_loans_on_user_id"
  end

  create_table "publishers", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", charset: "utf8mb3", force: :cascade do |t|
    t.date "reservation_date"
    t.date "expiration_date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "book_id", null: false
    t.index ["book_id"], name: "index_reservations_on_book_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "reviews", charset: "utf8mb3", force: :cascade do |t|
    t.string "notice"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "book_id", null: false
    t.index ["book_id"], name: "index_reviews_on_book_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "author_books", "authors"
  add_foreign_key "author_books", "books"
  add_foreign_key "books", "publishers"
  add_foreign_key "category_books", "books"
  add_foreign_key "category_books", "categories"
  add_foreign_key "loans", "books"
  add_foreign_key "loans", "users"
  add_foreign_key "reservations", "books"
  add_foreign_key "reservations", "users"
  add_foreign_key "reviews", "books"
  add_foreign_key "reviews", "users"
end

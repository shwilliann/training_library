class AddReferencesToCategoryBooks < ActiveRecord::Migration[8.1]
  def change
    add_reference :category_books, :category, null: false, foreign_key: true
    add_reference :category_books, :book, null: false, foreign_key: true
  end
end

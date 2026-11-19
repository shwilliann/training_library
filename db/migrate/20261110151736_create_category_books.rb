class CreateCategoryBooks < ActiveRecord::Migration[8.1]
  def change
    create_table :category_books do |t|
      t.timestamps
    end
  end
end

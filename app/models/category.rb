class Category < ApplicationRecord
    has_many :book, through: :categories_books
end

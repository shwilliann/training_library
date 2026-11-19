class Author < ApplicationRecord
    has_many :book, through: :authors_books
end

class Book < ApplicationRecord
    belongs_to :publisher
    has_many :reviews
    has_many :reservations
    has_many :loans
    has_many :categories, through: :categories_books
    has_many :authors, through: :authors_books
end

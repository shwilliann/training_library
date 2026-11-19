class User < ApplicationRecord
    has_many :reviews
    has_many :loans
    has_many :reservations
end

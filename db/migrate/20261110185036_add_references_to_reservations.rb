class AddReferencesToReservations < ActiveRecord::Migration[8.1]
  def change
    add_reference :reservations, :user, null: false, foreign_key: true
    add_reference :reservations, :book, null: false, foreign_key: true
  end
end

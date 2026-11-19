class CreateReservations < ActiveRecord::Migration[8.1]
  def change
    create_table :reservations do |t|
      t.date :reservation_date
      t.date :expiration_date
      t.string :status

      t.timestamps
    end
  end
end

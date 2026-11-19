class CreateLoans < ActiveRecord::Migration[8.1]
  def change
    create_table :loans do |t|
      t.date :pickup_date
      t.date :expected_return_date
      t.date :return_date

      t.timestamps
    end
  end
end

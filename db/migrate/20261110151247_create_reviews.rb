class CreateReviews < ActiveRecord::Migration[8.1]
  def change
    create_table :reviews do |t|
      t.string :notice
      t.string :comment

      t.timestamps
    end
  end
end

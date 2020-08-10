class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.date :check_in
      t.date :check_out
      t.references :user, null: false, foreign_key: true
      t.references :tinyhouse, null: false, foreign_key: true
      t.float :total_price
      t.boolean :confirmed, default: false

      t.timestamps
    end
  end
end

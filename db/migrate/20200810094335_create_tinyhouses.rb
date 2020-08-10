class CreateTinyhouses < ActiveRecord::Migration[6.0]
  def change
    create_table :tinyhouses do |t|
      t.string :title
      t.string :location
      t.integer :price_per_day
      t.text :description
      t.decimal :longitude
      t.decimal :latitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

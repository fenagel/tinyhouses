class AddAmenitiesToTinyhouses < ActiveRecord::Migration[6.0]
  def change
    add_column :tinyhouses, :amenities, :text, array: true, default: []
  end
end

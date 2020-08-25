class ChangeLatitudeToTinyhouses < ActiveRecord::Migration[6.0]
  def change
    change_column :tinyhouses, :latitude, :float
  end
end

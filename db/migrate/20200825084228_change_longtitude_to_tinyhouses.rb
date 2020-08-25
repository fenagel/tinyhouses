class ChangeLongtitudeToTinyhouses < ActiveRecord::Migration[6.0]
  def change
    change_column :tinyhouses, :longitude, :float
  end
end

class ChangeDatesToBeDatetimeInTrips < ActiveRecord::Migration[6.0]
  def change
    change_column :trips, :check_in, :datetime
    change_column :trips, :check_out, :datetime
  end
end

class AvailabilityValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    trips = Trip.where(["tinyhouse_id =?", record.tinyhouse_id])
    date_ranges = trips.map { |t| t.check_in..t.check_out }

    date_ranges.each do |range|
      if range.include? value
        record.errors.add(attribute, "not available")
      end
    end
  end
end

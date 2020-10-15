class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :tinyhouse

  validates :check_in, :check_out, presence: true, availability: true
  validate :check_out_after_check_in

  def booked_date_range
    { from: :check_in, to: :check_out }
  end

  private

  def check_out_after_check_in
    return if check_out.blank? || check_in.blank?

    if check_out < check_in
      errors.add(:check_out, "must be after the start date")
    end
  end
end

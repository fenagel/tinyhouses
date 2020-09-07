class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :tinyhouse

  validates :check_in, :check_out, :total_price, presence: true
  validates :check_in, :check_out, availability: true
  validate :check_out_after_check_in

  private

  def check_out_after_check_in
    return if check_out.blank? || check_in.blank?

    if check_out < check_in
      errors.add(:check_out, "must be after the start date")
    end
  end
end

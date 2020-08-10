class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :tinyhouse

  validates :check_in, :check_out, :total_price, presence: true
end

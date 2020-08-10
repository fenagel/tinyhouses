class Tinyhouse < ApplicationRecord
  belongs_to :user
  has_many :reviews through :trips

  validates :title, :location, :price_per_day, :description, presence: true
end

class Tinyhouse < ApplicationRecord
  belongs_to :user
  has_many :trips
  has_many :reviews, :through :trips, dependent: :destroy

  validates :title, :location, :price_per_day, :description, presence: true
end

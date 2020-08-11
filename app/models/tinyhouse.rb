class Tinyhouse < ApplicationRecord
  belongs_to :user
  has_many :trips
  has_many :reviews, through: :trips, source: :user, dependent: :destroy
  has_many_attached :photos

  validates :title, :location, :price_per_day, :description, presence: true
end

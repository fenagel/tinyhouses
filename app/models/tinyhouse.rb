class Tinyhouse < ApplicationRecord
  belongs_to :user
  has_many :trips
  has_many :reviews, through: :trips, source: :user, dependent: :destroy
  has_many_attached :photos

  validates :title, :location, :price_per_day, :description, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  AMENITIES = [
    'Wifi', 'Dryer', 'Iron', 'TV', 'Washer', 'Essentials', 'Heating',
    'Hot water', 'Bathtub', 'Kitchen', 'Stove', 'Refrigerator', 'Microwave',
    'Dishwasher', 'Coffee maker', 'Cooking basics', 'Dishes',
    'Oven', 'Hair dryer', 'Shower gel', 'Bed linens', 'Smoke alarm',
    'Fire extinguisher', 'Air conditioning', 'Shampoo', 'Private entrance',
    'Laptop workspace'
  ]
end

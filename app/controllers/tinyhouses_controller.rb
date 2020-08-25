class TinyhousesController < ApplicationController
  before_action :find_tinyhouse, only: [:show]

  def show
    @amenities = Tinyhouse::AMENITIES
  end

  def index
    # @tinyhouses = Tinyhouse.all
    @tinyhouses = Tinyhouse.geocoded # returns tinyhouses with coordinates

    @markers = @tinyhouses.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  private

  def find_tinyhouse
    @tinyhouse = Tinyhouse.find(params[:id])
  end

end

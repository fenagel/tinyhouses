class TinyhousesController < ApplicationController
  before_action :find_tinyhouse, only: [:show]

  def show
    @amenities = Tinyhouse::AMENITIES
  end

  def index
    @tinyhouses = Tinyhouse.geocoded # returns only the tinyhouses which Geocoder retrieved coordinates for. The rest is omitted.

    @markers = @tinyhouses.map do |tinyhouse| # creates markers and the infoWindow popup for the map
      {
        lat: tinyhouse.latitude,
        lng: tinyhouse.longitude,
        infoWindow: { content: render_to_string(partial: "/shared/info_window", locals: { tinyhouse: tinyhouse }) }
      }
    end
  end

  def new
    @tinyhouse = Tinyhouse.new
  end

  private

  def find_tinyhouse
    @tinyhouse = Tinyhouse.find(params[:id])
  end
end

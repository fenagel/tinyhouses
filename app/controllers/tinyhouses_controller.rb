class TinyhousesController < ApplicationController
  before_action :find_tinyhouse, only: [:show]

  def show
    @amenities = Tinyhouse::AMENITIES
  end

  def index
    @tinyhouses = Tinyhouse.all
    # @flats = Flat.geocoded # returns flats with coordinates

    # @markers = @flats.map do |flat|
    #   {
    #     lat: flat.latitude,
    #     lng: flat.longitude
    #   }
  end

  def new
    @tinyhouse = Tinyhouse.new
  end

  private

  def find_tinyhouse
    @tinyhouse = Tinyhouse.find(params[:id])
  end

end

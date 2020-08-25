class TinyhousesController < ApplicationController
  before_action :find_tinyhouse, only: [:show]

  def show
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

  private

  def find_tinyhouse
    @tinyhouse = Tinyhouse.find(params[:id])
  end

end

class TinyhousesController < ApplicationController
  before_action :find_tinyhouse, only: [:show, :destroy]

  def show
    @amenities = Tinyhouse::AMENITIES
    @trip = Trip.new
  end

  def index
    if params[:query].present?
      sql_query = " \
        tinyhouses.title @@ :query \
        OR tinyhouses.location @@ :query \
        OR tinyhouses.description @@ :query \
      "
      @tinyhouses = Tinyhouse.where(sql_query, query: "%#{params[:query]}%").geocoded # returns only the tinyhouses which Geocoder retrieved coordinates for. The rest is omitted.
    else
      @tinyhouses = Tinyhouse.all.geocoded
    end

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

  def destroy
    @tinyhouse.destroy

    redirect_to tinyhouses_path
  end

  private

  def find_tinyhouse
    @tinyhouse = Tinyhouse.with_attached_photos.includes(:reviews).find(params[:id])
  end
end

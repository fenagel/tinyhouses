class TinyhousesController < ApplicationController
  before_action :find_tinyhouse, only: [:show, :edit, :update, :destroy]

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

  def create
    @tinyhouse = Tinyhouse.new(tinyhouse_params)
    @tinyhouse.user = current_user
    if @tinyhouse.save!
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @tinyhouse.update(tinyhouse_params)
    redirect_to tinyhouse_path(@tinyhouse)
  end
  
  

  def destroy
    @tinyhouse.destroy

    redirect_to tinyhouses_path
  end

  private

  def find_tinyhouse
    @tinyhouse = Tinyhouse.with_attached_photos.includes(:reviews).find(params[:id])
  end

  def tinyhouse_params
    params.require(:tinyhouse).permit(:title, :location, :price_per_day, :description, amenities: [], photos: [])
  end
  
end
